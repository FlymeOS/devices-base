.class public Lcom/android/server/wifi/hotspot2/OMADMAdapter;
.super Ljava/lang/Object;
.source "OMADMAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;,
        Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
    }
.end annotation


# static fields
.field private static final DevDetail:Ljava/lang/String; = "<MgmtTree><VerDTD>1.2</VerDTD><Node><NodeName>DevDetail</NodeName><RTProperties><Type><DDFName>urn:oma:mo:oma-dm-devdetail:1.0</DDFName></Type></RTProperties><Node><NodeName>Ext</NodeName><Node><NodeName>org.wi-fi</NodeName><RTProperties><Type><DDFName>urn:wfa:mo-ext:hotspot2dot0-devdetail-ext :1.0</DDFName></Type></RTProperties><Node><NodeName>Wi-Fi</NodeName><Node><NodeName>EAPMethodList</NodeName><Node><NodeName>Method01</NodeName><!-- EAP-TTLS/MS-CHAPv2 --><Node><NodeName>EAPType</NodeName><Value>21</Value></Node><Node><NodeName>InnerMethod</NodeName><Value>MS-CHAP-V2</Value></Node></Node><Node><NodeName>Method02</NodeName><!-- EAP-TLS --><Node><NodeName>EAPType</NodeName><Value>13</Value></Node></Node><Node><NodeName>Method03</NodeName><!-- EAP-SIM --><Node><NodeName>EAPType</NodeName><Value>18</Value></Node></Node><Node><NodeName>Method04</NodeName><!-- EAP-AKA --><Node><NodeName>EAPType</NodeName><Value>23</Value></Node></Node><Node><NodeName>Method05</NodeName><!-- EAP-AKA\' --><Node><NodeName>EAPType</NodeName><Value>50</Value></Node></Node><Node><NodeName>Method06</NodeName><!-- Supported method (EAP-TTLS/PAP) not mandated by Hotspot2.0--><Node><NodeName>EAPType</NodeName><Value>21</Value></Node><Node><NodeName>InnerMethod</NodeName><Value>PAP</Value></Node></Node><Node><NodeName>Method07</NodeName><!-- Supported method (PEAP/EAP-GTC) not mandated by Hotspot 2.0--><Node><NodeName>EAPType</NodeName><Value>25</Value></Node><Node><NodeName>InnerEAPType</NodeName><Value>6</Value></Node></Node></Node><Node><NodeName>SPCertificate</NodeName><Node><NodeName>Cert01</NodeName><Node><NodeName>CertificateIssuerName</NodeName><Value>CN=RuckusCA</Value></Node></Node></Node><Node><NodeName>ManufacturingCertificate</NodeName><Value>FALSE</Value></Node><Node><NodeName>Wi-FiMACAddress</NodeName><Value>001d2e112233</Value></Node><Node><NodeName>ClientTriggerRedirectURI</NodeName><Value>http://127.0.0.1:12345/index.htm</Value></Node><Node><NodeName>Ops</NodeName><Node><NodeName>launchBrowserToURI</NodeName><Value></Value></Node><Node><NodeName>negotiateClientCertTLS</NodeName><Value></Value></Node><Node><NodeName>getCertificate</NodeName><Value></Value></Node></Node></Node><!-- End of Wi-Fi node --></Node><!-- End of org.wi-fi node --></Node><!-- End of Ext node --><Node><NodeName>URI</NodeName><Node><NodeName>MaxDepth</NodeName><Value>32</Value></Node><Node><NodeName>MaxTotLen</NodeName><Value>2048</Value></Node><Node><NodeName>MaxSegLen</NodeName><Value>64</Value></Node></Node><Node><NodeName>DevType</NodeName><Value>Smartphone</Value></Node><Node><NodeName>OEM</NodeName><Value>ACME</Value></Node><Node><NodeName>FwV</NodeName><Value>1.2.100.5</Value></Node><Node><NodeName>SwV</NodeName><Value>9.11.130</Value></Node><Node><NodeName>HwV</NodeName><Value>1.0</Value></Node><Node><NodeName>LrgObj</NodeName><Value>TRUE</Value></Node></Node></MgmtTree>"

.field private static final DevInfo:Ljava/lang/String; = "<MgmtTree><VerDTD>1.2</VerDTD><Node><NodeName>DevInfo</NodeName><RTProperties><Type><DDFName>urn:oma:mo:oma-dm-devinfo:1.0</DDFName></Type></RTProperties></Node><Node><NodeName>DevID</NodeName><Path>DevInfo</Path><Value>urn:acme:00-11-22-33-44-55</Value></Node><Node><NodeName>Man</NodeName><Path>DevInfo</Path><Value>ACME</Value></Node><Node><NodeName>Mod</NodeName><Path>DevInfo</Path><Value>HS2.0-01</Value></Node><Node><NodeName>DmV</NodeName><Path>DevInfo</Path><Value>1.2</Value></Node><Node><NodeName>Lang</NodeName><Path>DevInfo</Path><Value>en-US</Value></Node></MgmtTree>"

