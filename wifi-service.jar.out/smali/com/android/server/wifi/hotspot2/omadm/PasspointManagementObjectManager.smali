.class public Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;
.super Ljava/lang/Object;
.source "PasspointManagementObjectManager.java"


# static fields
.field private static final DTFormat:Ljava/text/DateFormat;

.field private static final FQDNPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IntervalFactor:J = 0xea60L

.field public static final TAG_AAAServerTrustRoot:Ljava/lang/String; = "AAAServerTrustRoot"

.field public static final TAG_AbleToShare:Ljava/lang/String; = "AbleToShare"

.field public static final TAG_CertSHA256Fingerprint:Ljava/lang/String; = "CertSHA256Fingerprint"

.field public static final TAG_CertURL:Ljava/lang/String; = "CertURL"

.field public static final TAG_CertificateType:Ljava/lang/String; = "CertificateType"

.field public static final TAG_CheckAAAServerCertStatus:Ljava/lang/String; = "CheckAAAServerCertStatus"

.field public static final TAG_Country:Ljava/lang/String; = "Country"

.field public static final TAG_CreationDate:Ljava/lang/String; = "CreationDate"

.field public static final TAG_Credential:Ljava/lang/String; = "Credential"

.field public static final TAG_CredentialPriority:Ljava/lang/String; = "CredentialPriority"

.field public static final TAG_DLBandwidth:Ljava/lang/String; = "DLBandwidth"

.field public static final TAG_DataLimit:Ljava/lang/String; = "DataLimit"

.field public static final TAG_DigitalCertificate:Ljava/lang/String; = "DigitalCertificate"

.field public static final TAG_EAPMethod:Ljava/lang/String; = "EAPMethod"

.field public static final TAG_EAPType:Ljava/lang/String; = "EAPType"

.field public static final TAG_ExpirationDate:Ljava/lang/String; = "ExpirationDate"

.field public static final TAG_Extension:Ljava/lang/String; = "Extension"

.field public static final TAG_FQDN:Ljava/lang/String; = "FQDN"

.field public static final TAG_FQDN_Match:Ljava/lang/String; = "FQDN_Match"

.field public static final TAG_FriendlyName:Ljava/lang/String; = "FriendlyName"

.field public static final TAG_HESSID:Ljava/lang/String; = "HESSID"

.field public static final TAG_HomeOI:Ljava/lang/String; = "HomeOI"

.field public static final TAG_HomeOIList:Ljava/lang/String; = "HomeOIList"

.field public static final TAG_HomeOIRequired:Ljava/lang/String; = "HomeOIRequired"

.field public static final TAG_HomeSP:Ljava/lang/String; = "HomeSP"

.field public static final TAG_IMSI:Ljava/lang/String; = "IMSI"

.field public static final TAG_IPProtocol:Ljava/lang/String; = "IPProtocol"

.field public static final TAG_IconURL:Ljava/lang/String; = "IconURL"

.field public static final TAG_InnerEAPType:Ljava/lang/String; = "InnerEAPType"

.field public static final TAG_InnerMethod:Ljava/lang/String; = "InnerMethod"

.field public static final TAG_InnerVendorID:Ljava/lang/String; = "InnerVendorID"

.field public static final TAG_InnerVendorType:Ljava/lang/String; = "InnerVendorType"

.field public static final TAG_MachineManaged:Ljava/lang/String; = "MachineManaged"

.field public static final TAG_MaximumBSSLoadValue:Ljava/lang/String; = "MaximumBSSLoadValue"

.field public static final TAG_MinBackhaulThreshold:Ljava/lang/String; = "MinBackhaulThreshold"

.field public static final TAG_NetworkID:Ljava/lang/String; = "NetworkID"

.field public static final TAG_NetworkType:Ljava/lang/String; = "NetworkType"

.field public static final TAG_Other:Ljava/lang/String; = "Other"

.field public static final TAG_OtherHomePartners:Ljava/lang/String; = "OtherHomePartners"

.field public static final TAG_Password:Ljava/lang/String; = "Password"

.field public static final TAG_PerProviderSubscription:Ljava/lang/String; = "PerProviderSubscription"

.field public static final TAG_Policy:Ljava/lang/String; = "Policy"

.field public static final TAG_PolicyUpdate:Ljava/lang/String; = "PolicyUpdate"

.field public static final TAG_PortNumber:Ljava/lang/String; = "PortNumber"

.field public static final TAG_PreferredRoamingPartnerList:Ljava/lang/String; = "PreferredRoamingPartnerList"

.field public static final TAG_Priority:Ljava/lang/String; = "Priority"

.field public static final TAG_Realm:Ljava/lang/String; = "Realm"

.field public static final TAG_RequiredProtoPortTuple:Ljava/lang/String; = "RequiredProtoPortTuple"

.field public static final TAG_Restriction:Ljava/lang/String; = "Restriction"

.field public static final TAG_RoamingConsortiumOI:Ljava/lang/String; = "RoamingConsortiumOI"

.field public static final TAG_SIM:Ljava/lang/String; = "SIM"

.field public static final TAG_SPExclusionList:Ljava/lang/String; = "SPExclusionList"

.field public static final TAG_SSID:Ljava/lang/String; = "SSID"

.field public static final TAG_SoftTokenApp:Ljava/lang/String; = "SoftTokenApp"

.field public static final TAG_StartDate:Ljava/lang/String; = "StartDate"

.field public static final TAG_SubscriptionParameters:Ljava/lang/String; = "SubscriptionParameters"

.field public static final TAG_SubscriptionUpdate:Ljava/lang/String; = "SubscriptionUpdate"

.field public static final TAG_TimeLimit:Ljava/lang/String; = "TimeLimit"

