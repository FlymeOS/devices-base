.class public Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;
.super Ljava/lang/Object;
.source "SubscriptionParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;
    }
.end annotation


# instance fields
.field private final mCDate:J

.field private final mLimits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Ljava/lang/String;

.field private final mXDate:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 7
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string/jumbo v3, "CreationDate"

    invoke-virtual {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mCDate:J

    .line 28
    const-string/jumbo v3, "ExpirationDate"

    invoke-virtual {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mXDate:J

    .line 29
    const-string/jumbo v3, "TypeOfSubscription"

    invoke-virtual {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mType:Ljava/lang/String;

    .line 31
    const-string/jumbo v3, "UsageLimits"

    invoke-virtual {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    .line 32
    .local v2, "ulNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v2, :cond_1

    .line 33
    iput-object v6, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mLimits:Ljava/util/List;

    .line 26
    :cond_0
    return-void

    .line 36
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mLimits:Ljava/util/List;

    .line 37
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "instance$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 38
    .local v0, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    const-string/jumbo v4, "Not expecting leaf node in UsageLimits"

    invoke-direct {v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 42
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mLimits:Ljava/util/List;

    new-instance v4, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;

    invoke-direct {v4, v0, v6}, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SubscriptionParameters{cDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mCDate:J

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->toUTCString(J)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    const-string/jumbo v1, ", xDate="

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mXDate:J

    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->toUTCString(J)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    const-string/jumbo v1, ", type=\'"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mType:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    const/16 v1, 0x27

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    const-string/jumbo v1, ", limits="

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mLimits:Ljava/util/List;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const/16 v1, 0x7d

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
