.class public Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;
.super Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
.source "ManagementTreeRoot.java"


# instance fields
.field private final mDtdRev:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V
    .locals 6
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p2, "dtdRev"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 29
    const-string/jumbo v2, "MgmtTree"

    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-direct {v4}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTextualAttributes()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v3, v1

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;Ljava/util/Map;)V

    .line 31
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->mDtdRev:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "dtdRev"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 35
    const-string/jumbo v0, "MgmtTree"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "xmlns"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "syncml:dmddf1.2"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {p0, v4, v0, v4, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->mDtdRev:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public toXml(Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v6, 0x3c

    .line 41
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "MgmtTree"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->getAttributes()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    :cond_0
    const-string/jumbo v4, ">\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "VerDTD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 51
    const/16 v5, 0x3e

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 51
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->mDtdRev:Ljava/lang/String;

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 52
    const-string/jumbo v5, "</"

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 52
    const-string/jumbo v5, "VerDTD"

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 52
    const-string/jumbo v5, ">\n"

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->getChildren()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 54
    .local v2, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->toXml(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 43
    .end local v2    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v3    # "child$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "avp$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    .local v0, "avp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 45
    const/16 v5, 0x22

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 56
    .end local v0    # "avp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "avp$iterator":Ljava/util/Iterator;
    .restart local v3    # "child$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v4, "</"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "MgmtTree"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    return-void
.end method
