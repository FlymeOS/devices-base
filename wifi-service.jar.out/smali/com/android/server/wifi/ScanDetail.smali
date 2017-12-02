.class public Lcom/android/server/wifi/ScanDetail;
.super Ljava/lang/Object;
.source "ScanDetail.java"


# instance fields
.field private final mMatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

.field private final mScanResult:Landroid/net/wifi/ScanResult;

.field private mSeen:J


# direct methods
.method public constructor <init>(Landroid/net/wifi/ScanResult;Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p3, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 83
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 84
    iput-object p2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 85
    iput-object p3, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    .line 86
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .locals 14
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "seen"    # J

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 70
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 71
    new-instance v2, Landroid/net/wifi/ScanResult;

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-wide/from16 v12, p6

    invoke-direct/range {v2 .. v13}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V

    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 72
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 74
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 75
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 76
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 77
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Landroid/net/wifi/ScanResult;->flags:J

    .line 78
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ[Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/List;)V
    .locals 15
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "bssid"    # Ljava/lang/String;
    .param p4, "caps"    # Ljava/lang/String;
    .param p5, "level"    # I
    .param p6, "frequency"    # I
    .param p7, "tsf"    # J
    .param p9, "informationElements"    # [Landroid/net/wifi/ScanResult$InformationElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Landroid/net/wifi/WifiSsid;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJ[",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p10, "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 48
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 49
    new-instance v2, Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHESSID()J

    move-result-wide v5

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getOsuProviders()[B

    move-result-object v8

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p7

    .line 49
    invoke-direct/range {v2 .. v13}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V

    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 54
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelWidth()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 55
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq0()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 56
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq1()I

    move-result v3

    iput v3, v2, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 57
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v0, p9

    iput-object v0, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 58
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v0, p10

    iput-object v0, v2, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->is80211McResponderSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    .line 62
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInterworking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    .line 65
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/ScanDetail;->mMatches:Ljava/util/Map;

    .line 47
    return-void
.end method


# virtual methods
.method public getBSSIDString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScanResult()Landroid/net/wifi/ScanResult;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public getSeen()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    return-wide v0
.end method

.method public propagateANQPInfo(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v8, 0x0

    .line 128
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->complete(Ljava/util/Map;)Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 133
    sget-object v3, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 132
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;

    .line 135
    .local v0, "fne":Lcom/android/server/wifi/anqp/HSFriendlyNameElement;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    :cond_1
    sget-object v3, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 139
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/anqp/VenueNameElement;

    .line 141
    .local v2, "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/VenueNameElement;->getNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 146
    .end local v2    # "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    :cond_2
    :goto_0
    sget-object v3, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 145
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/anqp/RawByteElement;

    .line 147
    .local v1, "osuProviders":Lcom/android/server/wifi/anqp/RawByteElement;
    if-eqz v1, :cond_3

    .line 148
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/wifi/AnqpInformationElement;

    iput-object v4, v3, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 149
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 150
    new-instance v4, Landroid/net/wifi/AnqpInformationElement;

    .line 151
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/RawByteElement;->getPayload()[B

    move-result-object v5

    .line 150
    const v6, 0x506f9a

    .line 151
    const/16 v7, 0x8

    .line 150
    invoke-direct {v4, v6, v7, v5}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    .line 149
    aput-object v4, v3, v8

    .line 127
    :cond_3
    return-void

    .line 136
    .end local v1    # "osuProviders":Lcom/android/server/wifi/anqp/RawByteElement;
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;->getNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/anqp/I18Name;

    invoke-virtual {v3}, Lcom/android/server/wifi/anqp/I18Name;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 142
    .restart local v2    # "vne":Lcom/android/server/wifi/anqp/VenueNameElement;
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/VenueNameElement;->getNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/anqp/I18Name;

    invoke-virtual {v3}, Lcom/android/server/wifi/anqp/I18Name;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setSeen()J
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 197
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-wide v2, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    iput-wide v2, v0, Landroid/net/wifi/ScanResult;->seen:J

    .line 198
    iget-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    return-wide v0
.end method

.method public toKeyString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mNetworkDetail:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 176
    .local v0, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toKeyString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 179
    :cond_0
    const-string/jumbo v1, "\'%s\':%012x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 180
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 181
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 179
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 204
    :try_start_0
    const-string/jumbo v1, "\'%s\'/%012x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 205
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 206
    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 204
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "\'%s\'/----"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateResults(Lcom/android/server/wifi/hotspot2/NetworkDetail;ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 5
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p2, "level"    # I
    .param p3, "wssid"    # Landroid/net/wifi/WifiSsid;
    .param p4, "ssid"    # Ljava/lang/String;
    .param p5, "flags"    # Ljava/lang/String;
    .param p6, "freq"    # I
    .param p7, "tsf"    # J

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput p2, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 103
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput-object p3, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput-object p4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput-object p5, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput p6, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    iput-wide p7, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/ScanDetail;->mSeen:J

    .line 111
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getChannelWidth()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq0()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getCenterfreq1()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 114
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->is80211McResponderSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isInterworking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetail;->mScanResult:Landroid/net/wifi/ScanResult;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    .line 101
    :cond_1
    return-void
.end method
