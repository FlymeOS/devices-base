.class public Landroid/telecom/TelecomManager;
.super Ljava/lang/Object;
.source "TelecomManager.java"


# static fields
.field public static final ACTION_CHANGE_DEFAULT_DIALER:Ljava/lang/String; = "android.telecom.action.CHANGE_DEFAULT_DIALER"

.field public static final ACTION_CHANGE_PHONE_ACCOUNTS:Ljava/lang/String; = "android.telecom.action.CHANGE_PHONE_ACCOUNTS"

.field public static final ACTION_CONFIGURE_PHONE_ACCOUNT:Ljava/lang/String; = "android.telecom.action.CONFIGURE_PHONE_ACCOUNT"

.field public static final ACTION_CURRENT_TTY_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

.field public static final ACTION_DEFAULT_DIALER_CHANGED:Ljava/lang/String; = "android.telecom.action.DEFAULT_DIALER_CHANGED"

.field public static final ACTION_INCOMING_CALL:Ljava/lang/String; = "android.telecom.action.INCOMING_CALL"

.field public static final ACTION_NEW_UNKNOWN_CALL:Ljava/lang/String; = "android.telecom.action.NEW_UNKNOWN_CALL"

.field public static final ACTION_PHONE_ACCOUNT_REGISTERED:Ljava/lang/String; = "android.telecom.action.PHONE_ACCOUNT_REGISTERED"

.field public static final ACTION_PHONE_ACCOUNT_UNREGISTERED:Ljava/lang/String; = "android.telecom.action.PHONE_ACCOUNT_UNREGISTERED"

.field public static final ACTION_SHOW_CALL_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_ACCESSIBILITY_SETTINGS"

.field public static final ACTION_SHOW_CALL_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_SETTINGS"

.field public static final ACTION_SHOW_MISSED_CALLS_NOTIFICATION:Ljava/lang/String; = "android.telecom.action.SHOW_MISSED_CALLS_NOTIFICATION"

.field public static final ACTION_SHOW_RESPOND_VIA_SMS_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_RESPOND_VIA_SMS_SETTINGS"

.field public static final ACTION_TTY_PREFERRED_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

.field public static final DTMF_CHARACTER_PAUSE:C = ','

.field public static final DTMF_CHARACTER_WAIT:C = ';'

.field public static final EXTRA_CALL_BACK_INTENT:Ljava/lang/String; = "android.telecom.extra.CALL_BACK_INTENT"

.field public static final EXTRA_CALL_BACK_NUMBER:Ljava/lang/String; = "android.telecom.extra.CALL_BACK_NUMBER"

.field public static final EXTRA_CALL_CREATED_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_CREATED_TIME_MILLIS"

.field public static final EXTRA_CALL_DISCONNECT_CAUSE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_CAUSE"

.field public static final EXTRA_CALL_DISCONNECT_MESSAGE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_MESSAGE"

.field public static final EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final EXTRA_CALL_TECHNOLOGY_TYPE:Ljava/lang/String; = "android.telecom.extra.CALL_TECHNOLOGY_TYPE"

.field public static final EXTRA_CALL_TELECOM_ROUTING_END_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_TELECOM_ROUTING_END_TIME_MILLIS"

.field public static final EXTRA_CALL_TELECOM_ROUTING_START_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_TELECOM_ROUTING_START_TIME_MILLIS"

.field public static final EXTRA_CHANGE_DEFAULT_DIALER_PACKAGE_NAME:Ljava/lang/String; = "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

.field public static final EXTRA_CLEAR_MISSED_CALLS_INTENT:Ljava/lang/String; = "android.telecom.extra.CLEAR_MISSED_CALLS_INTENT"

.field public static final EXTRA_CONNECTION_SERVICE:Ljava/lang/String; = "android.telecom.extra.CONNECTION_SERVICE"

.field public static final EXTRA_CURRENT_TTY_MODE:Ljava/lang/String; = "android.telecom.intent.extra.CURRENT_TTY_MODE"

.field public static final EXTRA_INCOMING_CALL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_ADDRESS"

.field public static final EXTRA_INCOMING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_EXTRAS"

.field public static final EXTRA_NEW_OUTGOING_CALL_CANCEL_TIMEOUT:Ljava/lang/String; = "android.telecom.extra.NEW_OUTGOING_CALL_CANCEL_TIMEOUT"

.field public static final EXTRA_NOTIFICATION_COUNT:Ljava/lang/String; = "android.telecom.extra.NOTIFICATION_COUNT"

.field public static final EXTRA_NOTIFICATION_PHONE_NUMBER:Ljava/lang/String; = "android.telecom.extra.NOTIFICATION_PHONE_NUMBER"

