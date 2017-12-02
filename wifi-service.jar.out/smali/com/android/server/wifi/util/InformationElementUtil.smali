.class public Lcom/android/server/wifi/util/InformationElementUtil;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;,
        Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;,
        Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;,
        Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;,
        Lcom/android/server/wifi/util/InformationElementUtil$Interworking;,
        Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;,
        Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;,
        Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;,
        Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;,
        Lcom/android/server/wifi/util/InformationElementUtil$Vsa;,
        Lcom/android/server/wifi/util/InformationElementUtil$WifiMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/4 v6, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 38
    new-array v6, v6, [Landroid/net/wifi/ScanResult$InformationElement;

    return-object v6

    .line 40
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    .local v0, "data":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v5, "infoElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult$InformationElement;>;"
    const/4 v3, 0x0

    .line 44
    .local v3, "found_ssid":Z
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v1, v6, 0xff

    .line 46
    .local v1, "eid":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v2, v6, 0xff

    .line 48
    .local v2, "elementLength":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-gt v2, v6, :cond_1

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    .line 65
    .end local v1    # "eid":I
    .end local v2    # "elementLength":I
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/wifi/ScanResult$InformationElement;

    return-object v6

    .line 55
    .restart local v1    # "eid":I
    .restart local v2    # "elementLength":I
    :cond_2
    if-nez v1, :cond_3

    .line 56
    const/4 v3, 0x1

    .line 59
    :cond_3
    new-instance v4, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v4}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    .line 60
    .local v4, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iput v1, v4, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 61
    new-array v6, v2, [B

    iput-object v6, v4, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 62
    iget-object v6, v4, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
