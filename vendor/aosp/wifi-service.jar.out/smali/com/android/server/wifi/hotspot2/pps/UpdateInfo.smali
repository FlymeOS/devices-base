.class public Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;
    }
.end annotation


# instance fields
.field private final mCertFP:Ljava/lang/String;

.field private final mCertURL:Ljava/lang/String;

.field private final mInterval:J

.field private final mPassword:Ljava/lang/String;

.field private final mSPPClientInitiated:Z

.field private final mURI:Ljava/lang/String;

.field private final mUpdateRestriction:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

.field private final mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 9
    .param p1, "policyUpdate"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v3, "UpdateInterval"

    invoke-static {p1, v3, v8}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v4

    .line 37
    const-wide/32 v6, 0xea60

    .line 36
    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mInterval:J

    .line 39
    const-string/jumbo v3, "UpdateMethod"

    .line 38
    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getSelection(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mSPPClientInitiated:Z

    .line 41
    const-string/jumbo v3, "Restriction"

    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getSelection(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    .line 40
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUpdateRestriction:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    .line 42
    const-string/jumbo v3, "URI"

    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mURI:Ljava/lang/String;

    .line 44
    const-string/jumbo v3, "UsernamePassword"

    invoke-virtual {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    .line 45
    .local v2, "unp":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v2, :cond_0

    .line 46
    const-string/jumbo v3, "Username"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUsername:Ljava/lang/String;

    .line 47
    const-string/jumbo v3, "Password"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "pw":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 49
    const/4 v5, 0x0

    .line 48
    invoke-static {v4, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    .line 49
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 48
    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mPassword:Ljava/lang/String;

    .line 56
    .end local v0    # "pw":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "TrustRoot"

    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v1

    .line 57
    .local v1, "trustRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v3, "CertURL"

    invoke-static {v1, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mCertURL:Ljava/lang/String;

    .line 58
    const-string/jumbo v3, "CertSHA256Fingerprint"

    invoke-static {v1, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mCertFP:Ljava/lang/String;

    .line 35
    return-void

    .line 52
    .end local v1    # "trustRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_0
    iput-object v8, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUsername:Ljava/lang/String;

    .line 53
    iput-object v8, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mPassword:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCertFP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mCertFP:Ljava/lang/String;

    return-object v0
.end method

.method public getCertURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mCertURL:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mInterval:J

    return-wide v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mURI:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateRestriction()Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUpdateRestriction:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public isSPPClientInitiated()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mSPPClientInitiated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UpdateInfo{interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mInterval:J

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string/jumbo v1, ", SPPClientInitiated="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mSPPClientInitiated:Z

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    const-string/jumbo v1, ", updateRestriction="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUpdateRestriction:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string/jumbo v1, ", URI=\'"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mURI:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string/jumbo v1, ", username=\'"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUsername:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string/jumbo v1, ", password="

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mPassword:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    const-string/jumbo v1, ", certURL=\'"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mCertURL:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string/jumbo v1, ", certFP=\'"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mCertFP:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const/16 v1, 0x7d

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
