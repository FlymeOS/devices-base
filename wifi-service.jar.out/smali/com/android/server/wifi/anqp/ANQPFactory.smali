.class public Lcom/android/server/wifi/anqp/ANQPFactory;
.super Ljava/lang/Object;
.source "ANQPFactory.java"


# static fields
.field private static final synthetic -com-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues:[I

.field private static final BaseANQPSet1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final BaseANQPSet2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final HS20ANQPSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final HS20ANQPSetwOSU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->-com-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->-com-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->values()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_19

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_18

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_17

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_16

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_15

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_14

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_13

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_12

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_11

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_10

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_f

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_e

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_d

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_c

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_b

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_a

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_9

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_8

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_7

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_6

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_5

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_4

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_3

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_2

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_0

    :goto_1b
    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->-com-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1b

    :catch_1
    move-exception v1

    goto :goto_1a

    :catch_2
    move-exception v1

    goto :goto_19

    :catch_3
    move-exception v1

    goto :goto_18

    :catch_4
    move-exception v1

    goto :goto_17

    :catch_5
    move-exception v1

    goto :goto_16

    :catch_6
    move-exception v1

    goto :goto_15

    :catch_7
    move-exception v1

    goto :goto_14

    :catch_8
    move-exception v1

    goto :goto_13

    :catch_9
    move-exception v1

    goto :goto_12

    :catch_a
    move-exception v1

    goto :goto_11

    :catch_b
    move-exception v1

    goto/16 :goto_10

    :catch_c
    move-exception v1

    goto/16 :goto_f

    :catch_d
    move-exception v1

    goto/16 :goto_e

    :catch_e
    move-exception v1

    goto/16 :goto_d

    :catch_f
    move-exception v1

    goto/16 :goto_c

    :catch_10
    move-exception v1

    goto/16 :goto_b

    :catch_11
    move-exception v1

    goto/16 :goto_a

    :catch_12
    move-exception v1

    goto/16 :goto_9

    :catch_13
    move-exception v1

    goto/16 :goto_8

    :catch_14
    move-exception v1

    goto/16 :goto_7

    :catch_15
    move-exception v1

    goto/16 :goto_6

    :catch_16
    move-exception v1

    goto/16 :goto_5

    :catch_17
    move-exception v1

    goto/16 :goto_4

    :catch_18
    move-exception v1

    goto/16 :goto_3

    :catch_19
    move-exception v1

    goto/16 :goto_2

    :catch_1a
    move-exception v1

    goto/16 :goto_1

    :catch_1b
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 22
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v3

    .line 23
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v4

    .line 24
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v5

    .line 25
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v6

    .line 26
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v7

    .line 27
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 28
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->BaseANQPSet1:Ljava/util/List;

    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 31
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v3

    .line 32
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v4

    .line 33
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v5

    .line 34
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v6

    .line 35
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v7

    .line 36
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->BaseANQPSet2:Ljava/util/List;

    .line 38
    new-array v0, v6, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 39
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v3

    .line 40
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v4

    .line 41
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v5

    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->HS20ANQPSet:Ljava/util/List;

    .line 43
    new-array v0, v7, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 44
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v3

    .line 45
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v4

    .line 46
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v5

    .line 47
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v6

    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->HS20ANQPSetwOSU:Ljava/util/List;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildElement(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;
    .locals 6
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const v5, 0xffff

    .line 178
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 179
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Runt payload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 181
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int v1, v3, v5

    .line 182
    .local v1, "infoIDNumber":I
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->mapANQPElement(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-result-object v0

    .line 183
    .local v0, "infoID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v0, :cond_1

    .line 184
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad info ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int v2, v3, v5

    .line 188
    .local v2, "length":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 189
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Truncated payload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 190
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 190
    const-string/jumbo v5, " vs "

    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 192
    :cond_2
    invoke-static {p0, v0, v2}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildElement(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;I)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v3

    return-object v3
.end method

.method public static buildElement(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;I)Lcom/android/server/wifi/anqp/ANQPElement;
    .locals 9
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 198
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 199
    .local v2, "elementPayload":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, p2

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 200
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, p2

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 202
    invoke-static {}, Lcom/android/server/wifi/anqp/ANQPFactory;->-getcom-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues()[I

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 252
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown element ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    .end local v2    # "elementPayload":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/net/ProtocolException;
    throw v1

    .line 204
    .end local v1    # "e":Ljava/net/ProtocolException;
    .restart local v2    # "elementPayload":Ljava/nio/ByteBuffer;
    :pswitch_0
    :try_start_1
    new-instance v6, Lcom/android/server/wifi/anqp/CapabilityListElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/CapabilityListElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 206
    :pswitch_1
    new-instance v6, Lcom/android/server/wifi/anqp/VenueNameElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 208
    :pswitch_2
    new-instance v6, Lcom/android/server/wifi/anqp/EmergencyNumberElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/EmergencyNumberElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 210
    :pswitch_3
    new-instance v6, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 212
    :pswitch_4
    new-instance v6, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 214
    :pswitch_5
    new-instance v6, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 216
    :pswitch_6
    new-instance v6, Lcom/android/server/wifi/anqp/NAIRealmElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/NAIRealmElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 218
    :pswitch_7
    new-instance v6, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 220
    :pswitch_8
    new-instance v6, Lcom/android/server/wifi/anqp/GEOLocationElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GEOLocationElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 222
    :pswitch_9
    new-instance v6, Lcom/android/server/wifi/anqp/CivicLocationElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 224
    :pswitch_a
    new-instance v6, Lcom/android/server/wifi/anqp/GenericStringElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GenericStringElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 226
    :pswitch_b
    new-instance v6, Lcom/android/server/wifi/anqp/DomainNameElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/DomainNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 228
    :pswitch_c
    new-instance v6, Lcom/android/server/wifi/anqp/GenericStringElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GenericStringElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 230
    :pswitch_d
    new-instance v6, Lcom/android/server/wifi/anqp/GenericBlobElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 232
    :pswitch_e
    new-instance v6, Lcom/android/server/wifi/anqp/GenericStringElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GenericStringElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 234
    :pswitch_f
    new-instance v6, Lcom/android/server/wifi/anqp/GenericBlobElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v6

    .line 236
    :pswitch_10
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_2

    .line 237
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 238
    .local v4, "oi":I
    const v6, 0x119a6f50

    if-eq v4, v6, :cond_0

    .line 239
    return-object v8

    .line 241
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v5, v6, 0xff

    .line 242
    .local v5, "subType":I
    invoke-static {v5}, Lcom/android/server/wifi/anqp/Constants;->mapHS20Element(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-result-object v3

    .line 243
    .local v3, "hs20ID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v3, :cond_1

    .line 244
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bad HS20 info ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    .end local v2    # "elementPayload":Ljava/nio/ByteBuffer;
    .end local v3    # "hs20ID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .end local v4    # "oi":I
    .end local v5    # "subType":I
    :catch_1
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/net/ProtocolException;

    const-string/jumbo v7, "Unknown parsing error"

    invoke-direct {v6, v7, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "elementPayload":Ljava/nio/ByteBuffer;
    .restart local v3    # "hs20ID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .restart local v4    # "oi":I
    .restart local v5    # "subType":I
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 247
    invoke-static {v3, v2}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildHS20Element(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v6

    return-object v6

    .line 249
    .end local v3    # "hs20ID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .end local v4    # "oi":I
    .end local v5    # "subType":I
    :cond_2
    new-instance v6, Lcom/android/server/wifi/anqp/GenericBlobElement;

    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v6

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_2
        :pswitch_8
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_f
        :pswitch_3
        :pswitch_4
        :pswitch_d
        :pswitch_10
        :pswitch_1
    .end packed-switch
.end method

.method public static buildHS20Element(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;
    .locals 4
    .param p0, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/anqp/ANQPFactory;->-getcom-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 282
    const/4 v2, 0x0

    return-object v2

    .line 268
    :pswitch_0
    new-instance v2, Lcom/android/server/wifi/anqp/HSCapabilityListElement;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/HSCapabilityListElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v2

    .line 270
    :pswitch_1
    new-instance v2, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v2

    .line 272
    :pswitch_2
    new-instance v2, Lcom/android/server/wifi/anqp/HSWanMetricsElement;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v2

    .line 274
    :pswitch_3
    new-instance v2, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v2

    .line 276
    :pswitch_4
    new-instance v2, Lcom/android/server/wifi/anqp/GenericBlobElement;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v2

    .line 278
    :pswitch_5
    new-instance v2, Lcom/android/server/wifi/anqp/RawByteElement;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/RawByteElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    return-object v2

    .line 280
    :pswitch_6
    new-instance v2, Lcom/android/server/wifi/anqp/HSIconFileElement;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/HSIconFileElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 286
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "Unknown parsing error"

    invoke-direct {v2, v3, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 285
    .local v1, "e":Ljava/net/ProtocolException;
    throw v1

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static buildHomeRealmRequest(Ljava/util/List;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .local p0, "realmNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 129
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 130
    const/16 v4, -0x2223

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 132
    .local v0, "lenPos":I
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 134
    const v4, 0x119a6f50

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 135
    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 138
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 139
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "realmName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "realmName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 141
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 142
    .local v1, "octets":[B
    array-length v4, v1

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 145
    .end local v1    # "octets":[B
    .end local v2    # "realmName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x2

    int-to-short v4, v4

    invoke-virtual {p1, v0, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 148
    return-object p1
.end method

.method public static buildIconRequest(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x0

    .line 152
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 153
    const/16 v1, -0x2223

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 155
    .local v0, "lenPos":I
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 157
    const v1, 0x119a6f50

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 158
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 159
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 161
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    int-to-short v1, v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 165
    return-object p1
.end method

.method public static buildQueryList(Lcom/android/server/wifi/hotspot2/NetworkDetail;ZZ)Ljava/util/List;
    .locals 4
    .param p0, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p1, "matchSet"    # Z
    .param p2, "osu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpOICount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Lcom/android/server/wifi/anqp/ANQPFactory;->getBaseANQPSet(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 66
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    move-result-object v2

    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    .line 67
    .local v0, "includeOSU":Z
    :goto_0
    if-eqz p1, :cond_4

    .line 68
    invoke-static {v0}, Lcom/android/server/wifi/anqp/ANQPFactory;->getHS20ANQPSet(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    .end local v0    # "includeOSU":Z
    :cond_2
    :goto_1
    return-object v1

    .line 66
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "includeOSU":Z
    goto :goto_0

    .line 70
    :cond_4
    if-eqz v0, :cond_2

    .line 71
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static buildQueryRequest(Ljava/util/Set;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .local p0, "elements":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    const/4 v7, 0x0

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 83
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 85
    .local v0, "elementIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    const/16 v6, 0x100

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 88
    .local v3, "lenPos":I
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 90
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-static {v6}, Lcom/android/server/wifi/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v2

    .line 92
    .local v2, "id":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 99
    .end local v2    # "id":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x2

    int-to-short v6, v6

    invoke-virtual {p1, v3, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 102
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    const/16 v6, -0x2223

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 105
    .local v5, "vsLenPos":I
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 107
    const v6, 0x119a6f50

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 108
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 113
    .local v1, "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getHS20ElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v2

    .line 114
    .restart local v2    # "id":Ljava/lang/Integer;
    if-nez v2, :cond_2

    .line 115
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unmapped ANQPElementType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 117
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 121
    .end local v1    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .end local v2    # "id":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x2

    int-to-short v6, v6

    .line 120
    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 124
    .end local v5    # "vsLenPos":I
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 125
    return-object p1
.end method

.method public static getBaseANQPSet(Z)Ljava/util/List;
    .locals 1
    .param p0, "includeRC"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->BaseANQPSet1:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->BaseANQPSet2:Ljava/util/List;

    goto :goto_0
.end method

.method public static getHS20ANQPSet(Z)Ljava/util/List;
    .locals 1
    .param p0, "includeOSU"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->HS20ANQPSetwOSU:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->HS20ANQPSet:Ljava/util/List;

    goto :goto_0
.end method

.method public static parsePayload(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 2
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 169
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-static {p0}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildElement(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_0
    return-object v0
.end method
