.class public interface abstract Lcom/android/internal/telephony/PhoneInternalInterface;
.super Ljava/lang/Object;
.source "PhoneInternalInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;,
        Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;
    }
.end annotation


# static fields
.field public static final BM_10_800M_2:I = 0xf

.field public static final BM_4_450M:I = 0xa

.field public static final BM_7_700M2:I = 0xc

.field public static final BM_8_1800M:I = 0xd

.field public static final BM_9_900M:I = 0xe

.field public static final BM_AUS2_BAND:I = 0x5

.field public static final BM_AUS_BAND:I = 0x4

.field public static final BM_AWS:I = 0x11

.field public static final BM_CELL_800:I = 0x6

.field public static final BM_EURO_BAND:I = 0x1

.field public static final BM_EURO_PAMR:I = 0x10

.field public static final BM_IMT2000:I = 0xb

.field public static final BM_JPN_BAND:I = 0x3

.field public static final BM_JTACS:I = 0x8

.field public static final BM_KOREA_PCS:I = 0x9

.field public static final BM_NUM_BAND_MODES:I = 0x13

.field public static final BM_PCS:I = 0x7

.field public static final BM_UNSPECIFIED:I = 0x0

.field public static final BM_US_2500M:I = 0x12

.field public static final BM_US_BAND:I = 0x2

.field public static final CDMA_OTA_PROVISION_STATUS_A_KEY_EXCHANGED:I = 0x2

.field public static final CDMA_OTA_PROVISION_STATUS_COMMITTED:I = 0x8

.field public static final CDMA_OTA_PROVISION_STATUS_IMSI_DOWNLOADED:I = 0x6

.field public static final CDMA_OTA_PROVISION_STATUS_MDN_DOWNLOADED:I = 0x5

.field public static final CDMA_OTA_PROVISION_STATUS_NAM_DOWNLOADED:I = 0x4

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_ABORTED:I = 0xb

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_STARTED:I = 0x9

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_STOPPED:I = 0xa

.field public static final CDMA_OTA_PROVISION_STATUS_PRL_DOWNLOADED:I = 0x7

.field public static final CDMA_OTA_PROVISION_STATUS_SPC_RETRIES_EXCEEDED:I = 0x1

.field public static final CDMA_OTA_PROVISION_STATUS_SPL_UNLOCKED:I = 0x0

.field public static final CDMA_OTA_PROVISION_STATUS_SSD_UPDATED:I = 0x3

.field public static final CDMA_RM_AFFILIATED:I = 0x1

.field public static final CDMA_RM_ANY:I = 0x2

.field public static final CDMA_RM_HOME:I = 0x0

.field public static final CDMA_SUBSCRIPTION_NV:I = 0x1

.field public static final CDMA_SUBSCRIPTION_RUIM_SIM:I = 0x0

.field public static final CDMA_SUBSCRIPTION_UNKNOWN:I = -0x1

.field public static final DEBUG_PHONE:Z = true

.field public static final FEATURE_ENABLE_CBS:Ljava/lang/String; = "enableCBS"

.field public static final FEATURE_ENABLE_DUN:Ljava/lang/String; = "enableDUN"

.field public static final FEATURE_ENABLE_DUN_ALWAYS:Ljava/lang/String; = "enableDUNAlways"

.field public static final FEATURE_ENABLE_EMERGENCY:Ljava/lang/String; = "enableEmergency"

.field public static final FEATURE_ENABLE_FOTA:Ljava/lang/String; = "enableFOTA"

.field public static final FEATURE_ENABLE_HIPRI:Ljava/lang/String; = "enableHIPRI"

.field public static final FEATURE_ENABLE_IMS:Ljava/lang/String; = "enableIMS"

.field public static final FEATURE_ENABLE_MMS:Ljava/lang/String; = "enableMMS"

.field public static final FEATURE_ENABLE_SUPL:Ljava/lang/String; = "enableSUPL"

.field public static final NT_MODE_CDMA:I = 0x4

.field public static final NT_MODE_CDMA_NO_EVDO:I = 0x5

.field public static final NT_MODE_EVDO_NO_CDMA:I = 0x6