.field public static final TAG_TrustRoot:Ljava/lang/String; = "TrustRoot"

.field public static final TAG_TypeOfSubscription:Ljava/lang/String; = "TypeOfSubscription"

.field public static final TAG_ULBandwidth:Ljava/lang/String; = "ULBandwidth"

.field public static final TAG_URI:Ljava/lang/String; = "URI"

.field public static final TAG_UpdateIdentifier:Ljava/lang/String; = "UpdateIdentifier"

.field public static final TAG_UpdateInterval:Ljava/lang/String; = "UpdateInterval"

.field public static final TAG_UpdateMethod:Ljava/lang/String; = "UpdateMethod"

.field public static final TAG_UsageLimits:Ljava/lang/String; = "UsageLimits"

.field public static final TAG_UsageTimePeriod:Ljava/lang/String; = "UsageTimePeriod"

.field public static final TAG_Username:Ljava/lang/String; = "Username"

.field public static final TAG_UsernamePassword:Ljava/lang/String; = "UsernamePassword"

.field public static final TAG_VendorId:Ljava/lang/String; = "VendorId"

.field public static final TAG_VendorType:Ljava/lang/String; = "VendorType"

.field private static final sSelectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnabled:Z

.field private final mPpsFile:Ljava/io/File;

.field private final mSPs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    .line 130
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->sSelectionMap:Ljava/util/Map;

    .line 134
    const-string/jumbo v0, "FQDN_Match"

    new-array v1, v7, [Ljava/lang/Object;

    .line 135
    const-string/jumbo v2, "exactmatch"

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v5

    .line 136
    const-string/jumbo v2, "includesubdomains"

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    .line 134
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->setSelections(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    const-string/jumbo v0, "UpdateMethod"

    new-array v1, v7, [Ljava/lang/Object;

    .line 138
    const-string/jumbo v2, "oma-dm-clientinitiated"

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v5

    .line 139
    const-string/jumbo v2, "spp-clientinitiated"

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    .line 137
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->setSelections(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    const-string/jumbo v0, "Restriction"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 141
    const-string/jumbo v2, "homesp"

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->HomeSP:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    aput-object v2, v1, v5

    .line 142
    const-string/jumbo v2, "roamingpartner"

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->RoamingPartner:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    aput-object v2, v1, v3

    .line 143
    const-string/jumbo v2, "unrestricted"

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->Unrestricted:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 140
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->setSelections(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "HomeSP"

    aput-object v1, v0, v4

    const-string/jumbo v1, "FQDN"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->FQDNPath:Ljava/util/List;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "ppsFile"    # Ljava/io/File;
    .param p2, "hs2enabled"    # Z

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    .line 160
    iput-boolean p2, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    .line 158
    return-void
.end method

.method private addSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 7
    .param p1, "mo"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 290
    const/4 v0, 0x0

    .local v0, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 291
    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v2

    .line 292
    .local v2, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 293
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    throw v4

    :catch_0
    move-exception v4

    goto :goto_0

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v0    # "in":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v3

    .end local v0    # "in":Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    if-eqz v4, :cond_3

    throw v4

    :catch_2
    move-exception v5

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_3

    :cond_2
    if-eq v4, v5, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    throw v3

    .line 294
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    .line 288
    return-void

    .line 293
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v0    # "in":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v3

    goto :goto_2

    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v0, "in":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v0    # "in":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private static buildCredential(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/Credential;
    .locals 44
    .param p0, "credNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 723
    const-string/jumbo v5, "CreationDate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    move-result-wide v6

    .line 724
    .local v6, "ctime":J
    const-string/jumbo v5, "ExpirationDate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    move-result-wide v8

    .line 725
    .local v8, "expTime":J
    const-string/jumbo v5, "Realm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v10

    .line 726
    .local v10, "realm":Ljava/lang/String;
    const-string/jumbo v5, "CheckAAAServerCertStatus"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    move-result v11

    .line 728
    .local v11, "checkAAACert":Z
    const-string/jumbo v5, "UsernamePassword"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v41

    .line 729
    .local v41, "unNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v5, "DigitalCertificate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v18

    .line 730
    .local v18, "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v5, "SIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v40

    .line 733
    .local v40, "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v41, :cond_0

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v4, v5, 0x0

    .line 734
    .local v4, "alternatives":I
    if-eqz v18, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/2addr v4, v5

    .line 735
    if-eqz v40, :cond_2

    const/4 v5, 0x1

    :goto_2
    add-int/2addr v4, v5

    .line 736
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 737
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Expected exactly one credential type, got "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 733
    .end local v4    # "alternatives":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 734
    .restart local v4    # "alternatives":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 735
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 740
    :cond_3
    if-eqz v41, :cond_a

    .line 741
    const-string/jumbo v5, "Username"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v13

    .line 742
    .local v13, "userName":Ljava/lang/String;
    const-string/jumbo v5, "Password"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v14

    .line 743
    .local v14, "password":Ljava/lang/String;
    const-string/jumbo v5, "MachineManaged"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    move-result v15

    .line 744
    .local v15, "machineManaged":Z
    const-string/jumbo v5, "SoftTokenApp"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v16

    .line 745
    .local v16, "softTokenApp":Ljava/lang/String;
    const-string/jumbo v5, "AbleToShare"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    move-result v17

    .line 747
    .local v17, "ableToShare":Z
    const-string/jumbo v5, "EAPMethod"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v32

    .line 748
    .local v32, "eapMethodNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v5, "EAPType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v30

    .line 750
    .local v30, "eapID":I
    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v31

    .line 751
    .local v31, "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-nez v31, :cond_4

    .line 752
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unknown EAP method: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 755
    :cond_4
    const-string/jumbo v5, "VendorId"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v42

    .line 756
    .local v42, "vid":Ljava/lang/Long;
    const-string/jumbo v5, "VendorType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v43

    .line 757
    .local v43, "vtype":Ljava/lang/Long;
    const-string/jumbo v5, "InnerEAPType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v34

    .line 758
    .local v34, "innerEAPType":Ljava/lang/Long;
    const/16 v33, 0x0

    .line 759
    .local v33, "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-eqz v34, :cond_5

    .line 760
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v33

    .line 761
    .local v33, "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-nez v33, :cond_5

    .line 762
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Bad inner EAP method: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 766
    .end local v33    # "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    :cond_5
    const-string/jumbo v5, "InnerVendorID"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v36

    .line 767
    .local v36, "innerVid":Ljava/lang/Long;
    const-string/jumbo v5, "InnerVendorType"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v37

    .line 768
    .local v37, "innerVtype":Ljava/lang/Long;
    const-string/jumbo v5, "InnerMethod"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v35

    .line 771
    .local v35, "innerNonEAPMethod":Ljava/lang/String;
    if-eqz v33, :cond_6

    .line 772
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;

    move-object/from16 v0, v33

    invoke-direct {v5, v0}, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .line 787
    .local v12, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :goto_3
    new-instance v5, Lcom/android/server/wifi/hotspot2/pps/Credential;

    invoke-direct/range {v5 .. v17}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-object v5

    .line 773
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_6
    if-eqz v42, :cond_7

    .line 774
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    .line 775
    new-instance v5, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    sget-object v19, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    .line 776
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->intValue()I

    move-result v20

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 775
    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;IJ)V

    .line 774
    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    .line 777
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_7
    if-eqz v36, :cond_8

    .line 779
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    sget-object v19, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    .line 780
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->intValue()I

    move-result v20

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 779
    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;IJ)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .line 778
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    .line 781
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_8
    if-eqz v35, :cond_9

    .line 782
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    new-instance v5, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    .line 784
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_9
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v19, "Incomplete set of EAP parameters"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 790
    .end local v13    # "userName":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "machineManaged":Z
    .end local v16    # "softTokenApp":Ljava/lang/String;
    .end local v17    # "ableToShare":Z
    .end local v30    # "eapID":I
    .end local v31    # "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .end local v32    # "eapMethodNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v34    # "innerEAPType":Ljava/lang/Long;
    .end local v35    # "innerNonEAPMethod":Ljava/lang/String;
    .end local v36    # "innerVid":Ljava/lang/Long;
    .end local v37    # "innerVtype":Ljava/lang/Long;
    .end local v42    # "vid":Ljava/lang/Long;
    .end local v43    # "vtype":Ljava/lang/Long;
    :cond_a
    if-eqz v18, :cond_b

    .line 792
    :try_start_0
    const-string/jumbo v5, "CertificateType"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v29

    .line 793
    .local v29, "certTypeString":Ljava/lang/String;
    const-string/jumbo v5, "CertSHA256Fingerprint"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOctets(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)[B

    move-result-object v28

    .line 795
    .local v28, "fingerPrint":[B
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    sget-object v5, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v12, v5, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .line 797
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    new-instance v19, Lcom/android/server/wifi/hotspot2/pps/Credential;

    .line 798
    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/hotspot2/pps/Credential;->mapCertType(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    move-result-object v27

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    .line 797
    invoke-direct/range {v19 .. v28}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;[B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v19

    .line 799
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v28    # "fingerPrint":[B
    .end local v29    # "certTypeString":Ljava/lang/String;
    :catch_0
    move-exception v39

    .line 800
    .local v39, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Bad hex string: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v39 .. v39}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 803
    .end local v39    # "nfe":Ljava/lang/NumberFormatException;
    :cond_b
    if-eqz v40, :cond_c

    .line 805
    :try_start_1
    new-instance v27, Lcom/android/server/wifi/IMSIParameter;

    const-string/jumbo v5, "IMSI"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Lcom/android/server/wifi/IMSIParameter;-><init>(Ljava/lang/String;)V

    .line 808
    .local v27, "imsi":Lcom/android/server/wifi/IMSIParameter;
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    const-string/jumbo v5, "EAPType"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v5

    .line 809
    const/16 v19, 0x0

    .line 808
    move-object/from16 v0, v19

    invoke-direct {v12, v5, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    .line 811
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    new-instance v19, Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    invoke-direct/range {v19 .. v27}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/IMSIParameter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v19

    .line 812
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v27    # "imsi":Lcom/android/server/wifi/IMSIParameter;
    :catch_1
    move-exception v38

    .line 813
    .local v38, "ioe":Ljava/io/IOException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed to parse IMSI: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 816
    .end local v38    # "ioe":Ljava/io/IOException;
    :cond_c
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v19, "Missing credential parameters"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 40
    .param p0, "ppsRoot"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "updateIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 646
    const-string/jumbo v2, "HomeSP"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v32

    .line 648
    .local v32, "spRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "FQDN"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v4

    .line 649
    .local v4, "fqdn":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "FriendlyName"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v9

    .line 650
    .local v9, "friendlyName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "IconURL"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v10

    .line 652
    .local v10, "iconURL":Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 653
    .local v5, "roamingConsortiums":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "RoamingConsortiumOI"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v29

    .line 654
    .local v29, "oiString":Ljava/lang/String;
    if-eqz v29, :cond_0

    .line 655
    const-string/jumbo v2, ","

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x0

    array-length v0, v13

    move/from16 v17, v0

    :goto_0
    move/from16 v0, v17

    if-ge v2, v0, :cond_0

    aget-object v28, v13, v2

    .line 656
    .local v28, "oi":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x10

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 655
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    .end local v28    # "oi":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 662
    .local v3, "ssids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "NetworkID"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v33

    .line 663
    .local v33, "ssidListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v33, :cond_1

    .line 664
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, "ssidRoot$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 665
    .local v34, "ssidRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "HESSID"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v23

    .line 666
    .local v23, "hessidNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "SSID"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getMac(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v3, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 670
    .end local v23    # "hessidNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v34    # "ssidRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v35    # "ssidRoot$iterator":Ljava/util/Iterator;
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 671
    .local v7, "matchAnyOIs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v8, "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "HomeOIList"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v25

    .line 673
    .local v25, "homeOIListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v25, :cond_3

    .line 674
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "homeOIRoot$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 675
    .local v26, "homeOIRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "HomeOI"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v24

    .line 676
    .local v24, "homeOI":Ljava/lang/String;
    const-string/jumbo v2, "HomeOIRequired"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 677
    const/16 v2, 0x10

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 679
    :cond_2
    const/16 v2, 0x10

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 684
    .end local v24    # "homeOI":Ljava/lang/String;
    .end local v26    # "homeOIRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v27    # "homeOIRoot$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 686
    .local v6, "otherHomePartners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v13, "OtherHomePartners"

    const/16 v17, 0x0

    aput-object v13, v2, v17

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v30

    .line 687
    .local v30, "otherListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v30, :cond_4

    .line 688
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "fqdnNode$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 689
    .local v21, "fqdnNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "FQDN"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 693
    .end local v21    # "fqdnNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v22    # "fqdnNode$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v2, "Credential"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildCredential(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v11

    .line 695
    .local v11, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    const-string/jumbo v2, "Policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v31

    .line 696
    .local v31, "policyNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v31, :cond_6

    new-instance v12, Lcom/android/server/wifi/hotspot2/pps/Policy;

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Lcom/android/server/wifi/hotspot2/pps/Policy;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    .line 699
    :goto_4
    const-string/jumbo v2, "AAAServerTrustRoot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v18

    .line 700
    .local v18, "aaaRootNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v18, :cond_7

    .line 701
    const/4 v14, 0x0

    .line 710
    :cond_5
    const-string/jumbo v2, "SubscriptionUpdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v37

    .line 711
    .local v37, "updateNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v37, :cond_8

    new-instance v15, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    move-object/from16 v0, v37

    invoke-direct {v15, v0}, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    .line 712
    :goto_5
    const-string/jumbo v2, "SubscriptionParameters"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v36

    .line 713
    .local v36, "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v36, :cond_9

    .line 714
    new-instance v16, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    .line 716
    :goto_6
    new-instance v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .line 718
    const-string/jumbo v13, "CredentialPriority"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v13

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)I

    move-result v13

    move/from16 v17, p1

    .line 716
    invoke-direct/range {v2 .. v17}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;Lcom/android/server/wifi/hotspot2/pps/Policy;ILjava/util/Map;Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;I)V

    return-object v2

    .line 696
    .end local v18    # "aaaRootNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v36    # "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v37    # "updateNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_6
    const/4 v12, 0x0

    .local v12, "policy":Lcom/android/server/wifi/hotspot2/pps/Policy;
    goto :goto_4

    .line 703
    .end local v12    # "policy":Lcom/android/server/wifi/hotspot2/pps/Policy;
    .restart local v18    # "aaaRootNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_7
    new-instance v14, Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 704
    .local v14, "aaaTrustRoots":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "child$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 705
    .local v19, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "CertURL"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 706
    const-string/jumbo v13, "CertSHA256Fingerprint"

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 705
    invoke-interface {v14, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 711
    .end local v14    # "aaaTrustRoots":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v20    # "child$iterator":Ljava/util/Iterator;
    .restart local v37    # "updateNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_8
    const/4 v15, 0x0

    .local v15, "subscriptionUpdate":Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;
    goto :goto_5

    .line 714
    .end local v15    # "subscriptionUpdate":Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;
    .restart local v36    # "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_9
    const/16 v16, 0x0

    .local v16, "subscriptionParameters":Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;
    goto :goto_6
.end method

.method private static buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 32
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .param p1, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .param p2, "instanceID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-static/range {p2 .. p2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    .line 466
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 465
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v24

    .line 469
    .local v24, "providerSubNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "HomeSP"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v15

    .line 470
    .local v15, "homeSpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getSSIDs()Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_1

    .line 472
    const-string/jumbo v27, "NetworkID"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v20

    check-cast v20, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 473
    .local v20, "nwkIDNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    .line 474
    .local v17, "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getSSIDs()Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 476
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "instance":I
    .local v18, "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    .line 477
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 476
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v16

    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 478
    .local v16, "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v28, "SSID"

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v27

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 479
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_0

    .line 480
    const-string/jumbo v27, "HESSID"

    .line 481
    const-string/jumbo v28, "%012x"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 480
    const/16 v29, 0x0

    .line 481
    const/16 v30, 0x0

    .line 480
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    :cond_0
    move/from16 v17, v18

    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_0

    .line 486
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v17    # "instance":I
    .end local v20    # "nwkIDNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_1
    const-string/jumbo v27, "FriendlyName"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFriendlyName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getIconURL()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_2

    .line 489
    const-string/jumbo v27, "IconURL"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getIconURL()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 492
    :cond_2
    const-string/jumbo v27, "FQDN"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAllOIs()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAnyOIs()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 515
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getOtherHomePartners()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_6

    .line 517
    const-string/jumbo v27, "OtherHomePartners"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v23

    check-cast v23, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 518
    .local v23, "otherPartners":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    .line 519
    .restart local v17    # "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getOtherHomePartners()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "fqdn$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 521
    .local v12, "fqdn":Ljava/lang/String;
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    .line 522
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 521
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v16

    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 523
    .restart local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v27, "FQDN"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move/from16 v17, v18

    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_1

    .line 496
    .end local v12    # "fqdn":Ljava/lang/String;
    .end local v13    # "fqdn$iterator":Ljava/util/Iterator;
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v17    # "instance":I
    .end local v23    # "otherPartners":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_4
    const-string/jumbo v27, "HomeOIList"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v14

    check-cast v14, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 498
    .local v14, "homeOIList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    .line 499
    .restart local v17    # "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAllOIs()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "oi$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    .line 501
    .local v21, "oi":Ljava/lang/Long;
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    .line 502
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 501
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v16

    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 503
    .restart local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v27, "HomeOI"

    const-string/jumbo v28, "%x"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v21, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 504
    const-string/jumbo v27, "HomeOIRequired"

    const-string/jumbo v28, "TRUE"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move/from16 v17, v18

    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_2

    .line 506
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v21    # "oi":Ljava/lang/Long;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAnyOIs()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    .line 508
    .restart local v21    # "oi":Ljava/lang/Long;
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    move-result-object v27

    .line 509
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 508
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v16

    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 510
    .restart local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v27, "HomeOI"

    const-string/jumbo v28, "%x"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v21, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 511
    const-string/jumbo v27, "HomeOIRequired"

    const-string/jumbo v28, "FALSE"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move/from16 v17, v18

    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_3

    .line 527
    .end local v14    # "homeOIList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v17    # "instance":I
    .end local v21    # "oi":Ljava/lang/Long;
    .end local v22    # "oi$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_7

    .line 528
    const-string/jumbo v27, "RoamingConsortiumOI"

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getRCList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v28

    .line 528
    const/16 v29, 0x0

    .line 529
    const/16 v30, 0x0

    .line 528
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 533
    :cond_7
    const-string/jumbo v27, "Credential"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v8

    .line 534
    .local v8, "credentialNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v7

    .line 535
    .local v7, "cred":Lcom/android/server/wifi/hotspot2/pps/Credential;
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    move-result-object v19

    .line 537
    .local v19, "method":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCtime()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-lez v27, :cond_8

    .line 538
    const-string/jumbo v27, "CreationDate"

    .line 539
    sget-object v28, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    new-instance v29, Ljava/util/Date;

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCtime()J

    move-result-wide v30

    invoke-direct/range {v29 .. v31}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v28 .. v29}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 538
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 541
    :cond_8
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getExpTime()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-lez v27, :cond_9

    .line 542
    const-string/jumbo v27, "ExpirationDate"

    .line 543
    sget-object v28, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    new-instance v29, Ljava/util/Date;

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getExpTime()J

    move-result-wide v30

    invoke-direct/range {v29 .. v31}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v28 .. v29}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 542
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 546
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_a

    .line 547
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 550
    :cond_a
    const-string/jumbo v27, "SIM"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v25

    .line 551
    .local v25, "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "IMSI"

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/IMSIParameter;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 552
    const-string/jumbo v27, "EAPType"

    .line 553
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    .line 552
    const/16 v29, 0x0

    .line 553
    const/16 v30, 0x0

    .line 552
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 579
    .end local v25    # "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_4
    const-string/jumbo v27, "Realm"

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 584
    return-object v24

    .line 548
    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_a

    .line 555
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 557
    const-string/jumbo v27, "UsernamePassword"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v26

    .line 558
    .local v26, "unpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "Username"

    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getUserName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 559
    const-string/jumbo v27, "Password"

    .line 560
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v28

    .line 561
    const/16 v29, 0x0

    .line 560
    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v28

    .line 559
    const/16 v29, 0x0

    .line 561
    const/16 v30, 0x0

    .line 559
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 562
    const-string/jumbo v27, "EAPMethod"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v26 .. v30}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v9

    .line 563
    .local v9, "eapNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "EAPType"

    .line 564
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    .line 563
    const/16 v29, 0x0

    .line 564
    const/16 v30, 0x0

    .line 563
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 565
    const-string/jumbo v28, "InnerMethod"

    .line 566
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getAuthParam()Lcom/android/server/wifi/anqp/eap/AuthParam;

    move-result-object v27

    check-cast v27, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->getOMAtype()Ljava/lang/String;

    move-result-object v27

    .line 565
    const/16 v29, 0x0

    .line 566
    const/16 v30, 0x0

    .line 565
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    move-object/from16 v3, v30

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto/16 :goto_4

    .line 568
    .end local v9    # "eapNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v26    # "unpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-result-object v27

    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 570
    const-string/jumbo v27, "DigitalCertificate"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v6

    .line 571
    .local v6, "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "CertificateType"

    const-string/jumbo v28, "x509v3"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 572
    const-string/jumbo v27, "CertSHA256Fingerprint"

    .line 573
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getFingerPrint()[B

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/hotspot2/Utils;->toHex([B)Ljava/lang/String;

    move-result-object v28

    .line 572
    const/16 v29, 0x0

    .line 573
    const/16 v30, 0x0

    .line 572
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto/16 :goto_4

    .line 576
    .end local v6    # "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_d
    new-instance v27, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Invalid credential on "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v27
.end method

.method private static buildMoTree(Landroid/net/wifi/PasspointManagementObjectDefinition;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 3
    .param p0, "managementObjectDefinition"    # Landroid/net/wifi/PasspointManagementObjectDefinition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 385
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    .line 386
    .local v0, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    invoke-virtual {p0}, Landroid/net/wifi/PasspointManagementObjectDefinition;->getMoTree()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v1

    return-object v1
.end method

.method public static buildSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 6
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    .line 211
    .local v0, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    const-string/jumbo v3, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-virtual {v0, p0, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v2

    .line 212
    .local v2, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    move-result-object v1

    .line 213
    .local v1, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 214
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected exactly one HomeSP, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 216
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    return-object v3
.end method

.method private static buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;
    .locals 13
    .param p0, "moTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/omadm/MOTree;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 607
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v2, "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "PerProviderSubscription"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 610
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v8

    .line 612
    .local v8, "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v8, :cond_0

    .line 613
    return-object v2

    .line 616
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "node$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 617
    .local v4, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v10

    if-nez v10, :cond_1

    .line 618
    invoke-static {v4, v11}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 622
    .end local v4    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v5    # "node$iterator":Ljava/util/Iterator;
    .end local v8    # "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "ppsRoot$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 623
    .local v6, "ppsRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "PerProviderSubscription"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 624
    const/4 v9, 0x0

    .line 625
    .local v9, "updateIdentifier":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 626
    .local v3, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v9    # "updateIdentifier":Ljava/lang/Integer;
    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 627
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "UpdateIdentifier"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 628
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .local v9, "updateIdentifier":Ljava/lang/Integer;
    goto :goto_2

    .line 629
    .end local v9    # "updateIdentifier":Ljava/lang/Integer;
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v10

    if-nez v10, :cond_4

    .line 630
    move-object v3, v0

    .local v3, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    goto :goto_2

    .line 633
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v3    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_6
    if-nez v3, :cond_7

    .line 634
    new-instance v10, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v11, "PPS node missing instance node"

    invoke-direct {v10, v11}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 637
    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 636
    :goto_3
    invoke-static {v3, v10}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    move v10, v11

    .line 637
    goto :goto_3

    .line 642
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v6    # "ppsRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v7    # "ppsRoot$iterator":Ljava/util/Iterator;
    :cond_9
    return-object v2
.end method

.method private static findTargetTree(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 8
    .param p0, "moTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v4

    .line 299
    .local v4, "pps":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "node$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 300
    .local v1, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const/4 v0, 0x0

    .line 301
    .local v0, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "PerProviderSubscription"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v1

    .line 302
    check-cast v5, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceNode(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v0

    .line 306
    .end local v0    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 307
    sget-object v5, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->FQDNPath:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "nodeFqdn":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 309
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    return-object v1

    .line 303
    .end local v3    # "nodeFqdn":Ljava/lang/String;
    .restart local v0    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .restart local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v5

    if-nez v5, :cond_1

    .line 304
    move-object v0, v1

    .local v0, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    goto :goto_0

    .line 314
    .end local v0    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_3
    return-object v7
.end method

.method private static getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z
    .locals 1
    .param p0, "boolNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .prologue
    .line 885
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 4
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 820
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    .line 821
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_0

    .line 822
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No such node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 824
    :cond_0
    return-object v0
.end method

.method private static getInstanceNode(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 4
    .param p0, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 319
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    return-object v0

    .line 323
    :cond_1
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v3, "Cannot find instance node"

    invoke-direct {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getInstanceString(I)Ljava/lang/String;
    .locals 2
    .param p0, "instance"    # I

    .prologue
    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "r1i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I
    .locals 4
    .param p0, "intNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 900
    if-nez p0, :cond_0

    .line 901
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v2, "Missing integer value"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 904
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)I
    .locals 1
    .param p0, "intNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "dflt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 893
    if-nez p0, :cond_0

    .line 894
    return p1

    .line 896
    :cond_0
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v0

    return v0
.end method

.method public static getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J
    .locals 8
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dflt"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 838
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    .line 839
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_1

    .line 840
    if-eqz p2, :cond_0

    .line 841
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    return-wide v6

    .line 843
    :cond_0
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Missing value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 846
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v5

    if-nez v5, :cond_2

    .line 847
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not a leaf node"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 849
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 851
    .local v4, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 852
    .local v2, "result":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    .line 853
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Negative value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .end local v2    # "result":J
    :catch_0
    move-exception v1

    .line 857
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is non-numeric: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 855
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v2    # "result":J
    :cond_3
    return-wide v2
.end method

.method private static getMac(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;
    .locals 4
    .param p0, "macNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 911
    if-nez p0, :cond_0

    .line 912
    return-object v1

    .line 915
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getOctets(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)[B
    .locals 2
    .param p0, "octetNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 946
    if-nez p0, :cond_0

    .line 947
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v1, "Missing byte value"

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;
    .locals 4
    .param p0, "intNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 922
    if-nez p0, :cond_0

    .line 923
    return-object v1

    .line 926
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getRCList(Ljava/util/Collection;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, "rcs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 594
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "roamingConsortium$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 595
    .local v2, "roamingConsortium":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 596
    const/4 v1, 0x0

    .line 600
    :goto_1
    const-string/jumbo v4, "%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 598
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 602
    .end local v2    # "roamingConsortium":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getSelection(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 863
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    .line 864
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_0

    .line 865
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 866
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_1

    .line 867
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a leaf node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 869
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 873
    if-nez p1, :cond_0

    .line 874
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 876
    :cond_0
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->sSelectionMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 877
    .local v0, "kvp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 878
    .local v1, "result":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    .line 879
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 881
    :cond_1
    return-object v1
.end method

.method public static getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;
    .locals 1
    .param p0, "stringNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .prologue
    const/4 v0, 0x0

    .line 889
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    .line 829
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_0

    .line 830
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 831
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_1

    .line 832
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a leaf node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 834
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getTailPath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 6
    .param p0, "pathString"    # Ljava/lang/String;
    .param p1, "rootName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    const-string/jumbo v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "path":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "pathIndex":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 394
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    add-int/lit8 v1, v1, 0x1

    .line 399
    :cond_0
    array-length v3, v0

    if-lt v1, v3, :cond_2

    .line 400
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad node-path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 393
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 403
    .local v2, "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 404
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 407
    :cond_3
    return-object v2
.end method

.method public static getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J
    .locals 6
    .param p0, "timeNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 933
    if-nez p0, :cond_0

    .line 934
    const-wide/16 v4, -0x1

    return-wide v4

    .line 936
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 938
    .local v2, "timeText":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 939
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 940
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 941
    .local v1, "pe":Ljava/text/ParseException;
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Badly formatted time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static varargs setSelections(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "pairs"    # [Ljava/lang/Object;

    .prologue
    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v0, "kvp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->sSelectionMap:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 150
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method private static writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V
    .locals 6
    .param p0, "moTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 458
    .end local v0    # "out":Ljava/io/BufferedOutputStream;
    .local v1, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    .line 459
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 460
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v0    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v2

    .end local v0    # "out":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    if-eqz v3, :cond_3

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_3

    :cond_2
    if-eq v3, v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    throw v2

    .line 455
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :cond_4
    return-void

    .line 460
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v0    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v2

    goto :goto_2

    .end local v0    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .local v0, "out":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .end local v0    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v0    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public addSP(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 9
    .param p1, "instanceTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    move-result-object v4

    .line 257
    .local v4, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 258
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Expected exactly one HomeSP, got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 261
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .line 262
    .local v3, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "fqdn":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 264
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " already exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 267
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v6

    .line 268
    const-string/jumbo v7, "PerProviderSubscription"

    .line 267
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 271
    .local v2, "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->addSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-object v3

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getUrn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getDtdRev()Ljava/lang/String;

    move-result-object v7

    .line 274
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v8

    .line 273
    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    .line 275
    .local v5, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-static {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    goto :goto_0
.end method

.method public addSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 2
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    .line 221
    .local v0, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    const-string/jumbo v1, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->addSP(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v1

    return-object v1
.end method

.method public addSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 7
    .param p1, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 233
    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    if-nez v3, :cond_0

    .line 234
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "HS2.0 not enabled on this device"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HS20 profile for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 238
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 238
    const-string/jumbo v5, " already exists"

    .line 237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding new HS20 profile for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    const-string/jumbo v3, "PerProviderSubscription"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v0, v6, v3, v6, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 244
    .local v0, "dummyRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {p1, v0, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 246
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->addSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v3, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    .line 249
    const-string/jumbo v4, "1.2"

    .line 248
    invoke-static {v3, v4, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildMgmtTree(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v2

    .line 250
    .local v2, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    goto :goto_0
.end method

.method public getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 1
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    return-object v0
.end method

.method public getLoadedSPs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMOTree(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 439
    if-nez p1, :cond_0

    .line 440
    return-object v7

    .line 442
    :cond_0
    const/4 v1, 0x0

    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 443
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v3

    .line 444
    .local v3, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v3, p1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->findTargetTree(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 445
    .local v4, "target":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v4, :cond_3

    .line 452
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v5, v7

    :goto_0
    if-eqz v5, :cond_2

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 450
    :catch_0
    move-exception v0

    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    move-object v1, v2

    .line 451
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v4    # "target":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :goto_1
    return-object v7

    .line 452
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v4    # "target":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 446
    :cond_2
    return-object v7

    .line 448
    :cond_3
    :try_start_4
    const-string/jumbo v5, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    .line 449
    const-string/jumbo v6, "1.2"

    .line 448
    invoke-static {v5, v6, v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildMgmtTree(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->toXml()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v6

    .line 452
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    move-object v5, v7

    :goto_2
    if-eqz v5, :cond_5

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_2
    move-exception v5

    goto :goto_2

    .line 448
    :cond_5
    return-object v6

    .line 452
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v4    # "target":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v5

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_4
    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_6
    :goto_5
    if-eqz v6, :cond_8

    :try_start_9
    throw v6

    .line 450
    :catch_4
    move-exception v0

    .restart local v0    # "fnfe":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 452
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v8

    if-nez v6, :cond_7

    move-object v6, v8

    goto :goto_5

    :cond_7
    if-eq v6, v8, :cond_6

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    throw v5
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4

    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v5

    move-object v6, v7

    goto :goto_4

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v5

    move-object v6, v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method public isConfigured()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 169
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    return v0
.end method

.method public loadAllSPs()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 178
    iget-boolean v7, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 182
    const/4 v1, 0x0

    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 183
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    :try_start_2
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 191
    .local v3, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :try_start_3
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    move-result-object v6

    .line 192
    .local v6, "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    if-eqz v6, :cond_8

    .line 193
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "sp$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .line 194
    .local v4, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 195
    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Multiple SPs for FQDN \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v4    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v5    # "sp$iterator":Ljava/util/Iterator;
    .end local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_0
    move-exception v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_2
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_0
    :goto_3
    if-eqz v8, :cond_a

    throw v8

    .line 179
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    return-object v7

    .line 187
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v0

    .line 188
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v7

    .line 206
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :cond_2
    :goto_4
    if-eqz v8, :cond_3

    throw v8

    :catch_2
    move-exception v8

    goto :goto_4

    .line 188
    :cond_3
    return-object v7

    .line 197
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v4    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v5    # "sp$iterator":Ljava/util/Iterator;
    .restart local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_4
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 198
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retrieved "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " from PPS"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 197
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 206
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v4    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v5    # "sp$iterator":Ljava/util/Iterator;
    .end local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v5    # "sp$iterator":Ljava/util/Iterator;
    .restart local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_5
    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    :cond_6
    :goto_5
    if-eqz v8, :cond_7

    throw v8

    :catch_3
    move-exception v8

    goto :goto_5

    .line 201
    :cond_7
    return-object v6

    .line 204
    .end local v5    # "sp$iterator":Ljava/util/Iterator;
    :cond_8
    :try_start_a
    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v9, "Failed to build HomeSP"

    invoke-direct {v7, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 206
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_4
    move-exception v9

    if-nez v8, :cond_9

    move-object v8, v9

    goto :goto_3

    :cond_9
    if-eq v8, v9, :cond_0

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    throw v7

    .local v1, "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v7

    goto :goto_2

    :catch_5
    move-exception v7

    goto :goto_1
.end method

.method public modifySP(Ljava/lang/String;Ljava/util/Collection;)I
    .locals 22
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/PasspointManagementObjectDefinition;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 329
    .local p2, "mods":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "modifying SP: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v13, 0x0

    .line 333
    .local v13, "ppsMods":I
    const/16 v18, 0x0

    const/4 v3, 0x0

    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 334
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v6

    .line 337
    .local v6, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->findTargetTree(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v15

    .line 338
    .local v15, "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v15, :cond_1

    .line 339
    new-instance v17, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed to find PPS tree for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 375
    .end local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_0
    move-exception v17

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v18

    move-object/from16 v21, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v21

    :goto_1
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    if-eqz v18, :cond_a

    throw v18

    .line 341
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_1
    :try_start_4
    invoke-static {v15}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceNode(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v5

    .line 343
    .local v5, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "mod$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/PasspointManagementObjectDefinition;

    .line 344
    .local v7, "mod":Landroid/net/wifi/PasspointManagementObjectDefinition;
    invoke-virtual {v7}, Landroid/net/wifi/PasspointManagementObjectDefinition;->getBaseUri()Ljava/lang/String;

    move-result-object v17

    .line 345
    const-string/jumbo v19, "PerProviderSubscription"

    .line 344
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTailPath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v14

    .line 346
    .local v14, "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildMoTree(Landroid/net/wifi/PasspointManagementObjectDefinition;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v9

    .line 350
    .local v9, "modRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    invoke-virtual {v14}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string/jumbo v19, "UpdateIdentifier"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 351
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v16

    .line 352
    .local v16, "updateIdentifier":I
    const-string/jumbo v17, "UpdateIdentifier"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v12

    .line 353
    .local v12, "oldUdi":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-static {v12}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    .line 354
    add-int/lit8 v13, v13, 0x1

    .line 356
    :cond_3
    if-eqz v12, :cond_4

    .line 357
    const-string/jumbo v17, "UpdateIdentifier"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v12, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->replaceNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto :goto_3

    .line 375
    .end local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v7    # "mod":Landroid/net/wifi/PasspointManagementObjectDefinition;
    .end local v8    # "mod$iterator":Ljava/util/Iterator;
    .end local v9    # "modRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v12    # "oldUdi":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v14    # "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v16    # "updateIdentifier":I
    :catchall_1
    move-exception v17

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v3, "in":Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 359
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v7    # "mod":Landroid/net/wifi/PasspointManagementObjectDefinition;
    .restart local v8    # "mod$iterator":Ljava/util/Iterator;
    .restart local v9    # "modRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v12    # "oldUdi":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .restart local v14    # "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v16    # "updateIdentifier":I
    :cond_4
    const-string/jumbo v17, "UpdateIdentifier"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    goto :goto_3

    .line 362
    .end local v12    # "oldUdi":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v16    # "updateIdentifier":I
    :cond_5
    invoke-virtual {v14}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 363
    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    .line 364
    .local v2, "current":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v2, :cond_6

    .line 365
    new-instance v17, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "No previous node for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 367
    :cond_6
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "newNode$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 370
    .local v10, "newNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v10}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->replaceNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 371
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 375
    .end local v2    # "current":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v7    # "mod":Landroid/net/wifi/PasspointManagementObjectDefinition;
    .end local v9    # "modRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v10    # "newNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v11    # "newNode$iterator":Ljava/util/Iterator;
    .end local v14    # "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_7
    if-eqz v4, :cond_8

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_8
    :goto_5
    if-eqz v18, :cond_b

    throw v18

    :catch_1
    move-exception v18

    goto :goto_5

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v8    # "mod$iterator":Ljava/util/Iterator;
    .end local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_2
    move-exception v19

    if-nez v18, :cond_9

    move-object/from16 v18, v19

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_a
    throw v17

    .line 376
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v8    # "mod$iterator":Ljava/util/Iterator;
    .restart local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    .line 378
    return v13

    .line 375
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v8    # "mod$iterator":Ljava/util/Iterator;
    .end local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .local v3, "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v17

    goto/16 :goto_1

    :catch_3
    move-exception v17

    goto/16 :goto_0
.end method

.method public removeSP(Ljava/lang/String;)V
    .locals 11
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 415
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No HS20 profile to delete for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Deleting HS20 profile for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x0

    .local v0, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 424
    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    move-result-object v2

    .line 425
    .local v2, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v2, p1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->findTargetTree(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v5

    .line 426
    .local v5, "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v5, :cond_2

    .line 427
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Node "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " doesn\'t exist in MO tree"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 434
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_0
    move-exception v6

    move-object v0, v1

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-eqz v7, :cond_6

    throw v7

    .line 429
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v3

    .line 430
    .local v3, "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v6, "?"

    invoke-virtual {v3, v6, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->removeNode(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v4

    .line 431
    .local v4, "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v4, :cond_3

    .line 432
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to remove "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " out of MO tree"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 434
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v0, "in":Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .restart local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_3
    if-eqz v7, :cond_7

    throw v7

    :catch_1
    move-exception v7

    goto :goto_3

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_2
    move-exception v8

    if-nez v7, :cond_5

    move-object v7, v8

    goto :goto_2

    :cond_5
    if-eq v7, v8, :cond_1

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    throw v6

    .line 435
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .restart local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    invoke-static {v2, v6}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    .line 414
    return-void

    .line 434
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .local v0, "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v6

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_0
.end method