.field public static final EXTRA_OUTGOING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.OUTGOING_CALL_EXTRAS"

.field public static final EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

.field public static final EXTRA_START_CALL_WITH_SPEAKERPHONE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

.field public static final EXTRA_START_CALL_WITH_VIDEO_STATE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

.field public static final EXTRA_TTY_PREFERRED_MODE:Ljava/lang/String; = "android.telecom.intent.extra.TTY_PREFERRED"

.field public static final EXTRA_UNKNOWN_CALL_HANDLE:Ljava/lang/String; = "android.telecom.extra.UNKNOWN_CALL_HANDLE"

.field public static final GATEWAY_ORIGINAL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.GATEWAY_ORIGINAL_ADDRESS"

.field public static final GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "android.telecom.extra.GATEWAY_PROVIDER_PACKAGE"

.field public static final METADATA_INCLUDE_EXTERNAL_CALLS:Ljava/lang/String; = "android.telecom.INCLUDE_EXTERNAL_CALLS"

.field public static final METADATA_IN_CALL_SERVICE_CAR_MODE_UI:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_CAR_MODE_UI"

.field public static final METADATA_IN_CALL_SERVICE_RINGING:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_RINGING"

.field public static final METADATA_IN_CALL_SERVICE_UI:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_UI"

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TelecomManager"

.field public static final TTY_MODE_FULL:I = 0x1

.field public static final TTY_MODE_HCO:I = 0x2

.field public static final TTY_MODE_OFF:I = 0x0

.field public static final TTY_MODE_VCO:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telecom/TelecomManager;-><init>(Landroid/content/Context;Lcom/android/internal/telecom/ITelecomService;)V

    .line 531
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telecom/ITelecomService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "telecomServiceImpl"    # Lcom/android/internal/telecom/ITelecomService;

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 540
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 541
    iput-object v0, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 545
    :goto_0
    iput-object p2, p0, Landroid/telecom/TelecomManager;->mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;

    .line 546
    invoke-static {}, Landroid/telecom/Log;->initMd5Sum()V

    .line 538
    return-void

    .line 543
    :cond_0
    iput-object p1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 525
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Landroid/telecom/TelecomManager;->mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Landroid/telecom/TelecomManager;->mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;

    return-object v0

    .line 1492
    :cond_0
    const-string/jumbo v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method private isServiceConnected()Z
    .locals 3

    .prologue
    .line 1496
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1497
    .local v0, "isConnected":Z
    :goto_0
    if-nez v0, :cond_0

    .line 1498
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Telecom Service not found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :cond_0
    return v0

    .line 1496
    .end local v0    # "isConnected":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptRingingCall()V
    .locals 3

    .prologue
    .line 1132
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1133
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#acceptRingingCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public acceptRingingCall(I)V
    .locals 3
    .param p1, "videoState"    # I

    .prologue
    .line 1150
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1151
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCallWithVideoState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#acceptRingingCallWithVideoState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1232
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1233
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1234
    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1233
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    :cond_1
    :goto_0
    return-void

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoteException adding a new incoming call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1255
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1256
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1257
    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1256
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :cond_1
    :goto_0
    return-void

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoteException adding a new unknown call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 4

    .prologue
    .line 1350
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1351
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    .line 1353
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->cancelMissedCallsNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1354
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    const-string/jumbo v3, "Error calling ITelecomService#cancelMissedCallsNotification"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearAccounts()V
    .locals 3

    .prologue
    .line 877
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#clearAccounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearAccountsForPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 891
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#clearAccountsForPackage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearPhoneAccounts()V
    .locals 0

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->clearAccounts()V

    .line 866
    return-void
.end method

