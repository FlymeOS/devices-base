.class public Lcom/android/server/wifi/hotspot2/SupplicantBridge;
.super Ljava/lang/Object;
.source "SupplicantBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;,
        Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-wifi-anqp-eap-EAP$AuthInfoIDSwitchesValues:[I = null

.field private static final synthetic -com-android-server-wifi-anqp-eap-EAP$EAPMethodIDSwitchesValues:[I = null

.field private static final IconChunkSize:I = 0x578

.field private static final TestStrings:[Ljava/lang/String;

.field private static final sMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWpsNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallbacks:Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;

.field private final mRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupplicantHook:Lcom/android/server/wifi/WifiNative;


# direct methods
.method private static synthetic -getcom-android-server-wifi-anqp-eap-EAP$AuthInfoIDSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com-android-server-wifi-anqp-eap-EAP$AuthInfoIDSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com-android-server-wifi-anqp-eap-EAP$AuthInfoIDSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->values()[Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->CredentialType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->InnerAuthEAPMethodType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->TunneledEAPMethodCredType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->Undefined:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com-android-server-wifi-anqp-eap-EAP$AuthInfoIDSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-server-wifi-anqp-eap-EAP$EAPMethodIDSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com-android-server-wifi-anqp-eap-EAP$EAPMethodIDSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com-android-server-wifi-anqp-eap-EAP$EAPMethodIDSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->values()[Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_3Com:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1c

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1b

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ActiontecWireless:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1a

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_EKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_FAST:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_GPSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_17

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_HTTPDigest:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_16

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_IKEv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_15

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_14

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA_VALIDATE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_13

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_LEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_12

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_Link:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_11

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MD5:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_10

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MOBAC:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_f

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MSCHAPv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_e

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_OTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_d

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PAX:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_c

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_b

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_POTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_a

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_9

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PWD:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_8

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_RSA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_7

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SAKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_6

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_5

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SPEKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_4

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_3

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_2

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ZLXEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    :goto_1d
    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com-android-server-wifi-anqp-eap-EAP$EAPMethodIDSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1d

    :catch_1
    move-exception v1

    goto :goto_1c

    :catch_2
    move-exception v1

    goto :goto_1b

    :catch_3
    move-exception v1

    goto :goto_1a

    :catch_4
    move-exception v1

    goto :goto_19

    :catch_5
    move-exception v1

    goto :goto_18

    :catch_6
    move-exception v1

    goto :goto_17

    :catch_7
    move-exception v1

    goto :goto_16

    :catch_8
    move-exception v1

    goto :goto_15

    :catch_9
    move-exception v1

    goto :goto_14

    :catch_a
    move-exception v1

    goto :goto_13

    :catch_b
    move-exception v1

    goto/16 :goto_12

    :catch_c
    move-exception v1

    goto/16 :goto_11

    :catch_d
    move-exception v1

    goto/16 :goto_10

    :catch_e
    move-exception v1

    goto/16 :goto_f

    :catch_f
    move-exception v1

    goto/16 :goto_e

    :catch_10
    move-exception v1

    goto/16 :goto_d

    :catch_11
    move-exception v1

    goto/16 :goto_c

    :catch_12
    move-exception v1

    goto/16 :goto_b

    :catch_13
    move-exception v1

    goto/16 :goto_a

    :catch_14
    move-exception v1

    goto/16 :goto_9

    :catch_15
    move-exception v1

    goto/16 :goto_8

    :catch_16
    move-exception v1

    goto/16 :goto_7

    :catch_17
    move-exception v1

    goto/16 :goto_6

    :catch_18
    move-exception v1

    goto/16 :goto_5

    :catch_19
    move-exception v1

    goto/16 :goto_4

    :catch_1a
    move-exception v1

    goto/16 :goto_3

    :catch_1b
    move-exception v1

    goto/16 :goto_2

    :catch_1c
    move-exception v1

    goto/16 :goto_1

    :catch_1d
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x22

    const/16 v4, 0xa

    const/16 v3, 0x9

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    .line 39
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string/jumbo v1, "anqp_venue_name"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string/jumbo v1, "anqp_network_auth_type"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string/jumbo v1, "anqp_roaming_consortium"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string/jumbo v1, "anqp_ip_addr_type_availability"

    .line 43
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string/jumbo v1, "anqp_nai_realm"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string/jumbo v1, "anqp_3gpp"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string/jumbo v1, "anqp_domain_name"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string/jumbo v1, "hs20_operator_friendly_name"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string/jumbo v1, "hs20_wan_metrics"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string/jumbo v1, "hs20_connection_capability"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string/jumbo v1, "hs20_operating_class"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    const-string/jumbo v1, "hs20_osu_providers_list"

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    .line 377
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    new-array v0, v3, [Ljava/lang/String;

    .line 473
    const-string/jumbo v1, "test-ssid"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 474
    const-string/jumbo v1, "test\\nss\\tid"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 475
    const-string/jumbo v1, "test\\x2d\\x5f\\nss\\tid"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 476
    const-string/jumbo v1, "test\\x2d\\x5f\\nss\\tid\\\\"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 477
    const-string/jumbo v1, "test\\x2d\\x5f\\nss\\tid\\n"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 478
    const-string/jumbo v1, "test\\x2d\\x5f\\nss\\tid\\x4a"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 479
    const-string/jumbo v1, "another\\"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 480
    const-string/jumbo v1, "an\\other"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 481
    const-string/jumbo v1, "another\\x2"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 472
    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->TestStrings:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;)V
    .locals 1
    .param p1, "supplicantHook"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "callbacks"    # Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    .line 80
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    .line 81
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mCallbacks:Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;

    .line 79
    return-void
.end method

.method private static buildElement(Ljava/lang/String;)Lcom/android/server/wifi/anqp/ANQPElement;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 332
    const/16 v5, 0x3d

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 333
    .local v4, "separator":I
    if-gez v4, :cond_0

    .line 334
    return-object v7

    .line 337
    :cond_0
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "elementName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 339
    .local v1, "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v1, :cond_1

    .line 340
    return-object v7

    .line 345
    :cond_1
    add-int/lit8 v5, v4, 0x1

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->hexToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 351
    .local v3, "payload":[B
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 352
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    array-length v6, v3

    invoke-static {v5, v1, v6}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildElement(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;I)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v5

    .line 351
    :goto_0
    return-object v5

    .line 347
    .end local v3    # "payload":[B
    :catch_0
    move-exception v2

    .line 348
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const-class v5, Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Failed to parse hex string"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-object v7

    .line 354
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v3    # "payload":[B
    :cond_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 353
    invoke-static {v1, v5}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildHS20Element(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v5

    goto :goto_0
.end method

.method private static buildWPSQueryRequest(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .param p0, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    invoke-static {p1}, Lcom/android/server/wifi/anqp/Constants;->hasBaseANQPElements(Ljava/util/Collection;)Z

    move-result v0

    .line 244
    .local v0, "baseANQPElements":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    .line 246
    const-string/jumbo v6, "ANQP_GET "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    const/4 v3, 0x1

    .line 254
    .local v3, "first":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "elementType$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 255
    .local v1, "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-eqz v3, :cond_1

    .line 256
    const/4 v3, 0x0

    .line 262
    :goto_2
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v4

    .line 263
    .local v4, "id":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 264
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 249
    .end local v1    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .end local v2    # "elementType$iterator":Ljava/util/Iterator;
    .end local v3    # "first":Z
    .end local v4    # "id":Ljava/lang/Integer;
    :cond_0
    const-string/jumbo v6, "HS20_ANQP_GET "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 259
    .restart local v1    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .restart local v2    # "elementType$iterator":Ljava/util/Iterator;
    .restart local v3    # "first":Z
    :cond_1
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 267
    .restart local v4    # "id":Ljava/lang/Integer;
    :cond_2
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getHS20ElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v4

    .line 268
    if-eqz v0, :cond_3

    .line 269
    const-string/jumbo v6, "hs20:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 275
    .end local v1    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .end local v4    # "id":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static escapeSSID(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Ljava/lang/String;
    .locals 2
    .param p0, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isSSID_UTF8()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->escapeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static escapeString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "utf8"    # Z

    .prologue
    const/16 v8, 0x22

    const/4 v7, 0x0

    .line 211
    const/4 v0, 0x1

    .line 212
    .local v0, "asciiOnly":Z
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 213
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 214
    .local v1, "ch":C
    const/16 v6, 0x7f

    if-le v1, v6, :cond_1

    .line 215
    const/4 v0, 0x0

    .line 220
    .end local v1    # "ch":C
    :cond_0
    if-eqz v0, :cond_2

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 212
    .restart local v1    # "ch":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "ch":C
    :cond_2
    if-eqz p1, :cond_3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 226
    .local v4, "octets":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v5, "sb":Ljava/lang/StringBuilder;
    array-length v8, v4

    move v6, v7

    :goto_2
    if-ge v6, v8, :cond_4

    aget-byte v3, v4, v6

    .line 228
    .local v3, "octet":B
    const-string/jumbo v9, "%02x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    and-int/lit16 v11, v3, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 224
    .end local v3    # "octet":B
    .end local v4    # "octets":[B
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_1

    .line 230
    .restart local v4    # "octets":[B
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getWPSNetCommands(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/NetworkDetail;Lcom/android/server/wifi/hotspot2/pps/Credential;)Ljava/util/List;
    .locals 10
    .param p0, "netID"    # Ljava/lang/String;
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p2, "credential"    # Lcom/android/server/wifi/hotspot2/pps/Credential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Lcom/android/server/wifi/hotspot2/pps/Credential;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v2

    .line 284
    .local v2, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    const-string/jumbo v3, "SET_NETWORK %s key_mgmt WPA-EAP"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    const-string/jumbo v3, "SET_NETWORK %s ssid %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->escapeSSID(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    const-string/jumbo v3, "SET_NETWORK %s bssid %s"

    new-array v4, v8, [Ljava/lang/Object;

    .line 287
    aput-object p0, v4, v7

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 286
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const-string/jumbo v3, "SET_NETWORK %s eap %s"

    new-array v4, v8, [Ljava/lang/Object;

    .line 289
    aput-object p0, v4, v7

    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mapEAPMethodName(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 288
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getAuthParam()Lcom/android/server/wifi/anqp/eap/AuthParam;

    move-result-object v0

    .line 292
    .local v0, "authParam":Lcom/android/server/wifi/anqp/eap/AuthParam;
    if-nez v0, :cond_0

    .line 293
    return-object v9

    .line 295
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-getcom-android-server-wifi-anqp-eap-EAP$AuthInfoIDSwitchesValues()[I

    move-result-object v3

    invoke-interface {v0}, Lcom/android/server/wifi/anqp/eap/AuthParam;->getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 306
    return-object v9

    .line 298
    :pswitch_0
    const-string/jumbo v3, "SET_NETWORK %s identity %s"

    new-array v4, v8, [Ljava/lang/Object;

    .line 299
    aput-object p0, v4, v7

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->escapeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 298
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    const-string/jumbo v3, "SET_NETWORK %s password %s"

    new-array v4, v8, [Ljava/lang/Object;

    .line 301
    aput-object p0, v4, v7

    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->escapeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 300
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    const-string/jumbo v3, "SET_NETWORK %s anonymous_identity \"anonymous\""

    new-array v4, v6, [Ljava/lang/Object;

    .line 303
    aput-object p0, v4, v7

    .line 302
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    const-string/jumbo v3, "SET_NETWORK %s priority 0"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    const-string/jumbo v3, "ENABLE_NETWORK %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    const-string/jumbo v3, "SAVE_CONFIG"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    return-object v1

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isAnqpAttribute(Ljava/lang/String;)Z
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 75
    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 76
    .local v0, "split":I
    if-ltz v0, :cond_0

    sget-object v2, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 485
    sget-object v2, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->TestStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 486
    .local v0, "string":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->unescapeSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static mapEAPMethodName(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/String;
    .locals 3
    .param p0, "eapMethodID"    # Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .prologue
    .line 358
    invoke-static {}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-getcom-android-server-wifi-anqp-eap-EAP$EAPMethodIDSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No mapping for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :pswitch_0
    const-string/jumbo v0, "AKA"

    return-object v0

    .line 362
    :pswitch_1
    const-string/jumbo v0, "AKA\'"

    return-object v0

    .line 364
    :pswitch_2
    const-string/jumbo v0, "SIM"

    return-object v0

    .line 366
    :pswitch_3
    const-string/jumbo v0, "TLS"

    return-object v0

    .line 368
    :pswitch_4
    const-string/jumbo v0, "TTLS"

    return-object v0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static parseANQPLines(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 85
    if-nez p0, :cond_0

    .line 86
    return-object v5

    .line 88
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 89
    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "line$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "line":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->buildElement(Ljava/lang/String;)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v0

    .line 92
    .local v0, "element":Lcom/android/server/wifi/anqp/ANQPElement;
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/ANQPElement;->getID()Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v0    # "element":Lcom/android/server/wifi/anqp/ANQPElement;
    :catch_0
    move-exception v4

    .line 97
    .local v4, "pe":Ljava/net/ProtocolException;
    const-class v5, Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse ANQP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "pe":Ljava/net/ProtocolException;
    :cond_2
    return-object v1
.end method

.method private static parseWPSData(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "bssInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 317
    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    if-nez p0, :cond_0

    .line 318
    return-object v1

    .line 320
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 322
    .local v3, "lineReader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 323
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->buildElement(Ljava/lang/String;)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v0

    .line 324
    .local v0, "element":Lcom/android/server/wifi/anqp/ANQPElement;
    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/ANQPElement;->getID()Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 328
    .end local v0    # "element":Lcom/android/server/wifi/anqp/ANQPElement;
    :cond_2
    return-object v1
.end method

.method public static unescapeSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/16 v14, 0x5c

    const/4 v12, 0x0

    .line 387
    new-instance v7, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;

    invoke-direct {v7, p0, v11}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;-><init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)V

    .line 388
    .local v7, "chars":Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    new-array v9, v11, [B

    .line 389
    .local v9, "octets":[B
    const/4 v2, 0x0

    .line 391
    .local v2, "bo":I
    :goto_0
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap1(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 392
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap2(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)C

    move-result v6

    .line 393
    .local v6, "ch":C
    if-ne v6, v14, :cond_0

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap1(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 397
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap2(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)C

    move-result v10

    .line 398
    .local v10, "suffix":C
    sget-object v11, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 399
    .local v8, "mapped":Ljava/lang/Integer;
    if-eqz v8, :cond_1

    .line 400
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bo":I
    .local v3, "bo":I
    invoke-virtual {v8}, Ljava/lang/Integer;->byteValue()B

    move-result v11

    aput-byte v11, v9, v2

    move v2, v3

    .end local v3    # "bo":I
    .restart local v2    # "bo":I
    goto :goto_0

    .line 394
    .end local v8    # "mapped":Ljava/lang/Integer;
    .end local v10    # "suffix":C
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bo":I
    .restart local v3    # "bo":I
    int-to-byte v11, v6

    aput-byte v11, v9, v2

    move v2, v3

    .line 393
    .end local v3    # "bo":I
    .restart local v2    # "bo":I
    goto :goto_0

    .line 402
    .restart local v8    # "mapped":Ljava/lang/Integer;
    .restart local v10    # "suffix":C
    :cond_1
    const/16 v11, 0x78

    if-ne v10, v11, :cond_2

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap0(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 403
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bo":I
    .restart local v3    # "bo":I
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap3(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v9, v2

    move v2, v3

    .end local v3    # "bo":I
    .restart local v2    # "bo":I
    goto :goto_0

    .line 406
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "bo":I
    .restart local v3    # "bo":I
    aput-byte v14, v9, v2

    .line 407
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "bo":I
    .restart local v2    # "bo":I
    int-to-byte v11, v10

    aput-byte v11, v9, v3

    goto :goto_0

    .line 412
    .end local v6    # "ch":C
    .end local v8    # "mapped":Ljava/lang/Integer;
    .end local v10    # "suffix":C
    :cond_3
    const/4 v0, 0x1

    .line 413
    .local v0, "asciiOnly":Z
    array-length v13, v9

    move v11, v12

    :goto_1
    if-ge v11, v13, :cond_4

    aget-byte v1, v9, v11

    .line 414
    .local v1, "b":B
    and-int/lit16 v14, v1, 0x80

    if-eqz v14, :cond_5

    .line 415
    const/4 v0, 0x0

    .line 419
    .end local v1    # "b":B
    :cond_4
    if-eqz v0, :cond_6

    .line 420
    new-instance v11, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v9, v12, v2, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v11

    .line 413
    .restart local v1    # "b":B
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 424
    .end local v1    # "b":B
    :cond_6
    :try_start_0
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v11

    .line 425
    const/4 v13, 0x0

    invoke-static {v9, v13, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 424
    invoke-virtual {v11, v13}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 426
    .local v4, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    return-object v11

    .line 427
    .end local v4    # "cb":Ljava/nio/CharBuffer;
    :catch_0
    move-exception v5

    .line 428
    .local v5, "cce":Ljava/nio/charset/CharacterCodingException;
    new-instance v11, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v11, v9, v12, v2, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v11
.end method


# virtual methods
.method public doIconQuery(JLjava/lang/String;)Z
    .locals 5
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "REQ_HS20_ICON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 126
    invoke-static {p1, p2}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 126
    const-string/jumbo v3, " "

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->doCustomSupplicantCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyANQPDone(Ljava/lang/Long;Z)V
    .locals 11
    .param p1, "bssid"    # Ljava/lang/Long;
    .param p2, "success"    # Z

    .prologue
    const/4 v5, 0x0

    .line 177
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    monitor-enter v6

    .line 178
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/ScanDetail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v4, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    monitor-exit v6

    .line 181
    if-nez v4, :cond_1

    .line 182
    if-nez p2, :cond_0

    .line 183
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mCallbacks:Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;->notifyIconFailed(J)V

    .line 185
    :cond_0
    return-void

    .line 177
    .end local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 188
    .restart local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->scanResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "bssData":Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->parseWPSData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 191
    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%s ANQP response for %012x: %s"

    const/4 v6, 0x3

    new-array v9, v6, [Ljava/lang/Object;

    .line 192
    if-eqz p2, :cond_2

    const-string/jumbo v6, "successful"

    :goto_0
    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object p1, v9, v6

    const/4 v6, 0x2

    aput-object v1, v9, v6

    .line 191
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mCallbacks:Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;

    if-eqz p2, :cond_3

    .end local v1    # "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :goto_1
    invoke-interface {v6, v4, v1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;->notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    :goto_2
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mCallbacks:Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;

    invoke-interface {v6, v4, v5}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;->notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    .line 175
    return-void

    .line 192
    .restart local v1    # "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v6, "failed"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_3
    move-object v1, v5

    .line 193
    goto :goto_1

    .line 199
    .end local v1    # "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :catch_0
    move-exception v3

    .line 200
    .local v3, "rte":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse ANQP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 201
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    .line 200
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 201
    const-string/jumbo v8, ": "

    .line 200
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 195
    .end local v3    # "rte":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 196
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse ANQP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 197
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    .line 196
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 197
    const-string/jumbo v8, ": "

    .line 196
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public retrieveIcon(Lcom/android/server/wifi/hotspot2/IconEvent;)[B
    .locals 14
    .param p1, "iconEvent"    # Lcom/android/server/wifi/hotspot2/IconEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getSize()I

    move-result v8

    new-array v3, v8, [B

    .line 133
    .local v3, "iconData":[B
    const/4 v4, 0x0

    .line 134
    .local v4, "offset":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getSize()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 135
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getSize()I

    move-result v8

    sub-int/2addr v8, v4

    const/16 v9, 0x578

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 137
    .local v7, "size":I
    const-string/jumbo v8, "GET_HS20_ICON %s %s %d %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 138
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getBSSID()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getFileName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 139
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    .line 137
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Issuing \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v8, v0}, Lcom/android/server/wifi/WifiNative;->doCustomSupplicantCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "response":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 143
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "No icon data returned"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v0    # "command":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/String;
    .end local v7    # "size":I
    :catchall_0
    move-exception v8

    .line 167
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Deleting icon for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "DEL_HS20_ICON "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 169
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getBSSID()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v11

    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 169
    const-string/jumbo v11, " "

    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 169
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getFileName()Ljava/lang/String;

    move-result-object v11

    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiNative;->doCustomSupplicantCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "result":Ljava/lang/String;
    throw v8

    .line 147
    .end local v6    # "result":Ljava/lang/String;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/String;
    .restart local v7    # "size":I
    :cond_0
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v5, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 148
    .local v1, "fragment":[B
    array-length v8, v1

    if-nez v8, :cond_1

    .line 149
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Null data for \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v1    # "fragment":[B
    :catch_0
    move-exception v2

    .line 157
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to parse response to \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 158
    const-string/jumbo v10, "\': "

    .line 157
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "fragment":[B
    :cond_1
    :try_start_3
    array-length v8, v1

    add-int/2addr v8, v4

    array-length v9, v3

    if-le v8, v9, :cond_2

    .line 152
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Icon chunk exceeds image size"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 154
    :cond_2
    array-length v8, v1

    const/4 v9, 0x0

    invoke-static {v1, v9, v3, v4, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 155
    array-length v8, v1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v4, v8

    goto/16 :goto_0

    .line 161
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "fragment":[B
    .end local v5    # "response":Ljava/lang/String;
    .end local v7    # "size":I
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getSize()I

    move-result v8

    if-eq v4, v8, :cond_4

    .line 162
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Partial icon data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 163
    const-string/jumbo v10, ", expected "

    .line 162
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 163
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getSize()I

    move-result v10

    .line 162
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Deleting icon for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DEL_HS20_ICON "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 169
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getBSSID()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    move-result-object v10

    .line 168
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 169
    const-string/jumbo v10, " "

    .line 168
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 169
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getFileName()Ljava/lang/String;

    move-result-object v10

    .line 168
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiNative;->doCustomSupplicantCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 172
    .restart local v6    # "result":Ljava/lang/String;
    return-object v3
.end method

.method public startANQP(Lcom/android/server/wifi/ScanDetail;Ljava/util/List;)Z
    .locals 7
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    const/4 v6, 0x0

    .line 104
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->buildWPSQueryRequest(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "anqpGet":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 106
    return v6

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    monitor-enter v3

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 111
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiNative;->doCustomSupplicantCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ANQP initiated on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 114
    const-string/jumbo v4, " ("

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 114
    const-string/jumbo v4, ")"

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v2, 0x1

    return v2

    .line 108
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 118
    .restart local v1    # "result":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ANQP failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 119
    const-string/jumbo v4, ": "

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v6
.end method
