.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x5

.field static final TRANSACTION_answerRingingCallForSubscriber:I = 0x6

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_canChangeDtmfToneLength:I = 0x74

.field static final TRANSACTION_carrierActionSetMeteredApnsEnabled:I = 0x8d

.field static final TRANSACTION_carrierActionSetRadioEnabled:I = 0x8e

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x64

.field static final TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x65

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableDataConnectivity:I = 0x26

.field static final TRANSACTION_disableLocationUpdates:I = 0x23

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x24

.field static final TRANSACTION_disableVisualVoicemailSmsFilter:I = 0x3d

.field static final TRANSACTION_enableDataConnectivity:I = 0x25

.field static final TRANSACTION_enableLocationUpdates:I = 0x21

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x22

.field static final TRANSACTION_enableVideoCalling:I = 0x72

.field static final TRANSACTION_enableVisualVoicemailSmsFilter:I = 0x3c

.field static final TRANSACTION_endCall:I = 0x3

.field static final TRANSACTION_endCallForSubscriber:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x80

.field static final TRANSACTION_getActivePhoneType:I = 0x2e

.field static final TRANSACTION_getActivePhoneTypeForSlot:I = 0x2f

.field static final TRANSACTION_getAidForAppType:I = 0x87

.field static final TRANSACTION_getAllCellInfo:I = 0x49

.field static final TRANSACTION_getAllowedCarriers:I = 0x8c

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x56

.field static final TRANSACTION_getCallState:I = 0x2a

.field static final TRANSACTION_getCallStateForSlot:I = 0x2b

.field static final TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x66

.field static final TRANSACTION_getCarrierPrivilegeStatus:I = 0x63

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x30

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x31

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x32

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x33

.field static final TRANSACTION_getCdmaEriText:I = 0x34

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x35

.field static final TRANSACTION_getCdmaMdn:I = 0x61

.field static final TRANSACTION_getCdmaMin:I = 0x62

.field static final TRANSACTION_getCdmaPrlVersion:I = 0x89

.field static final TRANSACTION_getCellLocation:I = 0x28

.field static final TRANSACTION_getCellNetworkScanResults:I = 0x5a

.field static final TRANSACTION_getDataActivity:I = 0x2c

.field static final TRANSACTION_getDataEnabled:I = 0x5e

.field static final TRANSACTION_getDataNetworkType:I = 0x42

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x43

.field static final TRANSACTION_getDataState:I = 0x2d

.field static final TRANSACTION_getDefaultSim:I = 0x4b

.field static final TRANSACTION_getDeviceId:I = 0x7c

.field static final TRANSACTION_getDeviceSoftwareVersionForSlot:I = 0x7e

.field static final TRANSACTION_getEsn:I = 0x88

.field static final TRANSACTION_getImeiForSlot:I = 0x7d

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x69

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x68

.field static final TRANSACTION_getLocaleFromDefaultSim:I = 0x81

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x47

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x48

.field static final TRANSACTION_getMergedSubscriberIds:I = 0x6a

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x29

.field static final TRANSACTION_getNetworkType:I = 0x40

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x41

.field static final TRANSACTION_getPackagesWithCarrierPrivileges:I = 0x86

.field static final TRANSACTION_getPcscfAddress:I = 0x5f

.field static final TRANSACTION_getPreferredNetworkType:I = 0x57

.field static final TRANSACTION_getRadioAccessFamily:I = 0x71

.field static final TRANSACTION_getServiceStateForSubscriber:I = 0x83

.field static final TRANSACTION_getSubIdForPhoneAccount:I = 0x7f

.field static final TRANSACTION_getSystemVisualVoicemailSmsFilterSettings:I = 0x3f

.field static final TRANSACTION_getTelephonyHistograms:I = 0x8a

.field static final TRANSACTION_getTetherApnRequired:I = 0x58

.field static final TRANSACTION_getVisualVoicemailSmsFilterSettings:I = 0x3e

.field static final TRANSACTION_getVoiceMessageCount:I = 0x38

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x39

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x44

.field static final TRANSACTION_getVoicemailRingtoneUri:I = 0x84

.field static final TRANSACTION_getVtDataUsage:I = 0x8f

.field static final TRANSACTION_handlePinMmi:I = 0x18

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x19

.field static final TRANSACTION_hasIccCard:I = 0x45

.field static final TRANSACTION_hasIccCardUsingSlotId:I = 0x46

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x4d

.field static final TRANSACTION_iccExchangeSimIO:I = 0x50

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x4c

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x4f

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x4e

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x6d

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x27

.field static final TRANSACTION_isHearingAidCompatibilitySupported:I = 0x77

.field static final TRANSACTION_isIdle:I = 0xc

.field static final TRANSACTION_isIdleForSubscriber:I = 0xd

.field static final TRANSACTION_isImsRegistered:I = 0x78

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookForSubscriber:I = 0x9

.field static final TRANSACTION_isRadioOn:I = 0xe

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0xf

.field static final TRANSACTION_isRinging:I = 0xb

.field static final TRANSACTION_isRingingForSubscriber:I = 0xa

.field static final TRANSACTION_isTtyModeSupported:I = 0x76

.field static final TRANSACTION_isVideoCallingEnabled:I = 0x73

.field static final TRANSACTION_isVideoTelephonyAvailable:I = 0x7b