.method public createManageBlockedNumbersIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 1476
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v2

    .line 1477
    .local v2, "service":Lcom/android/internal/telecom/ITelecomService;
    const/4 v1, 0x0

    .line 1478
    .local v1, "result":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1480
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telecom/ITelecomService;->createManageBlockedNumbersIntent()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1485
    .end local v1    # "result":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v1

    .line 1481
    .restart local v1    # "result":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1482
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelecomManager"

    const-string/jumbo v4, "Error calling ITelecomService#createManageBlockedNumbersIntent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpAnalytics()Landroid/telecom/TelecomAnalytics;
    .locals 5

    .prologue
    .line 1456
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v2

    .line 1457
    .local v2, "service":Lcom/android/internal/telecom/ITelecomService;
    const/4 v1, 0x0

    .line 1458
    .local v1, "result":Landroid/telecom/TelecomAnalytics;
    if-eqz v2, :cond_0

    .line 1460
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telecom/ITelecomService;->dumpCallAnalytics()Landroid/telecom/TelecomAnalytics;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1465
    .end local v1    # "result":Landroid/telecom/TelecomAnalytics;
    :cond_0
    :goto_0
    return-object v1

    .line 1461
    .restart local v1    # "result":Landroid/telecom/TelecomAnalytics;
    :catch_0
    move-exception v0

    .line 1462
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelecomManager"

    const-string/jumbo v4, "Error dumping call analytics"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 4
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 1437
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1438
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    .line 1440
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    const-string/jumbo v3, "Error enablePhoneAbbount"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public endCall()Z
    .locals 3

    .prologue
    .line 1111
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1112
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#endCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 4
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1329
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1330
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1332
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    const-string/jumbo v3, "Error calling ITelecomService#getAdnUriForPhoneAccount"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1337
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v2, "content://icc/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getAllPhoneAccountHandles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 813
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountHandles()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#getAllPhoneAccountHandles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 819
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public getAllPhoneAccounts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 795
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccounts()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#getAllPhoneAccounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public getAllPhoneAccountsCount()I
    .locals 3

    .prologue
    .line 777
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#getAllPhoneAccountsCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getCallCapablePhoneAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallCapablePhoneAccounts(Z)Ljava/util/List;
    .locals 4
    .param p1, "includeDisabledAccounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 723
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCallCapablePhoneAccounts(ZLjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error calling ITelecomService#getCallCapablePhoneAccounts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 727
    const-string/jumbo v3, ")"

    .line 726
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 729
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getCallState()I
    .locals 3

    .prologue
    .line 1076
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1077
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "RemoteException calling getCallState()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1082
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getConnectionManager()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTtyMode()I
    .locals 3

    .prologue
    .line 1203
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1204
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCurrentTtyMode(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "RemoteException attempting to get the current TTY mode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1209
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getDefaultDialerPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 925
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultDialerPackage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "RemoteException attempting to get the default dialer package name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 931
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 3
    .param p1, "uriScheme"    # Ljava/lang/String;

    .prologue
    .line 573
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 575
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#getDefaultOutgoingPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDefaultPhoneApp()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 908
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultPhoneApp()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "RemoteException attempting to get the default phone app."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLine1Number(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1031
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1032
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1033
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1032
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "RemoteException calling ITelecomService#getLine1Number."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 3
    .param p1, "account"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 759
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#getPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPhoneAccountsForPackage()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#getPhoneAccountsForPackage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "uriScheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 688
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 687
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#getPhoneAccountsSupportingScheme"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    .prologue
    .line 628
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#getSimCallManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 648
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManagerForUser(I)Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#getSimCallManagerForUser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSystemDialerPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 967
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getSystemDialerPackage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "RemoteException attempting to get the system dialer package name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 973
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    .prologue
    .line 596
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#getUserSelectedOutgoingPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1010
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1012
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1011
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "RemoteException calling ITelecomService#hasVoiceMailNumber."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public handleMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1280
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1281
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    .line 1283
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    const-string/jumbo v3, "Error calling ITelecomService#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1288
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public handleMmi(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1307
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1308
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    .line 1311
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1310
    invoke-interface {v1, p2, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    const-string/jumbo v3, "Error calling ITelecomService#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1316
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isInCall()Z
    .locals 3

    .prologue
    .line 1051
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isInCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "RemoteException calling isInCall()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isRinging()Z
    .locals 3

    .prologue
    .line 1093
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isRinging(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "RemoteException attempting to get ringing state of phone app."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1099
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isTtySupported()Z
    .locals 3

    .prologue
    .line 1182
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1183
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isTtySupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "RemoteException attempting to get TTY supported state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 988
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 989
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 990
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 989
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/ITelecomService;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "RemoteException calling ITelecomService#isVoiceMailNumber."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 995
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1414
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1415
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_2

    .line 1416
    if-nez p1, :cond_0

    .line 1417
    const-string/jumbo v2, "TelecomManager"

    const-string/jumbo v3, "Cannot place call to empty address."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_0
    if-nez p2, :cond_1

    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1421
    :cond_1
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1420
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/ITelecomService;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    :cond_2
    :goto_0
    return-void

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    const-string/jumbo v3, "Error calling ITelecomService#placeCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    .locals 3
    .param p1, "account"    # Landroid/telecom/PhoneAccount;

    .prologue
    .line 838
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#registerPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDefaultDialer(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 950
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->setDefaultDialer(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "RemoteException attempting to set the default dialer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 611
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#setUserSelectedOutgoingPhoneAccount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showInCallScreen(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1372
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1373
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    .line 1375
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    const-string/jumbo v3, "Error calling ITelecomService#showCallScreen"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 3

    .prologue
    .line 1166
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 853
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    const-string/jumbo v2, "Error calling ITelecomService#unregisterPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