.field public static final NT_MODE_GLOBAL:I = 0x7

.field public static final NT_MODE_GSM_ONLY:I = 0x1

.field public static final NT_MODE_GSM_UMTS:I = 0x3

.field public static final NT_MODE_LTE_CDMA_AND_EVDO:I = 0x8

.field public static final NT_MODE_LTE_CDMA_EVDO_GSM_WCDMA:I = 0xa

.field public static final NT_MODE_LTE_GSM_WCDMA:I = 0x9

.field public static final NT_MODE_LTE_ONLY:I = 0xb

.field public static final NT_MODE_LTE_TDSCDMA:I = 0xf

.field public static final NT_MODE_LTE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x16

.field public static final NT_MODE_LTE_TDSCDMA_GSM:I = 0x11

.field public static final NT_MODE_LTE_TDSCDMA_GSM_WCDMA:I = 0x14

.field public static final NT_MODE_LTE_TDSCDMA_WCDMA:I = 0x13

.field public static final NT_MODE_LTE_WCDMA:I = 0xc

.field public static final NT_MODE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x15

.field public static final NT_MODE_TDSCDMA_GSM:I = 0x10

.field public static final NT_MODE_TDSCDMA_GSM_WCDMA:I = 0x12

.field public static final NT_MODE_TDSCDMA_ONLY:I = 0xd

.field public static final NT_MODE_TDSCDMA_WCDMA:I = 0xe

.field public static final NT_MODE_WCDMA_ONLY:I = 0x2

.field public static final NT_MODE_WCDMA_PREF:I = 0x0

.field public static final PREFERRED_CDMA_SUBSCRIPTION:I = 0x1

.field public static final PREFERRED_NT_MODE:I

.field public static final REASON_APN_CHANGED:Ljava/lang/String; = "apnChanged"

.field public static final REASON_APN_FAILED:Ljava/lang/String; = "apnFailed"

.field public static final REASON_APN_SWITCHED:Ljava/lang/String; = "apnSwitched"

.field public static final REASON_CARRIER_ACTION_DISABLE_METERED_APN:Ljava/lang/String; = "carrierActionDisableMeteredApn"

.field public static final REASON_CARRIER_CHANGE:Ljava/lang/String; = "carrierChange"

.field public static final REASON_CDMA_DATA_ATTACHED:Ljava/lang/String; = "cdmaDataAttached"

.field public static final REASON_CDMA_DATA_DETACHED:Ljava/lang/String; = "cdmaDataDetached"

.field public static final REASON_CONNECTED:Ljava/lang/String; = "connected"

.field public static final REASON_DATA_ATTACHED:Ljava/lang/String; = "dataAttached"

.field public static final REASON_DATA_DEPENDENCY_MET:Ljava/lang/String; = "dependencyMet"

.field public static final REASON_DATA_DEPENDENCY_UNMET:Ljava/lang/String; = "dependencyUnmet"

.field public static final REASON_DATA_DETACHED:Ljava/lang/String; = "dataDetached"

.field public static final REASON_DATA_DISABLED:Ljava/lang/String; = "dataDisabled"

.field public static final REASON_DATA_ENABLED:Ljava/lang/String; = "dataEnabled"

.field public static final REASON_DATA_SPECIFIC_DISABLED:Ljava/lang/String; = "specificDisabled"

.field public static final REASON_IWLAN_AVAILABLE:Ljava/lang/String; = "iwlanAvailable"

.field public static final REASON_LOST_DATA_CONNECTION:Ljava/lang/String; = "lostDataConnection"

.field public static final REASON_NW_TYPE_CHANGED:Ljava/lang/String; = "nwTypeChanged"

.field public static final REASON_PDP_RESET:Ljava/lang/String; = "pdpReset"

.field public static final REASON_PS_RESTRICT_DISABLED:Ljava/lang/String; = "psRestrictDisabled"

.field public static final REASON_PS_RESTRICT_ENABLED:Ljava/lang/String; = "psRestrictEnabled"

.field public static final REASON_RADIO_TURNED_OFF:Ljava/lang/String; = "radioTurnedOff"