.field static final TRANSACTION_isVisualVoicemailEnabled:I = 0x3b

.field static final TRANSACTION_isVoicemailVibrationEnabled:I = 0x85

.field static final TRANSACTION_isVolteAvailable:I = 0x7a

.field static final TRANSACTION_isWifiCallingAvailable:I = 0x79

.field static final TRANSACTION_isWorldPhone:I = 0x75

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x6e

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x36

.field static final TRANSACTION_nvReadItem:I = 0x52

.field static final TRANSACTION_nvResetConfig:I = 0x55

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x54

.field static final TRANSACTION_nvWriteItem:I = 0x53

.field static final TRANSACTION_requestModemActivityInfo:I = 0x82

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x51

.field static final TRANSACTION_setAllowedCarriers:I = 0x8b

.field static final TRANSACTION_setCellInfoListRate:I = 0x4a

.field static final TRANSACTION_setDataEnabled:I = 0x5d

.field static final TRANSACTION_setImsRegistrationState:I = 0x60

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x67

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x59

.field static final TRANSACTION_setNetworkSelectionModeManual:I = 0x5b

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x6b

.field static final TRANSACTION_setPolicyDataEnabled:I = 0x90

.field static final TRANSACTION_setPreferredNetworkType:I = 0x5c

.field static final TRANSACTION_setRadio:I = 0x1c

.field static final TRANSACTION_setRadioCapability:I = 0x70

.field static final TRANSACTION_setRadioForSubscriber:I = 0x1d

.field static final TRANSACTION_setRadioPower:I = 0x1e

.field static final TRANSACTION_setRoamingOverride:I = 0x6c

.field static final TRANSACTION_setVisualVoicemailEnabled:I = 0x3a

.field static final TRANSACTION_setVoiceMailNumber:I = 0x37

.field static final TRANSACTION_shutdownMobileRadios:I = 0x6f

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0x10

.field static final TRANSACTION_supplyPinForSubscriber:I = 0x11

.field static final TRANSACTION_supplyPinReportResult:I = 0x14

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0x15

.field static final TRANSACTION_supplyPuk:I = 0x12

.field static final TRANSACTION_supplyPukForSubscriber:I = 0x13

.field static final TRANSACTION_supplyPukReportResult:I = 0x16

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0x17

.field static final TRANSACTION_toggleRadioOnOff:I = 0x1a

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x1b

.field static final TRANSACTION_updateServiceLocation:I = 0x1f

