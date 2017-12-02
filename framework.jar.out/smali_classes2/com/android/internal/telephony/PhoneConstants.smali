.class public Lcom/android/internal/telephony/PhoneConstants;
.super Ljava/lang/Object;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;,
        Lcom/android/internal/telephony/PhoneConstants$DataState;,
        Lcom/android/internal/telephony/PhoneConstants$State;
    }
.end annotation


# static fields
.field public static final ACTION_SUBSCRIPTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SUBSCRIPTION_PHONE_STATE"

.field public static final APN_ALREADY_ACTIVE:I = 0x0

.field public static final APN_ALREADY_INACTIVE:I = 0x4

.field public static final APN_REQUEST_FAILED:I = 0x3

.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final APN_TYPES:[Ljava/lang/String;

.field public static final APN_TYPE_ALL:Ljava/lang/String; = "*"

.field public static final APN_TYPE_CBS:Ljava/lang/String; = "cbs"

.field public static final APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final APN_TYPE_DUN:Ljava/lang/String; = "dun"

.field public static final APN_TYPE_EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final APN_TYPE_FOTA:Ljava/lang/String; = "fota"

.field public static final APN_TYPE_HIPRI:Ljava/lang/String; = "hipri"

.field public static final APN_TYPE_IA:Ljava/lang/String; = "ia"

.field public static final APN_TYPE_IMS:Ljava/lang/String; = "ims"

.field public static final APN_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final APN_TYPE_NOT_AVAILABLE:I = 0x2

.field public static final APN_TYPE_SUPL:Ljava/lang/String; = "supl"

.field public static final APPTYPE_CSIM:I = 0x4

.field public static final APPTYPE_ISIM:I = 0x5

.field public static final APPTYPE_RUIM:I = 0x3

.field public static final APPTYPE_SIM:I = 0x1

.field public static final APPTYPE_UNKNOWN:I = 0x0

.field public static final APPTYPE_USIM:I = 0x2

.field public static final AUDIO_OUTPUT_DEFAULT:I = 0x0

.field public static final AUDIO_OUTPUT_DISABLE_SPEAKER:I = 0x1

.field public static final AUDIO_OUTPUT_ENABLE_SPEAKER:I = 0x0

.field public static final AUTH_CONTEXT_EAP_AKA:I = 0x81

.field public static final AUTH_CONTEXT_EAP_SIM:I = 0x80

.field public static final AUTH_CONTEXT_UNDEFINED:I = -0x1

.field public static final CAPABILITY_3G:I = 0x1

.field public static final CELL_OFF_DUE_TO_AIRPLANE_MODE_FLAG:I = 0x2

.field public static final CELL_OFF_FLAG:I = 0x0

.field public static final CELL_ON_FLAG:I = 0x1

.field public static final DATA_APN_KEY:Ljava/lang/String; = "apn"

.field public static final DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final DATA_FAILURE_CAUSE_KEY:Ljava/lang/String; = "failCause"

.field public static final DATA_IFACE_NAME_KEY:Ljava/lang/String; = "iface"

.field public static final DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final DATA_NETWORK_CAPABILITIES_KEY:Ljava/lang/String; = "networkCapabilities"

.field public static final DATA_NETWORK_ROAMING_KEY:Ljava/lang/String; = "networkRoaming"

.field public static final DATA_NETWORK_TYPE_KEY:Ljava/lang/String; = "networkType"

.field public static final DEFAULT_CARD_INDEX:I = 0x0

.field public static final FAILURE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final LTE_ON_CDMA_FALSE:I = 0x0

.field public static final LTE_ON_CDMA_TRUE:I = 0x1

.field public static final LTE_ON_CDMA_UNKNOWN:I = -0x1

.field public static final MAX_PHONE_COUNT_DUAL_SIM:I = 0x2

.field public static final MAX_PHONE_COUNT_SINGLE_SIM:I = 0x1

.field public static final MAX_PHONE_COUNT_TRI_SIM:I = 0x3

.field public static final NETWORK_UNAVAILABLE_KEY:Ljava/lang/String; = "networkUnvailable"

.field public static final PHONE_IN_ECM_STATE:Ljava/lang/String; = "phoneinECMState"

.field public static final PHONE_IN_EMERGENCY_CALL:Ljava/lang/String; = "phoneInEmergencyCall"

.field public static final PHONE_KEY:Ljava/lang/String; = "phone"

.field public static final PHONE_NAME_KEY:Ljava/lang/String; = "phoneName"

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_CDMA_LTE:I = 0x6

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_IMS:I = 0x5

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final PHONE_TYPE_THIRD_PARTY:I = 0x4

.field public static final PIN_GENERAL_FAILURE:I = 0x2

.field public static final PIN_PASSWORD_INCORRECT:I = 0x1

.field public static final PIN_RESULT_SUCCESS:I = 0x0

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field public static final REASON_LINK_PROPERTIES_CHANGED:Ljava/lang/String; = "linkPropertiesChanged"

.field public static final RIL_CARD_MAX_APPS:I = 0x8

.field public static final SIM_ID_1:I = 0x0

.field public static final SIM_ID_2:I = 0x1

.field public static final SIM_ID_3:I = 0x2

.field public static final SIM_ID_4:I = 0x3

.field public static final SLOT_KEY:Ljava/lang/String; = "slot"

.field public static final STATE_CHANGE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final STATE_KEY:Ljava/lang/String; = "state"

.field public static final SUB1:I = 0x0

.field public static final SUB2:I = 0x1

.field public static final SUB3:I = 0x2

.field public static final SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field public static final SUB_SETTING:Ljava/lang/String; = "subSettings"

.field public static final UNSET_MTU:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 144
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "default"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "mms"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "supl"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 147
    const-string/jumbo v1, "dun"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 148
    const-string/jumbo v1, "hipri"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 149
    const-string/jumbo v1, "fota"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 150
    const-string/jumbo v1, "ims"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 151
    const-string/jumbo v1, "cbs"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 152
    const-string/jumbo v1, "ia"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 153
    const-string/jumbo v1, "emergency"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 144
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants;->APN_TYPES:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
