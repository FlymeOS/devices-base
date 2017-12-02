.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_addVpnAddress:I = 0x44

.field static final TRANSACTION_checkMobileProvisioning:I = 0x31

.field static final TRANSACTION_establishVpn:I = 0x29

.field static final TRANSACTION_factoryReset:I = 0x47

.field static final TRANSACTION_getActiveLinkProperties:I = 0xc

.field static final TRANSACTION_getActiveNetwork:I = 0x1

.field static final TRANSACTION_getActiveNetworkForUid:I = 0x2

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x4

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0x11

.field static final TRANSACTION_getAllNetworkInfo:I = 0x7

.field static final TRANSACTION_getAllNetworkState:I = 0x10

.field static final TRANSACTION_getAllNetworks:I = 0x9

.field static final TRANSACTION_getAllVpnInfo:I = 0x2d

.field static final TRANSACTION_getAlwaysOnVpnPackage:I = 0x30

.field static final TRANSACTION_getCaptivePortalServerUrl:I = 0x4a

.field static final TRANSACTION_getDefaultNetworkCapabilitiesForUser:I = 0xa

.field static final TRANSACTION_getGlobalProxy:I = 0x24

.field static final TRANSACTION_getLastTetherError:I = 0x16

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2c

.field static final TRANSACTION_getLinkProperties:I = 0xe

.field static final TRANSACTION_getLinkPropertiesForType:I = 0xd

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x32

.field static final TRANSACTION_getNetworkCapabilities:I = 0xf

.field static final TRANSACTION_getNetworkForType:I = 0x8

.field static final TRANSACTION_getNetworkInfo:I = 0x5

.field static final TRANSACTION_getNetworkInfoForUid:I = 0x6

.field static final TRANSACTION_getProxyForNetwork:I = 0x26

.field static final TRANSACTION_getRestoreDefaultNetworkDelay:I = 0x43

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x20

.field static final TRANSACTION_getTetherableIfaces:I = 0x1a

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1e

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x1f

.field static final TRANSACTION_getTetheredDhcpRanges:I = 0x1d

.field static final TRANSACTION_getTetheredIfaces:I = 0x1b

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x1c

.field static final TRANSACTION_getVpnConfig:I = 0x2a

.field static final TRANSACTION_isActiveNetworkMetered:I = 0x12

.field static final TRANSACTION_isNetworkSupported:I = 0xb

.field static final TRANSACTION_isTetheringSupported:I = 0x17

.field static final TRANSACTION_listenForNetwork:I = 0x3c

.field static final TRANSACTION_pendingListenForNetwork:I = 0x3d

.field static final TRANSACTION_pendingRequestForNetwork:I = 0x3a

.field static final TRANSACTION_prepareVpn:I = 0x27

.field static final TRANSACTION_registerNetworkAgent:I = 0x38

.field static final TRANSACTION_registerNetworkFactory:I = 0x35

.field static final TRANSACTION_releaseNetworkRequest:I = 0x40

.field static final TRANSACTION_releasePendingNetworkRequest:I = 0x3b

.field static final TRANSACTION_removeVpnAddress:I = 0x45

.field static final TRANSACTION_reportInetCondition:I = 0x22

.field static final TRANSACTION_reportNetworkConnectivity:I = 0x23

.field static final TRANSACTION_requestBandwidthUpdate:I = 0x36

.field static final TRANSACTION_requestLinkProperties:I = 0x3e

.field static final TRANSACTION_requestNetwork:I = 0x39

.field static final TRANSACTION_requestNetworkCapabilities:I = 0x3f

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x13

.field static final TRANSACTION_setAcceptUnvalidated:I = 0x41

.field static final TRANSACTION_setAirplaneMode:I = 0x34

.field static final TRANSACTION_setAlwaysOnVpnPackage:I = 0x2f

.field static final TRANSACTION_setAvoidUnvalidated:I = 0x42

.field static final TRANSACTION_setGlobalProxy:I = 0x25

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x33

.field static final TRANSACTION_setUnderlyingNetworksForVpn:I = 0x46

.field static final TRANSACTION_setUsbTethering:I = 0x21

.field static final TRANSACTION_setVpnPackageAuthorization:I = 0x28

.field static final TRANSACTION_startLegacyVpn:I = 0x2b

