.class Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;
.super Ljava/lang/Object;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/pps/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferredRoamingPartner"
.end annotation


# instance fields
.field private final mCountry:Ljava/lang/String;

.field private final mDomain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncludeSubDomains:Ljava/lang/Boolean;

.field private final mPriority:I


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 4
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const-string/jumbo v1, "FQDN_Match"

    invoke-static {p1, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "segments":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 156
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v2, "Bad FQDN match string: FQDN_Match"

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mDomain:Ljava/util/List;

    .line 160
    const-string/jumbo v1, "FQDN_Match"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 159
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mIncludeSubDomains:Ljava/lang/Boolean;

    .line 161
    const-string/jumbo v1, "Priority"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mPriority:I

    .line 162
    const-string/jumbo v1, "Country"

    invoke-static {p1, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mCountry:Ljava/lang/String;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;)V
    .locals 0
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PreferredRoamingPartner{domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mDomain:Ljava/util/List;

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    const-string/jumbo v1, ", includeSubDomains="

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mIncludeSubDomains:Ljava/lang/Boolean;

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    const-string/jumbo v1, ", priority="

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    iget v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mPriority:I

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    const-string/jumbo v1, ", country=\'"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mCountry:Ljava/lang/String;

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    const/16 v1, 0x27

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    const/16 v1, 0x7d

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