.field static final TRANSACTION_updateServiceLocationForSubscriber:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 58
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 1648
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 49
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v4, 0x1

    return v4

    .line 54
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 57
    .local v25, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v4, 0x1

    return v4

    .line 63
    .end local v25    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 67
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 68
    .local v31, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v4, 0x1

    return v4

    .line 74
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v54

    .line 76
    .local v54, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v54, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v4, 0x1

    return v4

    .line 77
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 82
    .end local v54    # "_result":Z
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 85
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallForSubscriber(I)Z

    move-result v54

    .line 86
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v54, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v4, 0x1

    return v4

    .line 87
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 92
    .end local v5    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    const/4 v4, 0x1

    return v4

    .line 99
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 102
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallForSubscriber(I)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v4, 0x1

    return v4

    .line 108
    .end local v5    # "_arg0":I
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v4, 0x1

    return v4

    .line 115
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 118
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook(Ljava/lang/String;)Z

    move-result v54

    .line 119
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v54, :cond_2

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v4, 0x1

    return v4

    .line 120
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 125
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 129
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 130
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookForSubscriber(ILjava/lang/String;)Z

    move-result v54

    .line 131
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v54, :cond_3

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v4, 0x1

    return v4

    .line 132
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 137
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 141
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 142
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingForSubscriber(ILjava/lang/String;)Z

    move-result v54

    .line 143
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v54, :cond_4

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v4, 0x1

    return v4

    .line 144
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 149
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 152
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging(Ljava/lang/String;)Z

    move-result v54

    .line 153
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v54, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v4, 0x1

    return v4

    .line 154
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 159
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 162
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle(Ljava/lang/String;)Z

    move-result v54

    .line 163
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v54, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v4, 0x1

    return v4

    .line 164
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 169
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 173
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 174
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v54

    .line 175
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v54, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v4, 0x1

    return v4

    .line 176
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 181
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 184
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn(Ljava/lang/String;)Z

    move-result v54

    .line 185
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v54, :cond_8

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v4, 0x1

    return v4

    .line 186
    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    .line 191
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 195
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 196
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v54

    .line 197
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v54, :cond_9

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v4, 0x1

    return v4

    .line 198
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .line 203
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 206
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v54

    .line 207
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v54, :cond_a

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v4, 0x1

    return v4

    .line 208
    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    .line 213
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 217
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 218
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v54

    .line 219
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v54, :cond_b

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v4, 0x1

    return v4

    .line 220
    :cond_b
    const/4 v4, 0x0

    goto :goto_b

    .line 225
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 229
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 230
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v54

    .line 231
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v54, :cond_c

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v4, 0x1

    return v4

    .line 232
    :cond_c
    const/4 v4, 0x0

    goto :goto_c

    .line 237
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 241
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 243
    .restart local v31    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 244
    .local v37, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v54

    .line 245
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v54, :cond_d

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v4, 0x1

    return v4

    .line 246
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .line 251
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v37    # "_arg2":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 254
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v56

    .line 255
    .local v56, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 257
    const/4 v4, 0x1

    return v4

    .line 261
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v56    # "_result":[I
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 265
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 266
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v56

    .line 267
    .restart local v56    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 269
    const/4 v4, 0x1

    return v4

    .line 273
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v56    # "_result":[I
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 277
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 278
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v56

    .line 279
    .restart local v56    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 281
    const/4 v4, 0x1

    return v4

    .line 285
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v56    # "_result":[I
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 289
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 291
    .restart local v31    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 292
    .restart local v37    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v56

    .line 293
    .restart local v56    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 295
    const/4 v4, 0x1

    return v4

    .line 299
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v37    # "_arg2":Ljava/lang/String;
    .end local v56    # "_result":[I
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 302
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v54

    .line 303
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v54, :cond_e

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v4, 0x1

    return v4

    .line 304
    :cond_e
    const/4 v4, 0x0

    goto :goto_e

    .line 309
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 313
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 314
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v54

    .line 315
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v54, :cond_f

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/4 v4, 0x1

    return v4

    .line 316
    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    .line 321
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/4 v4, 0x1

    return v4

    .line 328
    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 331
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    .line 332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    const/4 v4, 0x1

    return v4

    .line 337
    .end local v5    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    const/16 v26, 0x1

    .line 340
    .local v26, "_arg0":Z
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v54

    .line 341
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    if-eqz v54, :cond_11

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v4, 0x1

    return v4

    .line 339
    .end local v26    # "_arg0":Z
    .end local v54    # "_result":Z
    :cond_10
    const/16 v26, 0x0

    goto :goto_10

    .line 342
    .restart local v26    # "_arg0":Z
    .restart local v54    # "_result":Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .line 347
    .end local v26    # "_arg0":Z
    .end local v54    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 351
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/16 v33, 0x1

    .line 352
    .local v33, "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    move-result v54

    .line 353
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v54, :cond_13

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v4, 0x1

    return v4

    .line 351
    .end local v33    # "_arg1":Z
    .end local v54    # "_result":Z
    :cond_12
    const/16 v33, 0x0

    goto :goto_12

    .line 354
    .restart local v33    # "_arg1":Z
    .restart local v54    # "_result":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_13

    .line 359
    .end local v5    # "_arg0":I
    .end local v33    # "_arg1":Z
    .end local v54    # "_result":Z
    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    const/16 v26, 0x1

    .line 362
    .restart local v26    # "_arg0":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v54

    .line 363
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v54, :cond_15

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v4, 0x1

    return v4

    .line 361
    .end local v26    # "_arg0":Z
    .end local v54    # "_result":Z
    :cond_14
    const/16 v26, 0x0

    goto :goto_14

    .line 364
    .restart local v26    # "_arg0":Z
    .restart local v54    # "_result":Z
    :cond_15
    const/4 v4, 0x0

    goto :goto_15

    .line 369
    .end local v26    # "_arg0":Z
    .end local v54    # "_result":Z
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    const/4 v4, 0x1

    return v4

    .line 376
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 379
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationForSubscriber(I)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v4, 0x1

    return v4

    .line 385
    .end local v5    # "_arg0":I
    :sswitch_21
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    const/4 v4, 0x1

    return v4

    .line 392
    :sswitch_22
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 395
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesForSubscriber(I)V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v4, 0x1

    return v4

    .line 401
    .end local v5    # "_arg0":I
    :sswitch_23
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/4 v4, 0x1

    return v4

    .line 408
    :sswitch_24
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 411
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesForSubscriber(I)V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    const/4 v4, 0x1

    return v4

    .line 417
    .end local v5    # "_arg0":I
    :sswitch_25
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v54

    .line 419
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    if-eqz v54, :cond_16

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    const/4 v4, 0x1

    return v4

    .line 420
    :cond_16
    const/4 v4, 0x0

    goto :goto_16

    .line 425
    .end local v54    # "_result":Z
    :sswitch_26
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v54

    .line 427
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v54, :cond_17

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    const/4 v4, 0x1

    return v4

    .line 428
    :cond_17
    const/4 v4, 0x0

    goto :goto_17

    .line 433
    .end local v54    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v54

    .line 435
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    if-eqz v54, :cond_18

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    const/4 v4, 0x1

    return v4

    .line 436
    :cond_18
    const/4 v4, 0x0

    goto :goto_18

    .line 441
    .end local v54    # "_result":Z
    :sswitch_28
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 444
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v43

    .line 445
    .local v43, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v43, :cond_19

    .line 447
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v4, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 453
    :goto_19
    const/4 v4, 0x1

    return v4

    .line 451
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 457
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":Landroid/os/Bundle;
    :sswitch_29
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 460
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v51

    .line 461
    .local v51, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 463
    const/4 v4, 0x1

    return v4

    .line 467
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v51    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_2a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v39

    .line 469
    .local v39, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    const/4 v4, 0x1

    return v4

    .line 475
    .end local v39    # "_result":I
    :sswitch_2b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 478
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSlot(I)I

    move-result v39

    .line 479
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    const/4 v4, 0x1

    return v4

    .line 485
    .end local v5    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_2c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v39

    .line 487
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    const/4 v4, 0x1

    return v4

    .line 493
    .end local v39    # "_result":I
    :sswitch_2d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v39

    .line 495
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    const/4 v4, 0x1

    return v4

    .line 501
    .end local v39    # "_result":I
    :sswitch_2e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v39

    .line 503
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    const/4 v4, 0x1

    return v4

    .line 509
    .end local v39    # "_result":I
    :sswitch_2f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 512
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSlot(I)I

    move-result v39

    .line 513
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v4, 0x1

    return v4

    .line 519
    .end local v5    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_30
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 522
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex(Ljava/lang/String;)I

    move-result v39

    .line 523
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    const/4 v4, 0x1

    return v4

    .line 529
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_31
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 533
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 534
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I

    move-result v39

    .line 535
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v4, 0x1

    return v4

    .line 541
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_32
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 544
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode(Ljava/lang/String;)I

    move-result v39

    .line 545
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v4, 0x1

    return v4

    .line 551
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_33
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 555
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 556
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I

    move-result v39

    .line 557
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    const/4 v4, 0x1

    return v4

    .line 563
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_34
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 566
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 567
    .local v48, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    const/4 v4, 0x1

    return v4

    .line 573
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 577
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 578
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 579
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    const/4 v4, 0x1

    return v4

    .line 585
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v54

    .line 587
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    if-eqz v54, :cond_1a

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    const/4 v4, 0x1

    return v4

    .line 588
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1a

    .line 593
    .end local v54    # "_result":Z
    :sswitch_37
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 597
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 599
    .restart local v31    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 600
    .restart local v37    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v54

    .line 601
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    if-eqz v54, :cond_1b

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    const/4 v4, 0x1

    return v4

    .line 602
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1b

    .line 607
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v37    # "_arg2":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_38
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v39

    .line 609
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    const/4 v4, 0x1

    return v4

    .line 615
    .end local v39    # "_result":I
    :sswitch_39
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 618
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(I)I

    move-result v39

    .line 619
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    const/4 v4, 0x1

    return v4

    .line 625
    .end local v5    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_3a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 629
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 630
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/PhoneAccountHandle;

    .line 636
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v38, 0x1

    .line 637
    .local v38, "_arg2":Z
    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVisualVoicemailEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 638
    const/4 v4, 0x1

    return v4

    .line 633
    .end local v38    # "_arg2":Z
    :cond_1c
    const/16 v29, 0x0

    .local v29, "_arg1":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1c

    .line 636
    .end local v29    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    :cond_1d
    const/16 v38, 0x0

    goto :goto_1d

    .line 642
    .end local v25    # "_arg0":Ljava/lang/String;
    :sswitch_3b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 646
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 647
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/PhoneAccountHandle;

    .line 652
    :goto_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVisualVoicemailEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v54

    .line 653
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    if-eqz v54, :cond_1f

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    const/4 v4, 0x1

    return v4

    .line 650
    .end local v54    # "_result":Z
    :cond_1e
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1e

    .line 654
    .end local v29    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .restart local v54    # "_result":Z
    :cond_1f
    const/4 v4, 0x0

    goto :goto_1f

    .line 659
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_3c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 663
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 665
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 666
    sget-object v4, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .line 671
    :goto_20
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    const/4 v4, 0x1

    return v4

    .line 669
    :cond_20
    const/16 v36, 0x0

    .local v36, "_arg2":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    goto :goto_20

    .line 677
    .end local v6    # "_arg1":I
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg2":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :sswitch_3d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 681
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 682
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V

    .line 683
    const/4 v4, 0x1

    return v4

    .line 687
    .end local v6    # "_arg1":I
    .end local v25    # "_arg0":Ljava/lang/String;
    :sswitch_3e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 691
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 692
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v46

    .line 693
    .local v46, "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    if-eqz v46, :cond_21

    .line 695
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    const/4 v4, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/telephony/VisualVoicemailSmsFilterSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 701
    :goto_21
    const/4 v4, 0x1

    return v4

    .line 699
    :cond_21
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 705
    .end local v6    # "_arg1":I
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :sswitch_3f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 709
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 710
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getSystemVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v46

    .line 711
    .restart local v46    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    if-eqz v46, :cond_22

    .line 713
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v4, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/telephony/VisualVoicemailSmsFilterSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 719
    :goto_22
    const/4 v4, 0x1

    return v4

    .line 717
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 723
    .end local v6    # "_arg1":I
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :sswitch_40
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v39

    .line 725
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    const/4 v4, 0x1

    return v4

    .line 731
    .end local v39    # "_result":I
    :sswitch_41
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 735
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 736
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v39

    .line 737
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    const/4 v4, 0x1

    return v4

    .line 743
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_42
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 746
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;)I

    move-result v39

    .line 747
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    const/4 v4, 0x1

    return v4

    .line 753
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_43
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 757
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 758
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v39

    .line 759
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    const/4 v4, 0x1

    return v4

    .line 765
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_44
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 769
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 770
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v39

    .line 771
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    const/4 v4, 0x1

    return v4

    .line 777
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_45
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v54

    .line 779
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    if-eqz v54, :cond_23

    const/4 v4, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    const/4 v4, 0x1

    return v4

    .line 780
    :cond_23
    const/4 v4, 0x0

    goto :goto_23

    .line 785
    .end local v54    # "_result":Z
    :sswitch_46
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 788
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotId(I)Z

    move-result v54

    .line 789
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    if-eqz v54, :cond_24

    const/4 v4, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    const/4 v4, 0x1

    return v4

    .line 790
    :cond_24
    const/4 v4, 0x0

    goto :goto_24

    .line 795
    .end local v5    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_47
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 798
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode(Ljava/lang/String;)I

    move-result v39

    .line 799
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    const/4 v4, 0x1

    return v4

    .line 805
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_48
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 809
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 810
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I

    move-result v39

    .line 811
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    const/4 v4, 0x1

    return v4

    .line 817
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_49
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 820
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v50

    .line 821
    .local v50, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 823
    const/4 v4, 0x1

    return v4

    .line 827
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_4a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 830
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    const/4 v4, 0x1

    return v4

    .line 836
    .end local v5    # "_arg0":I
    :sswitch_4b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultSim()I

    move-result v39

    .line 838
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    const/4 v4, 0x1

    return v4

    .line 844
    .end local v39    # "_result":I
    :sswitch_4c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 848
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 849
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v44

    .line 850
    .local v44, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    if-eqz v44, :cond_25

    .line 852
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 858
    :goto_25
    const/4 v4, 0x1

    return v4

    .line 856
    :cond_25
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 862
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 866
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 867
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(II)Z

    move-result v54

    .line 868
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    if-eqz v54, :cond_26

    const/4 v4, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    const/4 v4, 0x1

    return v4

    .line 869
    :cond_26
    const/4 v4, 0x0

    goto :goto_26

    .line 874
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v54    # "_result":Z
    :sswitch_4e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 878
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 880
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 882
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 884
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 886
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 888
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 890
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg7":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 891
    invoke-virtual/range {v4 .. v12}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 892
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 894
    const/4 v4, 0x1

    return v4

    .line 898
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 902
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 904
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 906
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 908
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 910
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 912
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .local v20, "_arg6":Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    .line 913
    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 914
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 916
    const/4 v4, 0x1

    return v4

    .line 920
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v20    # "_arg6":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_50
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 924
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 926
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 928
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 930
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 932
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 934
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "_arg6":Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    .line 935
    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object v55

    .line 936
    .local v55, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 938
    const/4 v4, 0x1

    return v4

    .line 942
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v20    # "_arg6":Ljava/lang/String;
    .end local v55    # "_result":[B
    :sswitch_51
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 946
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 947
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 948
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 950
    const/4 v4, 0x1

    return v4

    .line 954
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_52
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 957
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    move-result-object v48

    .line 958
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 960
    const/4 v4, 0x1

    return v4

    .line 964
    .end local v5    # "_arg0":I
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_53
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 968
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 969
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    move-result v54

    .line 970
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    if-eqz v54, :cond_27

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    const/4 v4, 0x1

    return v4

    .line 971
    :cond_27
    const/4 v4, 0x0

    goto :goto_27

    .line 976
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_54
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v27

    .line 979
    .local v27, "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    move-result v54

    .line 980
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    if-eqz v54, :cond_28

    const/4 v4, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/4 v4, 0x1

    return v4

    .line 981
    :cond_28
    const/4 v4, 0x0

    goto :goto_28

    .line 986
    .end local v27    # "_arg0":[B
    .end local v54    # "_result":Z
    :sswitch_55
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 989
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->nvResetConfig(I)Z

    move-result v54

    .line 990
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    if-eqz v54, :cond_29

    const/4 v4, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    const/4 v4, 0x1

    return v4

    .line 991
    :cond_29
    const/4 v4, 0x0

    goto :goto_29

    .line 996
    .end local v5    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_56
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 999
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCalculatedPreferredNetworkType(Ljava/lang/String;)I

    move-result v39

    .line 1000
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    const/4 v4, 0x1

    return v4

    .line 1006
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_57
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1009
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredNetworkType(I)I

    move-result v39

    .line 1010
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    const/4 v4, 0x1

    return v4

    .line 1016
    .end local v5    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_58
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTetherApnRequired()I

    move-result v39

    .line 1018
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    const/4 v4, 0x1

    return v4

    .line 1024
    .end local v39    # "_result":I
    :sswitch_59
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1027
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 1028
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    const/4 v4, 0x1

    return v4

    .line 1033
    .end local v5    # "_arg0":I
    :sswitch_5a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1036
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v47

    .line 1037
    .local v47, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    if-eqz v47, :cond_2a

    .line 1039
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/CellNetworkScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1045
    :goto_2a
    const/4 v4, 0x1

    return v4

    .line 1043
    :cond_2a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 1049
    .end local v5    # "_arg0":I
    .end local v47    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :sswitch_5b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1053
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 1054
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/telephony/OperatorInfo;

    .line 1060
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    const/16 v38, 0x1

    .line 1061
    .restart local v38    # "_arg2":Z
    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v38

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v54

    .line 1062
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    if-eqz v54, :cond_2d

    const/4 v4, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    const/4 v4, 0x1

    return v4

    .line 1057
    .end local v38    # "_arg2":Z
    .end local v54    # "_result":Z
    :cond_2b
    const/16 v30, 0x0

    .local v30, "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    goto :goto_2b

    .line 1060
    .end local v30    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    :cond_2c
    const/16 v38, 0x0

    goto :goto_2c

    .line 1063
    .restart local v38    # "_arg2":Z
    .restart local v54    # "_result":Z
    :cond_2d
    const/4 v4, 0x0

    goto :goto_2d

    .line 1068
    .end local v5    # "_arg0":I
    .end local v38    # "_arg2":Z
    .end local v54    # "_result":Z
    :sswitch_5c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1072
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1073
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredNetworkType(II)Z

    move-result v54

    .line 1074
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    if-eqz v54, :cond_2e

    const/4 v4, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    const/4 v4, 0x1

    return v4

    .line 1075
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2e

    .line 1080
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v54    # "_result":Z
    :sswitch_5d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1084
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    const/16 v33, 0x1

    .line 1085
    .restart local v33    # "_arg1":Z
    :goto_2f
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabled(IZ)V

    .line 1086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    const/4 v4, 0x1

    return v4

    .line 1084
    .end local v33    # "_arg1":Z
    :cond_2f
    const/16 v33, 0x0

    goto :goto_2f

    .line 1091
    .end local v5    # "_arg0":I
    :sswitch_5e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1094
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    move-result v54

    .line 1095
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    if-eqz v54, :cond_30

    const/4 v4, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    const/4 v4, 0x1

    return v4

    .line 1096
    :cond_30
    const/4 v4, 0x0

    goto :goto_30

    .line 1101
    .end local v5    # "_arg0":I
    .end local v54    # "_result":Z
    :sswitch_5f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1105
    .restart local v25    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1106
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v57

    .line 1107
    .local v57, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1109
    const/4 v4, 0x1

    return v4

    .line 1113
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v57    # "_result":[Ljava/lang/String;
    :sswitch_60
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    const/16 v26, 0x1

    .line 1116
    .restart local v26    # "_arg0":Z
    :goto_31
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    .line 1117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    const/4 v4, 0x1

    return v4

    .line 1115
    .end local v26    # "_arg0":Z
    :cond_31
    const/16 v26, 0x0

    goto :goto_31

    .line 1122
    :sswitch_61
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1125
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v48

    .line 1126
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1128
    const/4 v4, 0x1

    return v4

    .line 1132
    .end local v5    # "_arg0":I
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_62
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1135
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v48

    .line 1136
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1138
    const/4 v4, 0x1

    return v4

    .line 1142
    .end local v5    # "_arg0":I
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_63
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1145
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus(I)I

    move-result v39

    .line 1146
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    const/4 v4, 0x1

    return v4

    .line 1152
    .end local v5    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_64
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1155
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v39

    .line 1156
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    const/4 v4, 0x1

    return v4

    .line 1162
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_65
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1165
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v39

    .line 1166
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    const/4 v4, 0x1

    return v4

    .line 1172
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_66
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    .line 1175
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Intent;

    .line 1181
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1182
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v53

    .line 1183
    .local v53, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1185
    const/4 v4, 0x1

    return v4

    .line 1178
    .end local v6    # "_arg1":I
    .end local v53    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_32
    const/16 v21, 0x0

    .local v21, "_arg0":Landroid/content/Intent;
    goto :goto_32

    .line 1189
    .end local v21    # "_arg0":Landroid/content/Intent;
    :sswitch_67
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1193
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1195
    .restart local v31    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1196
    .restart local v37    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v54

    .line 1197
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    if-eqz v54, :cond_33

    const/4 v4, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    const/4 v4, 0x1

    return v4

    .line 1198
    :cond_33
    const/4 v4, 0x0

    goto :goto_33

    .line 1203
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v37    # "_arg2":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_68
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1207
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1208
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1209
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1211
    const/4 v4, 0x1

    return v4

    .line 1215
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_69
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1219
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1220
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1221
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1223
    const/4 v4, 0x1

    return v4

    .line 1227
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_6a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1230
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v57

    .line 1231
    .restart local v57    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1233
    const/4 v4, 0x1

    return v4

    .line 1237
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v57    # "_result":[Ljava/lang/String;
    :sswitch_6b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1241
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1242
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v54

    .line 1243
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    if-eqz v54, :cond_34

    const/4 v4, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    const/4 v4, 0x1

    return v4

    .line 1244
    :cond_34
    const/4 v4, 0x0

    goto :goto_34

    .line 1249
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_6c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1253
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 1255
    .local v15, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 1257
    .local v16, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 1259
    .local v17, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .local v18, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v13, p0

    move v14, v5

    .line 1260
    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v54

    .line 1261
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    if-eqz v54, :cond_35

    const/4 v4, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    const/4 v4, 0x1

    return v4

    .line 1262
    :cond_35
    const/4 v4, 0x0

    goto :goto_35

    .line 1267
    .end local v5    # "_arg0":I
    .end local v15    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v54    # "_result":Z
    :sswitch_6d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v27

    .line 1271
    .restart local v27    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 1272
    .local v35, "_arg1_length":I
    if-gez v35, :cond_36

    .line 1273
    const/16 v34, 0x0

    .line 1278
    :goto_36
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v39

    .line 1279
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1282
    const/4 v4, 0x1

    return v4

    .line 1276
    .end local v39    # "_result":I
    :cond_36
    move/from16 v0, v35

    new-array v0, v0, [B

    move-object/from16 v34, v0

    .local v34, "_arg1":[B
    goto :goto_36

    .line 1286
    .end local v27    # "_arg0":[B
    .end local v34    # "_arg1":[B
    .end local v35    # "_arg1_length":I
    :sswitch_6e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result v54

    .line 1288
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    if-eqz v54, :cond_37

    const/4 v4, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    const/4 v4, 0x1

    return v4

    .line 1289
    :cond_37
    const/4 v4, 0x0

    goto :goto_37

    .line 1294
    .end local v54    # "_result":Z
    :sswitch_6f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    .line 1296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1297
    const/4 v4, 0x1

    return v4

    .line 1301
    :sswitch_70
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    sget-object v4, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Landroid/telephony/RadioAccessFamily;

    .line 1304
    .local v28, "_arg0":[Landroid/telephony/RadioAccessFamily;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)V

    .line 1305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1306
    const/4 v4, 0x1

    return v4

    .line 1310
    .end local v28    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    :sswitch_71
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1314
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1315
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v39

    .line 1316
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1317
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1318
    const/4 v4, 0x1

    return v4

    .line 1322
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_72
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_38

    const/16 v26, 0x1

    .line 1325
    .restart local v26    # "_arg0":Z
    :goto_38
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    const/4 v4, 0x1

    return v4

    .line 1324
    .end local v26    # "_arg0":Z
    :cond_38
    const/16 v26, 0x0

    goto :goto_38

    .line 1331
    :sswitch_73
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1334
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;)Z

    move-result v54

    .line 1335
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    if-eqz v54, :cond_39

    const/4 v4, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    const/4 v4, 0x1

    return v4

    .line 1336
    :cond_39
    const/4 v4, 0x0

    goto :goto_39

    .line 1341
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v54    # "_result":Z
    :sswitch_74
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength()Z

    move-result v54

    .line 1343
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    if-eqz v54, :cond_3a

    const/4 v4, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    const/4 v4, 0x1

    return v4

    .line 1344
    :cond_3a
    const/4 v4, 0x0

    goto :goto_3a

    .line 1349
    .end local v54    # "_result":Z
    :sswitch_75
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone()Z

    move-result v54

    .line 1351
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    if-eqz v54, :cond_3b

    const/4 v4, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1353
    const/4 v4, 0x1

    return v4

    .line 1352
    :cond_3b
    const/4 v4, 0x0

    goto :goto_3b

    .line 1357
    .end local v54    # "_result":Z
    :sswitch_76
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    move-result v54

    .line 1359
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    if-eqz v54, :cond_3c

    const/4 v4, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    const/4 v4, 0x1

    return v4

    .line 1360
    :cond_3c
    const/4 v4, 0x0

    goto :goto_3c

    .line 1365
    .end local v54    # "_result":Z
    :sswitch_77
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    move-result v54

    .line 1367
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    if-eqz v54, :cond_3d

    const/4 v4, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1369
    const/4 v4, 0x1

    return v4

    .line 1368
    :cond_3d
    const/4 v4, 0x0

    goto :goto_3d

    .line 1373
    .end local v54    # "_result":Z
    :sswitch_78
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered()Z

    move-result v54

    .line 1375
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    if-eqz v54, :cond_3e

    const/4 v4, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1377
    const/4 v4, 0x1

    return v4

    .line 1376
    :cond_3e
    const/4 v4, 0x0

    goto :goto_3e

    .line 1381
    .end local v54    # "_result":Z
    :sswitch_79
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1382
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingAvailable()Z

    move-result v54

    .line 1383
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1384
    if-eqz v54, :cond_3f

    const/4 v4, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1385
    const/4 v4, 0x1

    return v4

    .line 1384
    :cond_3f
    const/4 v4, 0x0

    goto :goto_3f

    .line 1389
    .end local v54    # "_result":Z
    :sswitch_7a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVolteAvailable()Z

    move-result v54

    .line 1391
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    if-eqz v54, :cond_40

    const/4 v4, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    const/4 v4, 0x1

    return v4

    .line 1392
    :cond_40
    const/4 v4, 0x0

    goto :goto_40

    .line 1397
    .end local v54    # "_result":Z
    :sswitch_7b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1398
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoTelephonyAvailable()Z

    move-result v54

    .line 1399
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    if-eqz v54, :cond_41

    const/4 v4, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    const/4 v4, 0x1

    return v4

    .line 1400
    :cond_41
    const/4 v4, 0x0

    goto :goto_41

    .line 1405
    .end local v54    # "_result":Z
    :sswitch_7c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1408
    .restart local v25    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1409
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1411
    const/4 v4, 0x1

    return v4

    .line 1415
    .end local v25    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_7d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1419
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1420
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImeiForSlot(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1421
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1422
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1423
    const/4 v4, 0x1

    return v4

    .line 1427
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_7e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1431
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1432
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1433
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1435
    const/4 v4, 0x1

    return v4

    .line 1439
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_7f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    .line 1442
    sget-object v4, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telecom/PhoneAccount;

    .line 1447
    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v39

    .line 1448
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    const/4 v4, 0x1

    return v4

    .line 1445
    .end local v39    # "_result":I
    :cond_42
    const/16 v23, 0x0

    .local v23, "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_42

    .line 1454
    .end local v23    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_80
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1457
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(I)V

    .line 1458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    const/4 v4, 0x1

    return v4

    .line 1463
    .end local v5    # "_arg0":I
    :sswitch_81
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLocaleFromDefaultSim()Ljava/lang/String;

    move-result-object v48

    .line 1465
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1467
    const/4 v4, 0x1

    return v4

    .line 1471
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_82
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_43

    .line 1474
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/ResultReceiver;

    .line 1479
    :goto_43
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 1480
    const/4 v4, 0x1

    return v4

    .line 1477
    :cond_43
    const/16 v22, 0x0

    .local v22, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_43

    .line 1484
    .end local v22    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_83
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1488
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1489
    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateForSubscriber(ILjava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v45

    .line 1490
    .local v45, "_result":Landroid/telephony/ServiceState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    if-eqz v45, :cond_44

    .line 1492
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1493
    const/4 v4, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1498
    :goto_44
    const/4 v4, 0x1

    return v4

    .line 1496
    :cond_44
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    .line 1502
    .end local v5    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v45    # "_result":Landroid/telephony/ServiceState;
    :sswitch_84
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    .line 1505
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telecom/PhoneAccountHandle;

    .line 1510
    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v42

    .line 1511
    .local v42, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    if-eqz v42, :cond_46

    .line 1513
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1514
    const/4 v4, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1519
    :goto_46
    const/4 v4, 0x1

    return v4

    .line 1508
    .end local v42    # "_result":Landroid/net/Uri;
    :cond_45
    const/16 v24, 0x0

    .local v24, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_45

    .line 1517
    .end local v24    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v42    # "_result":Landroid/net/Uri;
    :cond_46
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_46

    .line 1523
    .end local v42    # "_result":Landroid/net/Uri;
    :sswitch_85
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_47

    .line 1526
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telecom/PhoneAccountHandle;

    .line 1531
    :goto_47
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v54

    .line 1532
    .restart local v54    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    if-eqz v54, :cond_48

    const/4 v4, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1534
    const/4 v4, 0x1

    return v4

    .line 1529
    .end local v54    # "_result":Z
    :cond_47
    const/16 v24, 0x0

    .restart local v24    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_47

    .line 1533
    .end local v24    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v54    # "_result":Z
    :cond_48
    const/4 v4, 0x0

    goto :goto_48

    .line 1538
    .end local v54    # "_result":Z
    :sswitch_86
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    move-result-object v53

    .line 1540
    .restart local v53    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1542
    const/4 v4, 0x1

    return v4

    .line 1546
    .end local v53    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_87
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1550
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1551
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v48

    .line 1552
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1554
    const/4 v4, 0x1

    return v4

    .line 1558
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_88
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1561
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getEsn(I)Ljava/lang/String;

    move-result-object v48

    .line 1562
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1563
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1564
    const/4 v4, 0x1

    return v4

    .line 1568
    .end local v5    # "_arg0":I
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_89
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1571
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaPrlVersion(I)Ljava/lang/String;

    move-result-object v48

    .line 1572
    .restart local v48    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1573
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1574
    const/4 v4, 0x1

    return v4

    .line 1578
    .end local v5    # "_arg0":I
    .end local v48    # "_result":Ljava/lang/String;
    :sswitch_8a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1579
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTelephonyHistograms()Ljava/util/List;

    move-result-object v52

    .line 1580
    .local v52, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1582
    const/4 v4, 0x1

    return v4

    .line 1586
    .end local v52    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :sswitch_8b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1590
    .restart local v5    # "_arg0":I
    sget-object v4, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v32

    .line 1591
    .local v32, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setAllowedCarriers(ILjava/util/List;)I

    move-result v39

    .line 1592
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1594
    const/4 v4, 0x1

    return v4

    .line 1598
    .end local v5    # "_arg0":I
    .end local v32    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    .end local v39    # "_result":I
    :sswitch_8c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1601
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedCarriers(I)Ljava/util/List;

    move-result-object v49

    .line 1602
    .local v49, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1603
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1604
    const/4 v4, 0x1

    return v4

    .line 1608
    .end local v5    # "_arg0":I
    .end local v49    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    :sswitch_8d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1612
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_49

    const/16 v33, 0x1

    .line 1613
    .restart local v33    # "_arg1":Z
    :goto_49
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionSetMeteredApnsEnabled(IZ)V

    .line 1614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1615
    const/4 v4, 0x1

    return v4

    .line 1612
    .end local v33    # "_arg1":Z
    :cond_49
    const/16 v33, 0x0

    goto :goto_49

    .line 1619
    .end local v5    # "_arg0":I
    :sswitch_8e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1623
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4a

    const/16 v33, 0x1

    .line 1624
    .restart local v33    # "_arg1":Z
    :goto_4a
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionSetRadioEnabled(IZ)V

    .line 1625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1626
    const/4 v4, 0x1

    return v4

    .line 1623
    .end local v33    # "_arg1":Z
    :cond_4a
    const/16 v33, 0x0

    goto :goto_4a

    .line 1630
    .end local v5    # "_arg0":I
    :sswitch_8f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1631
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVtDataUsage()J

    move-result-wide v40

    .line 1632
    .local v40, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    move-object/from16 v0, p3

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1634
    const/4 v4, 0x1

    return v4

    .line 1638
    .end local v40    # "_result":J
    :sswitch_90
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4b

    const/16 v26, 0x1

    .line 1642
    .local v26, "_arg0":Z
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1643
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setPolicyDataEnabled(ZI)V

    .line 1644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1645
    const/4 v4, 0x1

    return v4

    .line 1640
    .end local v6    # "_arg1":I
    .end local v26    # "_arg0":Z
    :cond_4b
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Z
    goto :goto_4b

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
