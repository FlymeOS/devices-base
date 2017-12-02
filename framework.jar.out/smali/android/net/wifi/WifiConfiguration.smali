.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$1;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;,
        Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$Visibility;
    }
.end annotation


# static fields
.field public static final AP_BAND_2GHZ:I = 0x0

.field public static final AP_BAND_5GHZ:I = 0x1

.field private static final BACKUP_VERSION:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOME_NETWORK_RSSI_BOOST:I = 0x5

.field public static final INVALID_NETWORK_ID:I = -0x1

.field public static INVALID_RSSI:I = 0x0

.field public static ROAMING_FAILURE_AUTH_FAILURE:I = 0x0

.field public static ROAMING_FAILURE_IP_CONFIG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiConfiguration"

.field public static final UNKNOWN_UID:I = -0x1

.field public static final USER_APPROVED:I = 0x1

.field public static final USER_BANNED:I = 0x2

.field public static final USER_PENDING:I = 0x3

.field public static final USER_UNSPECIFIED:I = 0x0

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final pmfVarName:Ljava/lang/String; = "ieee80211w"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final updateIdentiferVarName:Ljava/lang/String; = "update_identifier"

.field public static final wepKeyVarNames:[Ljava/lang/String;

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public FQDN:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public apBand:I

.field public apChannel:I

.field public creationTime:Ljava/lang/String;

.field public creatorName:Ljava/lang/String;

.field public creatorUid:I

.field public defaultGwMacAddress:Ljava/lang/String;

.field public dhcpServer:Ljava/lang/String;

.field public didSelfAdd:Z

.field public dtimInterval:I

.field public enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field public ephemeral:Z

.field public hiddenSSID:Z

.field public isCarrierNetwork:Z

.field public lastConnectUid:I

.field public lastConnected:J

.field public lastConnectionFailure:J

.field public lastDisconnected:J

.field public lastFailure:Ljava/lang/String;

.field public lastRoamingFailure:J

.field public lastRoamingFailureReason:I

.field public lastUpdateName:Ljava/lang/String;

.field public lastUpdateUid:I

.field public linkedConfigurations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCachedConfigKey:Ljava/lang/String;

.field private mIpConfiguration:Landroid/net/IpConfiguration;

.field private final mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

.field private mPasspointManagementObjectTree:Ljava/lang/String;

.field public meteredHint:Z

.field public networkId:I

.field public noInternetAccessExpected:Z

.field public numAssociation:I

.field public numNoInternetAccessReports:I

.field public numScorerOverride:I

.field public numScorerOverrideAndSwitchedNetwork:I

.field public numTicksAtBadRSSI:I

.field public numTicksAtLowRSSI:I

.field public numTicksAtNotHighRSSI:I

.field public numUserTriggeredJoinAttempts:I

.field public numUserTriggeredWifiDisableBadRSSI:I

.field public numUserTriggeredWifiDisableLowRSSI:I

.field public numUserTriggeredWifiDisableNotHighRSSI:I

.field public peerWifiConfiguration:Ljava/lang/String;

.field public preSharedKey:Ljava/lang/String;

.field public priority:I

.field public providerFriendlyName:Ljava/lang/String;

.field public requirePMF:Z

.field public roamingConsortiumIds:[J

.field public roamingFailureBlackListTimeMilli:J

.field public selfAdded:Z

.field public shared:Z

.field public status:I

.field public updateIdentifier:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;

.field public useExternalScores:Z

.field public userApproved:I

.field public validatedInternetAccess:Z

.field public visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I


# direct methods
.method static synthetic -get0(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)Landroid/net/IpConfiguration;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 1
    .param p0, "src"    # Landroid/os/Parcel;

    .prologue
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "wep_key0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "wep_key1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "wep_key2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "wep_key3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .line 478
    const/16 v0, -0x7f

    sput v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 649
    sput v3, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_IP_CONFIG:I

    .line 651
    sput v4, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_AUTH_FAILURE:I

    .line 2006
    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    .line 2005
    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 280
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 423
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    .line 465
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 484
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->isCarrierNetwork:Z

    .line 658
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1324
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-direct {v1, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 1344
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1345
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1346
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1347
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 1348
    new-array v1, v4, [J

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 1349
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1350
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1351
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1352
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 1353
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 1354
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 1355
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 1356
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 1357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1358
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v1, v0

    .line 1357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1360
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1361
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 1362
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 1363
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 1364
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 1365
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 1366
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 1367
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 1368
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 1369
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 1370
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 1371
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    .line 1343
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 280
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 423
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    .line 465
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 484
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isCarrierNetwork:Z

    .line 658
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1324
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-direct {v1, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 1851
    if-eqz p1, :cond_3

    .line 1852
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1853
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1854
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1855
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1856
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 1857
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 1858
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 1859
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1861
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->copy(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    .line 1862
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1863
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 1865
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 1866
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1867
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 1866
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1870
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1871
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1872
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1873
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1874
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 1875
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 1876
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 1877
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 1878
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1880
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 1882
    new-instance v1, Landroid/net/IpConfiguration;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-direct {v1, v2}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 1884
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 1885
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1886
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 1887
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1889
    :cond_1
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    .line 1890
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 1891
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 1892
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 1893
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 1894
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 1895
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v1, :cond_2

    .line 1896
    new-instance v1, Landroid/net/wifi/WifiConfiguration$Visibility;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiConfiguration$Visibility;-><init>(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .line 1899
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    .line 1900
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 1901
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 1902
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 1903
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 1904
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 1905
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 1906
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 1908
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    .line 1909
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    .line 1910
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    .line 1911
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    .line 1912
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    .line 1913
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1914
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    .line 1915
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    .line 1916
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 1917
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 1918
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    .line 1919
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 1920
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    .line 1921
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    .line 1922
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    .line 1923
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    .line 1924
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 1925
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 1926
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 1927
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isCarrierNetwork:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isCarrierNetwork:Z

    .line 1928
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    .line 1929
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    .line 1930
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 1850
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public static getWifiConfigFromBackup(Ljava/io/DataInputStream;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/BackupUtils$BadVersionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2105
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2106
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 2107
    .local v1, "version":I
    if-lt v1, v3, :cond_0

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 2108
    :cond_0
    new-instance v2, Landroid/util/BackupUtils$BadVersionException;

    const-string/jumbo v3, "Unknown Backup Serialization Version"

    invoke-direct {v2, v3}, Landroid/util/BackupUtils$BadVersionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2111
    :cond_1
    if-ne v1, v3, :cond_2

    const/4 v2, 0x0

    return-object v2

    .line 2113
    :cond_2
    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2114
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 2115
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 2116
    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2117
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2118
    return-object v0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4
    .param p0, "src"    # Landroid/os/Parcel;

    .prologue
    .line 1696
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1698
    .local v0, "cardinality":I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 1699
    .local v2, "set":Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1700
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1703
    :cond_0
    return-object v2
.end method

.method private trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1692
    const-string/jumbo v0, "\""

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userApprovedAsString(I)Ljava/lang/String;
    .locals 1
    .param p0, "userApproved"    # I

    .prologue
    .line 1639
    packed-switch p0, :pswitch_data_0

    .line 1647
    const-string/jumbo v0, "INVALID"

    return-object v0

    .line 1641
    :pswitch_0
    const-string/jumbo v0, "USER_APPROVED"

    return-object v0

    .line 1643
    :pswitch_1
    const-string/jumbo v0, "USER_BANNED"

    return-object v0

    .line 1645
    :pswitch_2
    const-string/jumbo v0, "USER_UNSPECIFIED"

    return-object v0

    .line 1639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 2
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 1707
    const/4 v0, -0x1

    .line 1709
    .local v0, "nextSetBit":I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1711
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1712
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1706
    :cond_0
    return-void
.end method


# virtual methods
.method public configKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1775
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public configKey(Z)Ljava/lang/String;
    .locals 6
    .param p1, "allowCached"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 1745
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1746
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    .line 1768
    .local v0, "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1747
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1749
    .restart local v0    # "key":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v1, :cond_0

    .line 1750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1753
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1763
    .restart local v0    # "key":Ljava/lang/String;
    :goto_1
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v1, :cond_3

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1766
    :cond_3
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 1755
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1756
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 1755
    if-eqz v1, :cond_6

    .line 1757
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1

    .line 1758
    .end local v0    # "key":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v4

    if-eqz v1, :cond_7

    .line 1759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1

    .line 1761
    .end local v0    # "key":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1836
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthType()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1718
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1719
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "More than one auth type set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1721
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1722
    return v1

    .line 1723
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1724
    return v4

    .line 1725
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1726
    return v2

    .line 1727
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1728
    return v3

    .line 1730
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public getBytesForBackup()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2087
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2088
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2090
    .local v1, "out":Ljava/io/DataOutputStream;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2091
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 2092
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2093
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2094
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 2095
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2096
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 1

    .prologue
    .line 1820
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    return-object v0
.end method

.method public getIpConfiguration()Landroid/net/IpConfiguration;
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    return-object v0
.end method

.method public getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 6
    .param p1, "current"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x0

    .line 1660
    const/4 v1, 0x0

    .line 1664
    .local v1, "keyMgmt":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1665
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-nez v3, :cond_1

    .line 1666
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1668
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1669
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v3, v4

    .line 1671
    .end local v1    # "keyMgmt":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1672
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v1, v3, v4

    .line 1674
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1678
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1679
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Not an EAP network"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Invalid config details"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1682
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1683
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p1, :cond_6

    .line 1684
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1683
    :cond_6
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1682
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method

.method public getMoTree()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    return-object v0
.end method

.method public getPrintableSsid()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 1618
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    .line 1619
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1620
    .local v0, "length":I
    if-le v0, v7, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1621
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1628
    :cond_1
    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1629
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1631
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1630
    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    .line 1632
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1634
    .end local v1    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v2
.end method

.method public getProxySettings()Landroid/net/IpConfiguration$ProxySettings;
    .locals 1

    .prologue
    .line 1810
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    return-object v0
.end method

.method public getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasNoInternetAccess()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 618
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v1, :cond_0

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnterprise()Z
    .locals 2

    .prologue
    .line 1405
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1406
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 1405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLinked(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1389
    if-eqz p1, :cond_0

    .line 1390
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1393
    const/4 v0, 0x1

    return v0

    .line 1397
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPasspoint()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1378
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1379
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1378
    :cond_0
    :goto_0
    return v0

    .line 1380
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_0

    .line 1381
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "httpProxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 1825
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 1824
    return-void
.end method

.method public setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V
    .locals 1
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;

    .prologue
    .line 1805
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 1804
    return-void
.end method

.method public setIpConfiguration(Landroid/net/IpConfiguration;)V
    .locals 0
    .param p1, "ipConfiguration"    # Landroid/net/IpConfiguration;

    .prologue
    .line 1785
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 1784
    return-void
.end method

.method public setPasspointManagementObjectTree(Ljava/lang/String;)V
    .locals 0
    .param p1, "passpointManagementObjectTree"    # Ljava/lang/String;

    .prologue
    .line 1841
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    .line 1840
    return-void
.end method

.method public setProxy(Landroid/net/IpConfiguration$ProxySettings;Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p2, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 1830
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1831
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p2, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 1829
    return-void
.end method

.method public setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    .locals 1
    .param p1, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;

    .prologue
    .line 1815
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1814
    return-void
.end method

.method public setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V
    .locals 1
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 1795
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0, p1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 1794
    return-void
.end method

.method public setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V
    .locals 0
    .param p1, "status"    # Landroid/net/wifi/WifiConfiguration$Visibility;

    .prologue
    .line 568
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .line 567
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    .prologue
    .line 1411
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1412
    .local v14, "sbuf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v15, :cond_2

    .line 1413
    const-string/jumbo v15, "* "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    :cond_0
    :goto_0
    const-string/jumbo v15, "ID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " SSID: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1418
    const-string/jumbo v16, " PROVIDER-NAME: "

    .line 1417
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1417
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1419
    const-string/jumbo v16, " BSSID: "

    .line 1417
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1417
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1419
    const-string/jumbo v16, " FQDN: "

    .line 1417
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1417
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1420
    const-string/jumbo v16, " PRIO: "

    .line 1417
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1420
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    .line 1417
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1421
    const-string/jumbo v16, " HIDDEN: "

    .line 1417
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1421
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v16, v0

    .line 1417
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1422
    const/16 v16, 0xa

    .line 1417
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1425
    const-string/jumbo v15, " NetworkSelectionStatus "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v15

    if-lez v15, :cond_3

    .line 1428
    const-string/jumbo v15, " mNetworkSelectionDisableReason "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    const/4 v6, 0x0

    .line 1432
    .local v6, "index":I
    :goto_1
    const/16 v15, 0xa

    .line 1431
    if-ge v6, v15, :cond_3

    .line 1433
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v15, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v15

    if-eqz v15, :cond_1

    .line 1434
    invoke-static {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1435
    const-string/jumbo v16, " counter:"

    .line 1434
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v16

    .line 1434
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1436
    const-string/jumbo v16, "\n"

    .line 1434
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1414
    .end local v6    # "index":I
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1415
    const-string/jumbo v15, "- DSBLE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1440
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 1441
    const-string/jumbo v15, " connect choice: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    const-string/jumbo v15, " connect choice set time: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1445
    :cond_4
    const-string/jumbo v15, " hasEverConnected: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v16

    .line 1445
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1446
    const-string/jumbo v16, "\n"

    .line 1445
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-lez v15, :cond_5

    .line 1449
    const-string/jumbo v15, " numAssociation "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v15, :cond_6

    .line 1452
    const-string/jumbo v15, " numNoInternetAccessReports "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    if-eqz v15, :cond_7

    .line 1456
    const-string/jumbo v15, "update "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    if-eqz v15, :cond_8

    .line 1459
    const-string/jumbo v15, "creation"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    if-eqz v15, :cond_9

    const-string/jumbo v15, " didSelfAdd"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v15, :cond_a

    const-string/jumbo v15, " selfAdded"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v15, :cond_b

    const-string/jumbo v15, " validatedInternetAccess"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v15, :cond_c

    const-string/jumbo v15, " ephemeral"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz v15, :cond_d

    const-string/jumbo v15, " meteredHint"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-eqz v15, :cond_e

    const-string/jumbo v15, " useExternalScores"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-nez v15, :cond_f

    .line 1468
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 1467
    if-nez v15, :cond_f

    .line 1468
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 1467
    if-nez v15, :cond_f

    .line 1468
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 1467
    if-eqz v15, :cond_10

    .line 1469
    :cond_f
    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    :cond_10
    const-string/jumbo v15, " KeyMgmt:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    move-result v15

    if-ge v7, v15, :cond_13

    .line 1473
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v15, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 1474
    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    sget-object v15, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v15, v15

    if-ge v7, v15, :cond_12

    .line 1476
    sget-object v15, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v15, v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    :cond_11
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1478
    :cond_12
    const-string/jumbo v15, "??"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1482
    :cond_13
    const-string/jumbo v15, " Protocols:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    const/4 v12, 0x0

    .local v12, "p":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    move-result v15

    if-ge v12, v15, :cond_16

    .line 1484
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v15, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 1485
    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    sget-object v15, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v15, v15

    if-ge v12, v15, :cond_15

    .line 1487
    sget-object v15, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v15, v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    :cond_14
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1489
    :cond_15
    const-string/jumbo v15, "??"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1493
    :cond_16
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1494
    const-string/jumbo v15, " AuthAlgorithms:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    move-result v15

    if-ge v2, v15, :cond_19

    .line 1496
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v15, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 1497
    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    sget-object v15, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v15, v15

    if-ge v2, v15, :cond_18

    .line 1499
    sget-object v15, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v15, v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    :cond_17
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1501
    :cond_18
    const-string/jumbo v15, "??"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1505
    :cond_19
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1506
    const-string/jumbo v15, " PairwiseCiphers:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    const/4 v13, 0x0

    .local v13, "pc":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    move-result v15

    if-ge v13, v15, :cond_1c

    .line 1508
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v15, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 1509
    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    sget-object v15, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v15, v15

    if-ge v13, v15, :cond_1b

    .line 1511
    sget-object v15, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v15, v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    :cond_1a
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 1513
    :cond_1b
    const-string/jumbo v15, "??"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1517
    :cond_1c
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1518
    const-string/jumbo v15, " GroupCiphers:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    const/4 v3, 0x0

    .local v3, "gc":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    move-result v15

    if-ge v3, v15, :cond_1f

    .line 1520
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v15, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 1521
    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    sget-object v15, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v15, v15

    if-ge v3, v15, :cond_1e

    .line 1523
    sget-object v15, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v15, v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    :cond_1d
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1525
    :cond_1e
    const-string/jumbo v15, "??"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1529
    :cond_1f
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " PSK: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v15, :cond_20

    .line 1531
    const/16 v15, 0x2a

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1533
    :cond_20
    const-string/jumbo v15, "\nEnterprise config:\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1536
    const-string/jumbo v15, "IP config:\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v15}, Landroid/net/IpConfiguration;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_21

    .line 1540
    const-string/jumbo v15, " networkSelectionBSSID="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v16

    .line 1540
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1544
    .local v10, "now_ms":J
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v16

    const-wide/16 v18, -0x1

    cmp-long v15, v16, v18

    if-eqz v15, :cond_22

    .line 1546
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1547
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v16

    sub-long v4, v10, v16

    .line 1548
    .local v4, "diff":J
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-gtz v15, :cond_2a

    .line 1549
    const-string/jumbo v15, " blackListed since <incorrect>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    .end local v4    # "diff":J
    :cond_22
    :goto_c
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-eqz v15, :cond_23

    const-string/jumbo v15, " cuid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1555
    :cond_23
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v15, :cond_24

    const-string/jumbo v15, " cname="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    :cond_24
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    if-eqz v15, :cond_25

    const-string/jumbo v15, " luid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1557
    :cond_25
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-eqz v15, :cond_26

    const-string/jumbo v15, " lname="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    :cond_26
    const-string/jumbo v15, " lcuid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1559
    const-string/jumbo v15, " userApproved="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration;->userApprovedAsString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    const-string/jumbo v15, " noInternetAccessExpected="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1561
    const-string/jumbo v15, " isCarrierNetwork="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isCarrierNetwork:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1562
    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_27

    .line 1565
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1566
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v16, v0

    sub-long v4, v10, v16

    .line 1567
    .restart local v4    # "diff":J
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-gtz v15, :cond_2b

    .line 1568
    const-string/jumbo v15, "lastConnected since <incorrect>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    .end local v4    # "diff":J
    :cond_27
    :goto_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_28

    .line 1574
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1575
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    move-wide/from16 v16, v0

    sub-long v4, v10, v16

    .line 1576
    .restart local v4    # "diff":J
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-gtz v15, :cond_2c

    .line 1577
    const-string/jumbo v15, "lastConnectionFailure since <incorrect> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    .end local v4    # "diff":J
    :cond_28
    :goto_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_29

    .line 1584
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1585
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v16, v0

    sub-long v4, v10, v16

    .line 1586
    .restart local v4    # "diff":J
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-gtz v15, :cond_2d

    .line 1587
    const-string/jumbo v15, "lastRoamingFailure since <incorrect> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    .end local v4    # "diff":J
    :cond_29
    :goto_f
    const-string/jumbo v15, "roamingFailureBlackListTimeMilli: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1594
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    .line 1593
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1596
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v15, :cond_2e

    .line 1597
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "key$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1598
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v15, " linked: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1551
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "key$iterator":Ljava/util/Iterator;
    .restart local v4    # "diff":J
    :cond_2a
    const-string/jumbo v15, " blackListed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v16, 0x3e8

    div-long v16, v4, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "sec "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 1570
    :cond_2b
    const-string/jumbo v15, "lastConnected: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v16, 0x3e8

    div-long v16, v4, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "sec "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 1579
    :cond_2c
    const-string/jumbo v15, "lastConnectionFailure: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v16, 0x3e8

    div-long v16, v4, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    const-string/jumbo v15, "sec "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 1589
    :cond_2d
    const-string/jumbo v15, "lastRoamingFailure: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v16, 0x3e8

    div-long v16, v4, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    const-string/jumbo v15, "sec "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 1602
    .end local v4    # "diff":J
    :cond_2e
    const-string/jumbo v15, "triggeredLow: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1603
    const-string/jumbo v15, " triggeredBad: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1604
    const-string/jumbo v15, " triggeredNotHigh: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1605
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1606
    const-string/jumbo v15, "ticksLow: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1607
    const-string/jumbo v15, " ticksBad: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1608
    const-string/jumbo v15, " ticksNotHigh: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1609
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1610
    const-string/jumbo v15, "triggeredJoin: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1611
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1613
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1937
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1939
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->writeToParcel(Landroid/os/Parcel;)V

    .line 1940
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1941
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1942
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1943
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1944
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1945
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1946
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    array-length v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1947
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    array-length v7, v6

    move v3, v5

    :goto_0
    if-ge v3, v7, :cond_0

    aget-wide v0, v6, v3

    .line 1948
    .local v0, "roamingConsortiumId":J
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1947
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1950
    .end local v0    # "roamingConsortiumId":J
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1951
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v7, v6

    move v3, v5

    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v2, v6, v3

    .line 1952
    .local v2, "wepKey":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1951
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1954
    .end local v2    # "wepKey":Ljava/lang/String;
    :cond_1
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1955
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1956
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1957
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1958
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1960
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1961
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1962
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1963
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1964
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1966
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1968
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1969
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1970
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1971
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1972
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1973
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1974
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1975
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1976
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-eqz v3, :cond_9

    move v3, v4

    :goto_9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1977
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1978
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1979
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1980
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1981
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1982
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 1983
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 1984
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1985
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 1986
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1987
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1988
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1989
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1990
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1991
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1992
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1993
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1994
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1995
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1996
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1997
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1998
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    if-eqz v3, :cond_a

    move v3, v4

    :goto_a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1999
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->isCarrierNetwork:Z

    if-eqz v3, :cond_b

    move v3, v4

    :goto_b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2000
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-eqz v3, :cond_c

    :goto_c
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2001
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1936
    return-void

    :cond_2
    move v3, v5

    .line 1956
    goto/16 :goto_2

    :cond_3
    move v3, v5

    .line 1957
    goto/16 :goto_3

    :cond_4
    move v3, v5

    .line 1971
    goto/16 :goto_4

    :cond_5
    move v3, v5

    .line 1972
    goto/16 :goto_5

    :cond_6
    move v3, v5

    .line 1973
    goto/16 :goto_6

    :cond_7
    move v3, v5

    .line 1974
    goto/16 :goto_7

    :cond_8
    move v3, v5

    .line 1975
    goto/16 :goto_8

    :cond_9
    move v3, v5

    .line 1976
    goto/16 :goto_9

    :cond_a
    move v3, v5

    .line 1998
    goto :goto_a

    :cond_b
    move v3, v5

    .line 1999
    goto :goto_b

    :cond_c
    move v4, v5

    .line 2000
    goto :goto_c
.end method