.field public static final REASON_RESTORE_DEFAULT_APN:Ljava/lang/String; = "restoreDefaultApn"

.field public static final REASON_ROAMING_OFF:Ljava/lang/String; = "roamingOff"

.field public static final REASON_ROAMING_ON:Ljava/lang/String; = "roamingOn"

.field public static final REASON_SIM_LOADED:Ljava/lang/String; = "simLoaded"

.field public static final REASON_SIM_NOT_READY:Ljava/lang/String; = "simNotReady"

.field public static final REASON_SINGLE_PDN_ARBITRATION:Ljava/lang/String; = "SinglePdnArbitration"

.field public static final REASON_VOICE_CALL_ENDED:Ljava/lang/String; = "2GVoiceCallEnded"

.field public static final REASON_VOICE_CALL_STARTED:Ljava/lang/String; = "2GVoiceCallStarted"

.field public static final TTY_MODE_FULL:I = 0x1

.field public static final TTY_MODE_HCO:I = 0x2

.field public static final TTY_MODE_OFF:I = 0x0

.field public static final TTY_MODE_VCO:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    sput v0, Lcom/android/internal/telephony/PhoneInternalInterface;->PREFERRED_NT_MODE:I

    .line 51
    return-void
.end method


# virtual methods
.method public abstract acceptCall(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract activateCellBroadcastSms(ILandroid/os/Message;)V
.end method

.method public abstract canConference()Z
.end method

.method public abstract canTransfer()Z
.end method

.method public abstract clearDisconnected()V
.end method

.method public abstract conference()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract disableLocationUpdates()V
.end method

.method public abstract enableLocationUpdates()V
.end method

.method public abstract explicitCallTransfer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract getBackgroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getCallForwardingOption(ILandroid/os/Message;)V
.end method

.method public abstract getCallWaiting(Landroid/os/Message;)V
.end method

.method public abstract getCellBroadcastSmsConfig(Landroid/os/Message;)V
.end method

.method public abstract getCellLocation()Landroid/telephony/CellLocation;
.end method

.method public abstract getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
.end method

.method public abstract getDataCallList(Landroid/os/Message;)V
.end method

.method public abstract getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
.end method

.method public abstract getDataEnabled()Z
.end method

.method public abstract getDataRoamingEnabled()Z
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceSvn()Ljava/lang/String;
.end method

.method public abstract getEsn()Ljava/lang/String;
.end method

.method public abstract getForegroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getGroupIdLevel1()Ljava/lang/String;
.end method

.method public abstract getGroupIdLevel2()Ljava/lang/String;
.end method

.method public abstract getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end method

.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getLine1AlphaTag()Ljava/lang/String;
.end method

.method public abstract getLine1Number()Ljava/lang/String;
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getMute()Z
.end method

.method public abstract getNeighboringCids(Landroid/os/Message;)V
.end method

.method public abstract getOutgoingCallerIdDisplay(Landroid/os/Message;)V
.end method

.method public abstract getPendingMmiCodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRingingCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getServiceState()Landroid/telephony/ServiceState;
.end method

.method public abstract getSubscriberId()Ljava/lang/String;
.end method

.method public abstract getVoiceMailAlphaTag()Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract handleInCallMmiCommands(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract handlePinMmi(Ljava/lang/String;)Z
.end method

.method public abstract registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract sendDtmf(C)V
.end method

.method public abstract sendUssdResponse(Ljava/lang/String;)V
.end method

.method public abstract setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setCallWaiting(ZLandroid/os/Message;)V
.end method

.method public abstract setCellBroadcastSmsConfig([ILandroid/os/Message;)V
.end method

.method public abstract setDataEnabled(Z)V
.end method

.method public abstract setDataRoamingEnabled(Z)V
.end method

.method public abstract setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
.end method

.method public abstract setRadioPower(Z)V
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract startDtmf(C)V
.end method

.method public abstract stopDtmf()V
.end method

.method public abstract switchHoldingAndActive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract unregisterForSuppServiceNotification(Landroid/os/Handler;)V
.end method

.method public abstract updateServiceLocation()V
.end method