.field static final TRANSACTION_startNattKeepalive:I = 0x48

.field static final TRANSACTION_startTethering:I = 0x18

.field static final TRANSACTION_stopKeepalive:I = 0x49

.field static final TRANSACTION_stopTethering:I = 0x19

.field static final TRANSACTION_tether:I = 0x14

.field static final TRANSACTION_unregisterNetworkFactory:I = 0x37

.field static final TRANSACTION_untether:I = 0x15

.field static final TRANSACTION_updateLockdownVpn:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/net/IConnectivityManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IConnectivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 60
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 1099
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 46
    :sswitch_0
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    return v4

    .line 51
    :sswitch_1
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetwork()Landroid/net/Network;

    move-result-object v43

    .line 53
    .local v43, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v43, :cond_0

    .line 55
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v4, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 59
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v43    # "_result":Landroid/net/Network;
    :sswitch_2
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 69
    .local v24, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v36, 0x1

    .line 70
    .local v36, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    move-result-object v43

    .line 71
    .restart local v43    # "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v43, :cond_2

    .line 73
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v4, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    :goto_2
    const/4 v4, 0x1

    return v4

    .line 69
    .end local v36    # "_arg1":Z
    .end local v43    # "_result":Landroid/net/Network;
    :cond_1
    const/16 v36, 0x0

    goto :goto_1

    .line 77
    .restart local v36    # "_arg1":Z
    .restart local v43    # "_result":Landroid/net/Network;
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 83
    .end local v24    # "_arg0":I
    .end local v36    # "_arg1":Z
    .end local v43    # "_result":Landroid/net/Network;
    :sswitch_3
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v45

    .line 85
    .local v45, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v45, :cond_3

    .line 87
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v4, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    :goto_3
    const/4 v4, 0x1

    return v4

    .line 91
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 97
    .end local v45    # "_result":Landroid/net/NetworkInfo;
    :sswitch_4
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 101
    .restart local v24    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v36, 0x1

    .line 102
    .restart local v36    # "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    move-result-object v45

    .line 103
    .restart local v45    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v45, :cond_5

    .line 105
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v4, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    :goto_5
    const/4 v4, 0x1

    return v4

    .line 101
    .end local v36    # "_arg1":Z
    .end local v45    # "_result":Landroid/net/NetworkInfo;
    :cond_4
    const/16 v36, 0x0

    goto :goto_4

    .line 109
    .restart local v36    # "_arg1":Z
    .restart local v45    # "_result":Landroid/net/NetworkInfo;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 115
    .end local v24    # "_arg0":I
    .end local v36    # "_arg1":Z
    .end local v45    # "_result":Landroid/net/NetworkInfo;
    :sswitch_5
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 118
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v45

    .line 119
    .restart local v45    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v45, :cond_6

    .line 121
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v4, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    :goto_6
    const/4 v4, 0x1

    return v4

    .line 125
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 131
    .end local v24    # "_arg0":I
    .end local v45    # "_result":Landroid/net/NetworkInfo;
    :sswitch_6
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 134
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    .line 140
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 142
    .local v18, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v40, 0x1

    .line 143
    .local v40, "_arg2":Z
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v45

    .line 144
    .restart local v45    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v45, :cond_9

    .line 146
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v4, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    :goto_9
    const/4 v4, 0x1

    return v4

    .line 137
    .end local v18    # "_arg1":I
    .end local v40    # "_arg2":Z
    .end local v45    # "_result":Landroid/net/NetworkInfo;
    :cond_7
    const/16 v17, 0x0

    .local v17, "_arg0":Landroid/net/Network;
    goto :goto_7

    .line 142
    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v18    # "_arg1":I
    :cond_8
    const/16 v40, 0x0

    goto :goto_8

    .line 150
    .restart local v40    # "_arg2":Z
    .restart local v45    # "_result":Landroid/net/NetworkInfo;
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 156
    .end local v18    # "_arg1":I
    .end local v40    # "_arg2":Z
    .end local v45    # "_result":Landroid/net/NetworkInfo;
    :sswitch_7
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v56

    .line 158
    .local v56, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 160
    const/4 v4, 0x1

    return v4

    .line 164
    .end local v56    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_8
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 167
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v43

    .line 168
    .restart local v43    # "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v43, :cond_a

    .line 170
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v4, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 176
    :goto_a
    const/4 v4, 0x1

    return v4

    .line 174
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 180
    .end local v24    # "_arg0":I
    .end local v43    # "_result":Landroid/net/Network;
    :sswitch_9
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworks()[Landroid/net/Network;

    move-result-object v54

    .line 182
    .local v54, "_result":[Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 184
    const/4 v4, 0x1

    return v4

    .line 188
    .end local v54    # "_result":[Landroid/net/Network;
    :sswitch_a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 191
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v55

    .line 192
    .local v55, "_result":[Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 194
    const/4 v4, 0x1

    return v4

    .line 198
    .end local v24    # "_arg0":I
    .end local v55    # "_result":[Landroid/net/NetworkCapabilities;
    :sswitch_b
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 201
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v53

    .line 202
    .local v53, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v53, :cond_b

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v4, 0x1

    return v4

    .line 203
    :cond_b
    const/4 v4, 0x0

    goto :goto_b

    .line 208
    .end local v24    # "_arg0":I
    .end local v53    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v42

    .line 210
    .local v42, "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v42, :cond_c

    .line 212
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/4 v4, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 218
    :goto_c
    const/4 v4, 0x1

    return v4

    .line 216
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 222
    .end local v42    # "_result":Landroid/net/LinkProperties;
    :sswitch_d
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 225
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v42

    .line 226
    .restart local v42    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v42, :cond_d

    .line 228
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v4, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 234
    :goto_d
    const/4 v4, 0x1

    return v4

    .line 232
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 238
    .end local v24    # "_arg0":I
    .end local v42    # "_result":Landroid/net/LinkProperties;
    :sswitch_e
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 241
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    .line 246
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v42

    .line 247
    .restart local v42    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v42, :cond_f

    .line 249
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v4, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 255
    :goto_f
    const/4 v4, 0x1

    return v4

    .line 244
    .end local v42    # "_result":Landroid/net/LinkProperties;
    :cond_e
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_e

    .line 253
    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v42    # "_result":Landroid/net/LinkProperties;
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 259
    .end local v42    # "_result":Landroid/net/LinkProperties;
    :sswitch_f
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 262
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    .line 267
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v44

    .line 268
    .local v44, "_result":Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v44, :cond_11

    .line 270
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    .line 276
    :goto_11
    const/4 v4, 0x1

    return v4

    .line 265
    .end local v44    # "_result":Landroid/net/NetworkCapabilities;
    :cond_10
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_10

    .line 274
    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v44    # "_result":Landroid/net/NetworkCapabilities;
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 280
    .end local v44    # "_result":Landroid/net/NetworkCapabilities;
    :sswitch_10
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v57

    .line 282
    .local v57, "_result":[Landroid/net/NetworkState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 284
    const/4 v4, 0x1

    return v4

    .line 288
    .end local v57    # "_result":[Landroid/net/NetworkState;
    :sswitch_11
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v46

    .line 290
    .local v46, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v46, :cond_12

    .line 292
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v4, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 298
    :goto_12
    const/4 v4, 0x1

    return v4

    .line 296
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 302
    .end local v46    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_12
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v53

    .line 304
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v53, :cond_13

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v4, 0x1

    return v4

    .line 305
    :cond_13
    const/4 v4, 0x0

    goto :goto_13

    .line 310
    .end local v53    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 314
    .restart local v24    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v37

    .line 315
    .local v37, "_arg1":[B
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    move-result v53

    .line 316
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    if-eqz v53, :cond_14

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v4, 0x1

    return v4

    .line 317
    :cond_14
    const/4 v4, 0x0

    goto :goto_14

    .line 322
    .end local v24    # "_arg0":I
    .end local v37    # "_arg1":[B
    .end local v53    # "_result":Z
    :sswitch_14
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 325
    .local v30, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v41

    .line 326
    .local v41, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v4, 0x1

    return v4

    .line 332
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_15
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 335
    .restart local v30    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v41

    .line 336
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    const/4 v4, 0x1

    return v4

    .line 342
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_16
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 345
    .restart local v30    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v41

    .line 346
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v4, 0x1

    return v4

    .line 352
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_17
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v53

    .line 354
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    if-eqz v53, :cond_15

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v4, 0x1

    return v4

    .line 355
    :cond_15
    const/4 v4, 0x0

    goto :goto_15

    .line 360
    .end local v53    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 364
    .restart local v24    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 365
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/ResultReceiver;

    .line 371
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    const/16 v40, 0x1

    .line 372
    .restart local v40    # "_arg2":Z
    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v34

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->startTethering(ILandroid/os/ResultReceiver;Z)V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    const/4 v4, 0x1

    return v4

    .line 368
    .end local v40    # "_arg2":Z
    :cond_16
    const/16 v34, 0x0

    .local v34, "_arg1":Landroid/os/ResultReceiver;
    goto :goto_16

    .line 371
    .end local v34    # "_arg1":Landroid/os/ResultReceiver;
    :cond_17
    const/16 v40, 0x0

    goto :goto_17

    .line 378
    .end local v24    # "_arg0":I
    :sswitch_19
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 381
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopTethering(I)V

    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    const/4 v4, 0x1

    return v4

    .line 387
    .end local v24    # "_arg0":I
    :sswitch_1a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v59

    .line 389
    .local v59, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 391
    const/4 v4, 0x1

    return v4

    .line 395
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v59

    .line 397
    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 399
    const/4 v4, 0x1

    return v4

    .line 403
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v59

    .line 405
    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 407
    const/4 v4, 0x1

    return v4

    .line 411
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v59

    .line 413
    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 415
    const/4 v4, 0x1

    return v4

    .line 419
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v59

    .line 421
    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 423
    const/4 v4, 0x1

    return v4

    .line 427
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v59

    .line 429
    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 431
    const/4 v4, 0x1

    return v4

    .line 435
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v59

    .line 437
    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 439
    const/4 v4, 0x1

    return v4

    .line 443
    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    const/16 v31, 0x1

    .line 446
    .local v31, "_arg0":Z
    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v41

    .line 447
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    const/4 v4, 0x1

    return v4

    .line 445
    .end local v31    # "_arg0":Z
    .end local v41    # "_result":I
    :cond_18
    const/16 v31, 0x0

    goto :goto_18

    .line 453
    :sswitch_22
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 457
    .restart local v24    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 458
    .restart local v18    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    const/4 v4, 0x1

    return v4

    .line 464
    .end local v18    # "_arg1":I
    .end local v24    # "_arg0":I
    :sswitch_23
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 467
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    .line 473
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v36, 0x1

    .line 474
    .restart local v36    # "_arg1":Z
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    const/4 v4, 0x1

    return v4

    .line 470
    .end local v36    # "_arg1":Z
    :cond_19
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_19

    .line 473
    .end local v17    # "_arg0":Landroid/net/Network;
    :cond_1a
    const/16 v36, 0x0

    goto :goto_1a

    .line 480
    :sswitch_24
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v48

    .line 482
    .local v48, "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    if-eqz v48, :cond_1b

    .line 484
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    const/4 v4, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 490
    :goto_1b
    const/4 v4, 0x1

    return v4

    .line 488
    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 494
    .end local v48    # "_result":Landroid/net/ProxyInfo;
    :sswitch_25
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 497
    sget-object v4, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/ProxyInfo;

    .line 502
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    const/4 v4, 0x1

    return v4

    .line 500
    :cond_1c
    const/16 v27, 0x0

    .local v27, "_arg0":Landroid/net/ProxyInfo;
    goto :goto_1c

    .line 508
    .end local v27    # "_arg0":Landroid/net/ProxyInfo;
    :sswitch_26
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 511
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    .line 516
    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v48

    .line 517
    .restart local v48    # "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    if-eqz v48, :cond_1e

    .line 519
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    const/4 v4, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 525
    :goto_1e
    const/4 v4, 0x1

    return v4

    .line 514
    .end local v48    # "_result":Landroid/net/ProxyInfo;
    :cond_1d
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_1d

    .line 523
    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v48    # "_result":Landroid/net/ProxyInfo;
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 529
    .end local v48    # "_result":Landroid/net/ProxyInfo;
    :sswitch_27
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 533
    .restart local v30    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 535
    .local v35, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 536
    .local v14, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v14}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v53

    .line 537
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    if-eqz v53, :cond_1f

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    const/4 v4, 0x1

    return v4

    .line 538
    :cond_1f
    const/4 v4, 0x0

    goto :goto_1f

    .line 543
    .end local v14    # "_arg2":I
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v35    # "_arg1":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_28
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 547
    .restart local v30    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 549
    .restart local v18    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    const/16 v40, 0x1

    .line 550
    .restart local v40    # "_arg2":Z
    :goto_20
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    const/4 v4, 0x1

    return v4

    .line 549
    .end local v40    # "_arg2":Z
    :cond_20
    const/16 v40, 0x0

    goto :goto_20

    .line 556
    .end local v18    # "_arg1":I
    .end local v30    # "_arg0":Ljava/lang/String;
    :sswitch_29
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    .line 559
    sget-object v4, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/net/VpnConfig;

    .line 564
    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v49

    .line 565
    .local v49, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    if-eqz v49, :cond_22

    .line 567
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    const/4 v4, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 573
    :goto_22
    const/4 v4, 0x1

    return v4

    .line 562
    .end local v49    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_21
    const/16 v28, 0x0

    .local v28, "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_21

    .line 571
    .end local v28    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .restart local v49    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 577
    .end local v49    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 580
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v51

    .line 581
    .local v51, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    if-eqz v51, :cond_23

    .line 583
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    const/4 v4, 0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 589
    :goto_23
    const/4 v4, 0x1

    return v4

    .line 587
    :cond_23
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 593
    .end local v24    # "_arg0":I
    .end local v51    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_2b
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    .line 596
    sget-object v4, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/net/VpnProfile;

    .line 601
    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    const/4 v4, 0x1

    return v4

    .line 599
    :cond_24
    const/16 v29, 0x0

    .local v29, "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_24

    .line 607
    .end local v29    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_2c
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 610
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v50

    .line 611
    .local v50, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    if-eqz v50, :cond_25

    .line 613
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    const/4 v4, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 619
    :goto_25
    const/4 v4, 0x1

    return v4

    .line 617
    :cond_25
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 623
    .end local v24    # "_arg0":I
    .end local v50    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_2d
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v58

    .line 625
    .local v58, "_result":[Lcom/android/internal/net/VpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 627
    const/4 v4, 0x1

    return v4

    .line 631
    .end local v58    # "_result":[Lcom/android/internal/net/VpnInfo;
    :sswitch_2e
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v53

    .line 633
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    if-eqz v53, :cond_26

    const/4 v4, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    const/4 v4, 0x1

    return v4

    .line 634
    :cond_26
    const/4 v4, 0x0

    goto :goto_26

    .line 639
    .end local v53    # "_result":Z
    :sswitch_2f
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 643
    .restart local v24    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 645
    .restart local v35    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    const/16 v40, 0x1

    .line 646
    .restart local v40    # "_arg2":Z
    :goto_27
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v35

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z

    move-result v53

    .line 647
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    if-eqz v53, :cond_28

    const/4 v4, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    const/4 v4, 0x1

    return v4

    .line 645
    .end local v40    # "_arg2":Z
    .end local v53    # "_result":Z
    :cond_27
    const/16 v40, 0x0

    goto :goto_27

    .line 648
    .restart local v40    # "_arg2":Z
    .restart local v53    # "_result":Z
    :cond_28
    const/4 v4, 0x0

    goto :goto_28

    .line 653
    .end local v24    # "_arg0":I
    .end local v35    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg2":Z
    .end local v53    # "_result":Z
    :sswitch_30
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 656
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v52

    .line 657
    .local v52, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 659
    const/4 v4, 0x1

    return v4

    .line 663
    .end local v24    # "_arg0":I
    .end local v52    # "_result":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 666
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v41

    .line 667
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    const/4 v4, 0x1

    return v4

    .line 673
    .end local v24    # "_arg0":I
    .end local v41    # "_result":I
    :sswitch_32
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v52

    .line 675
    .restart local v52    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 677
    const/4 v4, 0x1

    return v4

    .line 681
    .end local v52    # "_result":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    const/16 v31, 0x1

    .line 685
    .local v31, "_arg0":Z
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 687
    .restart local v18    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 688
    .local v39, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    const/4 v4, 0x1

    return v4

    .line 683
    .end local v18    # "_arg1":I
    .end local v31    # "_arg0":Z
    .end local v39    # "_arg2":Ljava/lang/String;
    :cond_29
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Z
    goto :goto_29

    .line 694
    .end local v31    # "_arg0":Z
    :sswitch_34
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    const/16 v31, 0x1

    .line 697
    .local v31, "_arg0":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    .line 698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    const/4 v4, 0x1

    return v4

    .line 696
    .end local v31    # "_arg0":Z
    :cond_2a
    const/16 v31, 0x0

    goto :goto_2a

    .line 703
    :sswitch_35
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 706
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    .line 712
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 713
    .restart local v35    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v5, v1}, Landroid/net/IConnectivityManager$Stub;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    const/4 v4, 0x1

    return v4

    .line 709
    .end local v35    # "_arg1":Ljava/lang/String;
    :cond_2b
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/os/Messenger;
    goto :goto_2b

    .line 719
    .end local v5    # "_arg0":Landroid/os/Messenger;
    :sswitch_36
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 722
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    .line 727
    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestBandwidthUpdate(Landroid/net/Network;)Z

    move-result v53

    .line 728
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    if-eqz v53, :cond_2d

    const/4 v4, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    const/4 v4, 0x1

    return v4

    .line 725
    .end local v53    # "_result":Z
    :cond_2c
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_2c

    .line 729
    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v53    # "_result":Z
    :cond_2d
    const/4 v4, 0x0

    goto :goto_2d

    .line 734
    .end local v53    # "_result":Z
    :sswitch_37
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e

    .line 737
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    .line 742
    :goto_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/IConnectivityManager$Stub;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 743
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    const/4 v4, 0x1

    return v4

    .line 740
    :cond_2e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/Messenger;
    goto :goto_2e

    .line 748
    .end local v5    # "_arg0":Landroid/os/Messenger;
    :sswitch_38
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    .line 751
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    .line 757
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    .line 758
    sget-object v4, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 764
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    .line 765
    sget-object v4, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    .line 771
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    .line 772
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkCapabilities;

    .line 778
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 780
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    .line 781
    sget-object v4, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkMisc;

    :goto_33
    move-object/from16 v4, p0

    .line 786
    invoke-virtual/range {v4 .. v10}, Landroid/net/IConnectivityManager$Stub;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    move-result v41

    .line 787
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    const/4 v4, 0x1

    return v4

    .line 754
    .end local v9    # "_arg4":I
    .end local v41    # "_result":I
    :cond_2f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/Messenger;
    goto :goto_2f

    .line 761
    .end local v5    # "_arg0":Landroid/os/Messenger;
    :cond_30
    const/4 v6, 0x0

    .local v6, "_arg1":Landroid/net/NetworkInfo;
    goto :goto_30

    .line 768
    .end local v6    # "_arg1":Landroid/net/NetworkInfo;
    :cond_31
    const/4 v7, 0x0

    .local v7, "_arg2":Landroid/net/LinkProperties;
    goto :goto_31

    .line 775
    .end local v7    # "_arg2":Landroid/net/LinkProperties;
    :cond_32
    const/4 v8, 0x0

    .local v8, "_arg3":Landroid/net/NetworkCapabilities;
    goto :goto_32

    .line 784
    .end local v8    # "_arg3":Landroid/net/NetworkCapabilities;
    .restart local v9    # "_arg4":I
    :cond_33
    const/4 v10, 0x0

    .local v10, "_arg5":Landroid/net/NetworkMisc;
    goto :goto_33

    .line 793
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/net/NetworkMisc;
    :sswitch_39
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    .line 796
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkCapabilities;

    .line 802
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    .line 803
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Messenger;

    .line 809
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 811
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 813
    .local v15, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v11, p0

    move/from16 v16, v9

    .line 814
    invoke-virtual/range {v11 .. v16}, Landroid/net/IConnectivityManager$Stub;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v47

    .line 815
    .local v47, "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    if-eqz v47, :cond_36

    .line 817
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 823
    :goto_36
    const/4 v4, 0x1

    return v4

    .line 799
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/IBinder;
    .end local v47    # "_result":Landroid/net/NetworkRequest;
    :cond_34
    const/4 v12, 0x0

    .local v12, "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_34

    .line 806
    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_35
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/os/Messenger;
    goto :goto_35

    .line 821
    .end local v13    # "_arg1":Landroid/os/Messenger;
    .restart local v9    # "_arg4":I
    .restart local v14    # "_arg2":I
    .restart local v15    # "_arg3":Landroid/os/IBinder;
    .restart local v47    # "_result":Landroid/net/NetworkRequest;
    :cond_36
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .line 827
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/IBinder;
    .end local v47    # "_result":Landroid/net/NetworkRequest;
    :sswitch_3a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    .line 830
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkCapabilities;

    .line 836
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_38

    .line 837
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/PendingIntent;

    .line 842
    :goto_38
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v12, v1}, Landroid/net/IConnectivityManager$Stub;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;

    move-result-object v47

    .line 843
    .restart local v47    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    if-eqz v47, :cond_39

    .line 845
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 851
    :goto_39
    const/4 v4, 0x1

    return v4

    .line 833
    .end local v47    # "_result":Landroid/net/NetworkRequest;
    :cond_37
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_37

    .line 840
    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_38
    const/16 v33, 0x0

    .local v33, "_arg1":Landroid/app/PendingIntent;
    goto :goto_38

    .line 849
    .end local v33    # "_arg1":Landroid/app/PendingIntent;
    .restart local v47    # "_result":Landroid/net/NetworkRequest;
    :cond_39
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_39

    .line 855
    .end local v47    # "_result":Landroid/net/NetworkRequest;
    :sswitch_3b
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 858
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/PendingIntent;

    .line 863
    :goto_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    const/4 v4, 0x1

    return v4

    .line 861
    :cond_3a
    const/16 v25, 0x0

    .local v25, "_arg0":Landroid/app/PendingIntent;
    goto :goto_3a

    .line 869
    .end local v25    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_3c
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    .line 872
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkCapabilities;

    .line 878
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 879
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Messenger;

    .line 885
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v38

    .line 886
    .local v38, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v12, v13, v1}, Landroid/net/IConnectivityManager$Stub;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v47

    .line 887
    .restart local v47    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    if-eqz v47, :cond_3d

    .line 889
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 895
    :goto_3d
    const/4 v4, 0x1

    return v4

    .line 875
    .end local v38    # "_arg2":Landroid/os/IBinder;
    .end local v47    # "_result":Landroid/net/NetworkRequest;
    :cond_3b
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_3b

    .line 882
    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_3c
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/os/Messenger;
    goto :goto_3c

    .line 893
    .end local v13    # "_arg1":Landroid/os/Messenger;
    .restart local v38    # "_arg2":Landroid/os/IBinder;
    .restart local v47    # "_result":Landroid/net/NetworkRequest;
    :cond_3d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3d

    .line 899
    .end local v38    # "_arg2":Landroid/os/IBinder;
    .end local v47    # "_result":Landroid/net/NetworkRequest;
    :sswitch_3d
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 902
    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkCapabilities;

    .line 908
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    .line 909
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/PendingIntent;

    .line 914
    :goto_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v12, v1}, Landroid/net/IConnectivityManager$Stub;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V

    .line 915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    const/4 v4, 0x1

    return v4

    .line 905
    :cond_3e
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_3e

    .line 912
    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_3f
    const/16 v33, 0x0

    .restart local v33    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_3f

    .line 920
    .end local v33    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_3e
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    .line 923
    sget-object v4, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/NetworkRequest;

    .line 928
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestLinkProperties(Landroid/net/NetworkRequest;)V

    .line 929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    const/4 v4, 0x1

    return v4

    .line 926
    :cond_40
    const/16 v26, 0x0

    .local v26, "_arg0":Landroid/net/NetworkRequest;
    goto :goto_40

    .line 934
    .end local v26    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_3f
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    .line 937
    sget-object v4, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/NetworkRequest;

    .line 942
    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestNetworkCapabilities(Landroid/net/NetworkRequest;)V

    .line 943
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    const/4 v4, 0x1

    return v4

    .line 940
    :cond_41
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Landroid/net/NetworkRequest;
    goto :goto_41

    .line 948
    .end local v26    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_40
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    .line 951
    sget-object v4, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/NetworkRequest;

    .line 956
    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 957
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    const/4 v4, 0x1

    return v4

    .line 954
    :cond_42
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Landroid/net/NetworkRequest;
    goto :goto_42

    .line 962
    .end local v26    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_41
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_43

    .line 965
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    .line 971
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44

    const/16 v36, 0x1

    .line 973
    .local v36, "_arg1":Z
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    const/16 v40, 0x1

    .line 974
    .restart local v40    # "_arg2":Z
    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v36

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    const/4 v4, 0x1

    return v4

    .line 968
    .end local v36    # "_arg1":Z
    .end local v40    # "_arg2":Z
    :cond_43
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_43

    .line 971
    .end local v17    # "_arg0":Landroid/net/Network;
    :cond_44
    const/16 v36, 0x0

    .restart local v36    # "_arg1":Z
    goto :goto_44

    .line 973
    :cond_45
    const/16 v40, 0x0

    goto :goto_45

    .line 980
    .end local v36    # "_arg1":Z
    :sswitch_42
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_46

    .line 983
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    .line 988
    :goto_46
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setAvoidUnvalidated(Landroid/net/Network;)V

    .line 989
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    const/4 v4, 0x1

    return v4

    .line 986
    :cond_46
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_46

    .line 994
    .end local v17    # "_arg0":Landroid/net/Network;
    :sswitch_43
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 997
    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getRestoreDefaultNetworkDelay(I)I

    move-result v41

    .line 998
    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    const/4 v4, 0x1

    return v4

    .line 1004
    .end local v24    # "_arg0":I
    .end local v41    # "_result":I
    :sswitch_44
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1008
    .restart local v30    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1009
    .restart local v18    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v53

    .line 1010
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    if-eqz v53, :cond_47

    const/4 v4, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    const/4 v4, 0x1

    return v4

    .line 1011
    :cond_47
    const/4 v4, 0x0

    goto :goto_47

    .line 1016
    .end local v18    # "_arg1":I
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_45
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1020
    .restart local v30    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1021
    .restart local v18    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v53

    .line 1022
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    if-eqz v53, :cond_48

    const/4 v4, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    const/4 v4, 0x1

    return v4

    .line 1023
    :cond_48
    const/4 v4, 0x0

    goto :goto_48

    .line 1028
    .end local v18    # "_arg1":I
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_46
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/net/Network;

    .line 1031
    .local v32, "_arg0":[Landroid/net/Network;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v53

    .line 1032
    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    if-eqz v53, :cond_49

    const/4 v4, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    const/4 v4, 0x1

    return v4

    .line 1033
    :cond_49
    const/4 v4, 0x0

    goto :goto_49

    .line 1038
    .end local v32    # "_arg0":[Landroid/net/Network;
    .end local v53    # "_result":Z
    :sswitch_47
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1039
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->factoryReset()V

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    const/4 v4, 0x1

    return v4

    .line 1045
    :sswitch_48
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4a

    .line 1048
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    .line 1054
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1056
    .restart local v18    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4b

    .line 1057
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/Messenger;

    .line 1063
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 1065
    .restart local v15    # "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1067
    .local v21, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1069
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .local v23, "_arg6":Ljava/lang/String;
    move-object/from16 v16, p0

    move-object/from16 v20, v15

    .line 1070
    invoke-virtual/range {v16 .. v23}, Landroid/net/IConnectivityManager$Stub;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    const/4 v4, 0x1

    return v4

    .line 1051
    .end local v15    # "_arg3":Landroid/os/IBinder;
    .end local v18    # "_arg1":I
    .end local v21    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":Ljava/lang/String;
    :cond_4a
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_4a

    .line 1060
    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v18    # "_arg1":I
    :cond_4b
    const/16 v19, 0x0

    .local v19, "_arg2":Landroid/os/Messenger;
    goto :goto_4b

    .line 1076
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":Landroid/os/Messenger;
    :sswitch_49
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4c

    .line 1079
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    .line 1085
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1086
    .restart local v18    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopKeepalive(Landroid/net/Network;I)V

    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    const/4 v4, 0x1

    return v4

    .line 1082
    .end local v18    # "_arg1":I
    :cond_4c
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_4c

    .line 1092
    .end local v17    # "_arg0":Landroid/net/Network;
    :sswitch_4a
    const-string/jumbo v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getCaptivePortalServerUrl()Ljava/lang/String;

    move-result-object v52

    .line 1094
    .restart local v52    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1096
    const/4 v4, 0x1

    return v4

    .line 42
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
