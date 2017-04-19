.class public final enum Lcom/android/internal/telephony/dataconnection/DcFailCause;
.super Ljava/lang/Enum;
.source "DcFailCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private static final sErrorCodeToFailCauseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorCode:I

.field private final mRestartRadioOnRegularDeactivation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x1c

    const/16 v8, 0x1b

    const/16 v7, 0x1a

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 26
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "NONE"

    invoke-direct {v2, v3, v1, v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 28
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "OPERATOR_BARRED"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 30
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "INSUFFICIENT_RESOURCES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 31
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 32
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "MISSING_UNKNOWN_APN"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "UNKNOWN_PDP_ADDRESS_TYPE"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v9}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 33
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "USER_AUTHENTICATION"

    const/4 v4, 0x5

    .line 34
    const/16 v5, 0x1d

    .line 33
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 34
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "ACTIVATION_REJECT_GGSN"

    const/4 v4, 0x6

    .line 35
    const/16 v5, 0x1e

    .line 34
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 35
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "ACTIVATION_REJECT_UNSPECIFIED"

    const/4 v4, 0x7

    .line 36
    const/16 v5, 0x1f

    .line 35
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 36
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 37
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "SERVICE_OPTION_NOT_SUPPORTED"

    const/16 v4, 0x20

    invoke-direct {v2, v3, v6, v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v4, 0x9

    .line 38
    const/16 v5, 0x21

    .line 37
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 38
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "SERVICE_OPTION_OUT_OF_ORDER"

    const/16 v4, 0xa

    .line 39
    const/16 v5, 0x22

    .line 38
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 40
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "NSAPI_IN_USE"

    const/16 v4, 0xb

    const/16 v5, 0x23

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "REGULAR_DEACTIVATION"

    const/16 v4, 0xc

    .line 41
    const/16 v5, 0x24

    .line 40
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 41
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "ONLY_IPV4_ALLOWED"

    const/16 v4, 0xd

    .line 42
    const/16 v5, 0x32

    .line 41
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 42
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "ONLY_IPV6_ALLOWED"

    const/16 v4, 0xe

    .line 43
    const/16 v5, 0x33

    .line 42
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 43
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "ONLY_SINGLE_BEARER_ALLOWED"

    const/16 v4, 0xf

    .line 44
    const/16 v5, 0x34

    .line 43
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 44
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 45
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "PROTOCOL_ERRORS"

    const/16 v4, 0x10

    const/16 v5, 0x6f

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "REGISTRATION_FAIL"

    const/16 v4, 0x11

    .line 49
    const/4 v5, -0x1

    .line 45
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 50
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "GPRS_REGISTRATION_FAIL"

    const/16 v4, 0x12

    const/4 v5, -0x2

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 51
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "SIGNAL_LOST"

    const/16 v4, 0x13

    const/4 v5, -0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 52
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "PREF_RADIO_TECH_CHANGED"

    const/16 v4, 0x14

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "RADIO_POWER_OFF"

    const/16 v4, 0x15

    .line 53
    const/4 v5, -0x5

    .line 52
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 53
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "TETHERED_CALL_ACTIVE"

    const/16 v4, 0x16

    .line 54
    const/4 v5, -0x6

    .line 53
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 54
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "ERROR_UNSPECIFIED"

    const/16 v4, 0x17

    .line 55
    const v5, 0xffff

    .line 54
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 55
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 57
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "UNKNOWN"

    const/16 v4, 0x18

    .line 59
    const/high16 v5, 0x10000

    .line 57
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 59
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 60
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "RADIO_NOT_AVAILABLE"

    const/16 v4, 0x19

    const v5, 0x10001

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "UNACCEPTABLE_NETWORK_PARAMETER"

    .line 61
    const v4, 0x10002

    .line 60
    invoke-direct {v2, v3, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 61
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "CONNECTION_TO_DATACONNECTIONAC_BROKEN"

    .line 62
    const v4, 0x10003

    .line 61
    invoke-direct {v2, v3, v8, v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    .line 62
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 63
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "LOST_CONNECTION"

    const v4, 0x10004

    invoke-direct {v2, v3, v9, v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 64
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string/jumbo v3, "RESET_BY_FRAMEWORK"

    const/16 v4, 0x1d

    const v5, 0x10005

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 25
    const/16 v2, 0x1e

    new-array v2, v2, [Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v3, v2, v1

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v3, v2, v6

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x9

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0xa

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0xb

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0xc

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0xd

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0xe

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0xf

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x10

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x11

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x12

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x13

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x14

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x15

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x16

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x17

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x18

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x19

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v3, v2, v7

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v3, v2, v8

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v3, v2, v9

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x1d

    aput-object v3, v2, v4

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    .line 72
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->values()[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    array-length v3, v2

    .local v0, "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 73
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p3, "errorCode"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    const v1, 0x1120098

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mRestartRadioOnRegularDeactivation:Z

    .line 78
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mErrorCode:I

    .line 77
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    .line 116
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 117
    .local v0, "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 120
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mErrorCode:I

    return v0
.end method

.method public isEventLoggable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 103
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 105
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 106
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 107
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 108
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 109
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 110
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 111
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 112
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermanentFail()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 91
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 93
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 94
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 95
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 96
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 97
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 98
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    .line 99
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestartRadioFail()Z
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mRestartRadioOnRegularDeactivation:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