.field private static final ExtWiFiPath:[Ljava/lang/String;

.field private static final IMEI_Length:I = 0xe

.field private static final RTProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/wifi/hotspot2/OMADMAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;",
            ">;"
        }
    .end annotation
.end field

.field private mDevDetailTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

.field private final mDevID:Ljava/lang/String;

.field private final mDevInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;",
            ">;"
        }
    .end annotation
.end field

.field private mDevInfoTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

.field private final mImei:Ljava/lang/String;

.field private final mImsi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DevDetail"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ext"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.wi-fi"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Wi-Fi"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->RTProps:Ljava/util/Map;

    .line 49
    sget-object v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->RTProps:Ljava/util/Map;

    sget-object v1, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string/jumbo v2, "urn:wfa:mo-ext:hotspot2dot0-devdetail-ext:1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mContext:Landroid/content/Context;

    .line 128
    const-string/jumbo v4, "phone"

    .line 127
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 129
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "simOperator":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImsi:Ljava/lang/String;

    .line 131
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImei:Ljava/lang/String;

    .line 135
    const-string/jumbo v4, "310120"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImsi:Ljava/lang/String;

    const-string/jumbo v5, "310120"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 138
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "strDevId":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_2

    .line 140
    const/16 v4, 0xe

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 160
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevID:Ljava/lang/String;

    .line 162
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    .line 163
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "DevInfo"

    aput-object v7, v6, v9

    const-string/jumbo v7, "DevID"

    aput-object v7, v6, v10

    invoke-direct {v5, v2, v6}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const-string/jumbo v6, "Man"

    const-string/jumbo v7, "ro.product.manufacturer"

    const-string/jumbo v8, "unknown"

    invoke-static {p1, v6, v7, v8}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "DevInfo"

    aput-object v8, v7, v9

    const-string/jumbo v8, "Man"

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const-string/jumbo v6, "Mod"

    const-string/jumbo v7, "ro.product.model"

    const-string/jumbo v8, "generic"

    invoke-static {p1, v6, v7, v8}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "DevInfo"

    aput-object v8, v7, v9

    const-string/jumbo v8, "Mod"

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "DevInfo"

    aput-object v8, v7, v9

    const-string/jumbo v8, "Lang"

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const-string/jumbo v6, "1.2"

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "DevInfo"

    aput-object v8, v7, v9

    const-string/jumbo v8, "DmV"

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    .line 170
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    invoke-static {}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getDeviceType()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "DevDetail"

    aput-object v8, v7, v9

    const-string/jumbo v8, "DevType"

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const-string/jumbo v6, "ro.product.brand"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "DevDetail"

    aput-object v8, v7, v9

    const-string/jumbo v8, "OEM"

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    invoke-static {p1, v9}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getVersion(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "DevDetail"

    aput-object v8, v7, v9

    const-string/jumbo v8, "FwV"

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    invoke-static {p1, v10}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getVersion(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "DevDetail"

    aput-object v8, v7, v9

    const-string/jumbo v8, "SwV"

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    invoke-static {}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getHwV()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "DevDetail"

    aput-object v8, v7, v9

    const-string/jumbo v8, "HwV"

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const-string/jumbo v6, "TRUE"

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v8, "DevDetail"

    aput-object v8, v7, v9

    const-string/jumbo v8, "LrgObj"

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    const-string/jumbo v8, "DevDetail"

    aput-object v8, v7, v9

    const-string/jumbo v8, "URI"

    aput-object v8, v7, v10

    const-string/jumbo v8, "MaxDepth"

    aput-object v8, v7, v11

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const/16 v6, 0x800

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    const-string/jumbo v8, "DevDetail"

    aput-object v8, v7, v9

    const-string/jumbo v8, "URI"

    aput-object v8, v7, v10

    const-string/jumbo v8, "MaxTotLen"

    aput-object v8, v7, v11

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const/16 v6, 0x40

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    const-string/jumbo v8, "DevDetail"

    aput-object v8, v7, v9

    const-string/jumbo v8, "URI"

    aput-object v8, v7, v10

    const-string/jumbo v8, "MaxSegLen"

    aput-object v8, v7, v11

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 182
    .local v0, "index":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const/16 v6, 0x15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "EAPMethodList"

    aput-object v8, v7, v10

    aput-object v0, v7, v11

    const-string/jumbo v8, "EAPType"

    aput-object v8, v7, v12

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    sget-object v6, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAPv2:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    invoke-static {v6}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mapInnerType(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "EAPMethodList"

    aput-object v8, v7, v10

    aput-object v0, v7, v11

    const-string/jumbo v8, "InnerMethod"

    aput-object v8, v7, v12

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 186
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const/16 v6, 0x15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "EAPMethodList"

    aput-object v8, v7, v10

    aput-object v0, v7, v11

    const-string/jumbo v8, "EAPType"

    aput-object v8, v7, v12

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    sget-object v6, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->PAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    invoke-static {v6}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mapInnerType(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "EAPMethodList"

    aput-object v8, v7, v10

    aput-object v0, v7, v11

    const-string/jumbo v8, "InnerMethod"

    aput-object v8, v7, v12

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 190
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const/16 v6, 0x15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "EAPMethodList"

    aput-object v8, v7, v10

    aput-object v0, v7, v11

    const-string/jumbo v8, "EAPType"

    aput-object v8, v7, v12

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    sget-object v6, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    invoke-static {v6}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->mapInnerType(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "EAPMethodList"

    aput-object v8, v7, v10

    aput-object v0, v7, v11

    const-string/jumbo v8, "InnerMethod"

    aput-object v8, v7, v12

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 194
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const/16 v6, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "EAPMethodList"

    aput-object v8, v7, v10

    aput-object v0, v7, v11

    const-string/jumbo v8, "EAPType"

    aput-object v8, v7, v12

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 196
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const/16 v6, 0x17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "EAPMethodList"

    aput-object v8, v7, v10

    aput-object v0, v7, v11

    const-string/jumbo v8, "EAPType"

    aput-object v8, v7, v12

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 198
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const/16 v6, 0x32

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "EAPMethodList"

    aput-object v8, v7, v10

    aput-object v0, v7, v11

    const-string/jumbo v8, "EAPType"

    aput-object v8, v7, v12

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 200
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const/16 v6, 0x12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "EAPMethodList"

    aput-object v8, v7, v10

    aput-object v0, v7, v11

    const-string/jumbo v8, "EAPType"

    aput-object v8, v7, v12

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    const-string/jumbo v6, "FALSE"

    new-array v7, v11, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "ManufacturingCertificate"

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImsi:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "IMSI"

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImei:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v8, v7, v9

    const-string/jumbo v8, "IMEI_MEID"

    aput-object v8, v7, v10

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/hotspot2/OMADMAdapter$1;

    new-array v6, v11, [Ljava/lang/Object;

    sget-object v7, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->ExtWiFiPath:[Ljava/lang/String;

    aput-object v7, v6, v9

    const-string/jumbo v7, "Wi-FiMACAddress"

    aput-object v7, v6, v10

    invoke-direct {v5, p0, v6}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$1;-><init>(Lcom/android/server/wifi/hotspot2/OMADMAdapter;[Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void

    .line 142
    .end local v0    # "index":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MEID cannot be extracted from DeviceId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 146
    .end local v2    # "strDevId":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->isPhoneTypeLTE()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImei:Ljava/lang/String;

    .line 151
    .restart local v2    # "strDevId":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_4

    .line 152
    const-string/jumbo v2, "unknown"

    .line 154
    :cond_4
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->isPhoneTypeLTE()Z

    move-result v4

    if-nez v4, :cond_1

    .line 157
    const/16 v4, 0xe

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 149
    .end local v2    # "strDevId":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "strDevId":Ljava/lang/String;
    goto :goto_1
.end method

.method private static buildNode(Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;ILcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V
    .locals 5
    .param p0, "pathAccessor"    # Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
    .param p1, "depth"    # I
    .param p2, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->-wrap0(Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;)[Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "path":[Ljava/lang/String;
    aget-object v0, v2, p1

    .line 217
    .local v0, "name":Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_2

    .line 218
    invoke-virtual {p2, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 219
    .local v1, "node":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v1, :cond_0

    .line 220
    sget-object v3, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->RTProps:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v0, v3, v4, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v1

    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 223
    .restart local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_0
    add-int/lit8 v3, p1, 0x1

    invoke-static {p0, v3, v1}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->buildNode(Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;ILcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    .line 214
    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v4, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto :goto_0
.end method

.method private static getDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "devicetype":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    :goto_0
    return-object v0

    .line 308
    :cond_0
    const-string/jumbo v0, "phone"

    goto :goto_0
.end method

.method private static getHwV()Ljava/lang/String;
    .locals 4

    .prologue
    .line 298
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.hardware"

    const-string/jumbo v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    const-string/jumbo v2, "."

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    const-string/jumbo v2, "ro.revision"

    const-string/jumbo v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "Unknown"

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/wifi/hotspot2/OMADMAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const-class v1, Lcom/android/server/wifi/hotspot2/OMADMAdapter;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->sInstance:Lcom/android/server/wifi/hotspot2/OMADMAdapter;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->sInstance:Lcom/android/server/wifi/hotspot2/OMADMAdapter;

    .line 120
    :cond_0
    sget-object v0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->sInstance:Lcom/android/server/wifi/hotspot2/OMADMAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    const-string/jumbo v1, "Lang"

    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->readValueFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "strLang":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 349
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_0
    return-object v0
.end method

.method private static getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "dflt"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-static {p0, p1}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->readValueFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "strMan":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 357
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    :cond_0
    return-object v0
.end method

.method private static getVersion(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "swv"    # Z

    .prologue
    .line 316
    :try_start_0
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->isSprint(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ro.build.version.release"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 319
    :cond_0
    const-string/jumbo v2, "ro.build.version.full"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "version":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ro.build.id"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 322
    const-string/jumbo v3, "ro.build.config.version"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 322
    const-string/jumbo v3, "~"

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 323
    const-string/jumbo v3, "gsm.version.baseband"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 323
    const-string/jumbo v3, "~"

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    const-string/jumbo v3, "ro.gsm.flexversion"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 327
    .end local v1    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "Unknown"

    return-object v2

    .line 330
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "version":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private static isPhoneTypeLTE()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method private static isSprint(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    const-string/jumbo v3, "phone"

    .line 334
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 336
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "simOperator":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "imsi":Ljava/lang/String;
    const-string/jumbo v3, "310120"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "310120"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 342
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private static readValueFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 363
    const/4 v1, 0x0

    .line 365
    .local v1, "ret":Ljava/lang/String;
    const-string/jumbo v2, "dmconfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 366
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    const-string/jumbo v2, ""

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 369
    const/4 v1, 0x0

    .line 372
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getDevID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevID:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getMAC()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 232
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 233
    const-string/jumbo v1, "%012x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 234
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 233
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_0
    return-object v1
.end method

.method public getMO(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 8
    .param p1, "urn"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 252
    :try_start_0
    const-string/jumbo v4, "urn:oma:mo:oma-dm-devinfo:1.0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfoTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    if-nez v4, :cond_2

    .line 255
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    const-string/jumbo v4, "DevInfo"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, p1, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 256
    .local v3, "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pathAccessor$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;

    .line 257
    .local v1, "pathAccessor":Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
    const/4 v4, 0x1

    invoke-static {v1, v4, v3}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->buildNode(Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;ILcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    .end local v1    # "pathAccessor":Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
    .end local v2    # "pathAccessor$iterator":Ljava/util/Iterator;
    .end local v3    # "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_0
    move-exception v0

    .line 278
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Caught exception building OMA Tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    return-object v7

    .line 252
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "urn:oma:mo:oma-dm-devdetail:1.0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 264
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetailTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    if-nez v4, :cond_4

    .line 265
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    const-string/jumbo v4, "DevDetail"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, p1, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 266
    .restart local v3    # "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetail:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "pathAccessor$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;

    .line 267
    .restart local v1    # "pathAccessor":Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
    const/4 v4, 0x1

    invoke-static {v1, v4, v3}, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->buildNode(Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;ILcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    goto :goto_1

    .line 259
    .end local v1    # "pathAccessor":Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
    :cond_1
    const-string/jumbo v4, "urn:oma:mo:oma-dm-devinfo:1.0"

    .line 260
    const-string/jumbo v5, "1.2"

    .line 259
    invoke-static {v4, v5, v3}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildMgmtTree(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfoTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    .line 262
    .end local v2    # "pathAccessor$iterator":Ljava/util/Iterator;
    .end local v3    # "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevInfoTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    return-object v4

    .line 269
    .restart local v2    # "pathAccessor$iterator":Ljava/util/Iterator;
    .restart local v3    # "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_3
    const-string/jumbo v4, "urn:oma:mo:oma-dm-devdetail:1.0"

    .line 270
    const-string/jumbo v5, "1.2"

    .line 269
    invoke-static {v4, v5, v3}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildMgmtTree(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetailTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    .line 272
    .end local v2    # "pathAccessor$iterator":Ljava/util/Iterator;
    .end local v3    # "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mDevDetailTree:Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    return-object v4

    .line 274
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getMeid()[B
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter;->mImei:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
