.class public Lcom/android/internal/telephony/TelephonyIntents;
.super Ljava/lang/Object;
.source "TelephonyIntents.java"


# static fields
.field public static final ACTION_ANY_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field public static final ACTION_CARRIER_SETUP:Ljava/lang/String; = "android.intent.action.ACTION_CARRIER_SETUP"

.field public static final ACTION_CARRIER_SIGNAL_PCO_VALUE:Ljava/lang/String; = "android.intent.action.CARRIER_SIGNAL_PCO_VALUE"

.field public static final ACTION_CARRIER_SIGNAL_REDIRECTED:Ljava/lang/String; = "android.intent.action.CARRIER_SIGNAL_REDIRECTED"

.field public static final ACTION_CARRIER_SIGNAL_REQUEST_NETWORK_FAILED:Ljava/lang/String; = "android.intent.action.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

.field public static final ACTION_DATA_CONNECTION_FAILED:Ljava/lang/String; = "android.intent.action.DATA_CONNECTION_FAILED"

.field public static final ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

.field public static final ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED"

.field public static final ACTION_DEFAULT_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

.field public static final ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

.field public static final ACTION_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final ACTION_EMERGENCY_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

.field public static final ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION:Ljava/lang/String; = "android.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

.field public static final ACTION_NETWORK_SET_TIME:Ljava/lang/String; = "android.intent.action.NETWORK_SET_TIME"

.field public static final ACTION_NETWORK_SET_TIMEZONE:Ljava/lang/String; = "android.intent.action.NETWORK_SET_TIMEZONE"

.field public static final ACTION_RADIO_TECHNOLOGY_CHANGED:Ljava/lang/String; = "android.intent.action.RADIO_TECHNOLOGY"

.field public static final ACTION_REQUEST_OMADM_CONFIGURATION_UPDATE:Ljava/lang/String; = "com.android.omadm.service.CONFIGURATION_UPDATE"

.field public static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"

.field public static final ACTION_SET_RADIO_CAPABILITY_DONE:Ljava/lang/String; = "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

.field public static final ACTION_SET_RADIO_CAPABILITY_FAILED:Ljava/lang/String; = "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

.field public static final ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS:Ljava/lang/String; = "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

.field public static final ACTION_SIGNAL_STRENGTH_CHANGED:Ljava/lang/String; = "android.intent.action.SIG_STR"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final ACTION_SUBINFO_CONTENT_CHANGE:Ljava/lang/String; = "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

.field public static final ACTION_SUBINFO_RECORD_UPDATED:Ljava/lang/String; = "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

.field public static final EXTRA_APN_PROTO_KEY:Ljava/lang/String; = "apnProto"

.field public static final EXTRA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final EXTRA_DATA_SPN:Ljava/lang/String; = "spnData"

.field public static final EXTRA_ERROR_CODE_KEY:Ljava/lang/String; = "errorCode"

.field public static final EXTRA_PCO_ID_KEY:Ljava/lang/String; = "pcoId"

.field public static final EXTRA_PCO_VALUE_KEY:Ljava/lang/String; = "pcoValue"

.field public static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field public static final EXTRA_RADIO_ACCESS_FAMILY:Ljava/lang/String; = "rafs"

.field public static final EXTRA_REDIRECTION_URL_KEY:Ljava/lang/String; = "redirectionUrl"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
