.class public Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
.super Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.source "OMAConstructed.java"


# instance fields
.field private final mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;Ljava/util/Map;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p4, "children":Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;, "Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap<Lcom/android/server/wifi/hotspot2/omadm/OMANode;>;"
    .local p5, "avps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 21
    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    .line 19
    return-void
.end method

.method public varargs constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;
    .param p4, "avps"    # [Ljava/lang/String;

    .prologue
    .line 15
    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-direct {v4}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;-><init>()V

    invoke-static {p4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->buildAttributes([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;Ljava/util/Map;)V

    .line 14
    return-void
.end method


# virtual methods
.method public addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "pathString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 27
    if-nez p4, :cond_1

    .line 28
    if-eqz p3, :cond_0

    .line 29
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;

    new-array v5, v1, [Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    return-object v0

    .line 30
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_0
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    goto :goto_0

    .line 34
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    move-object v7, p0

    .line 35
    .local v7, "target":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_1
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v7

    goto :goto_1

    .line 38
    :cond_2
    const-string/jumbo v2, "/"

    invoke-virtual {p4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_5

    aget-object v6, v2, v1

    .line 39
    .local v6, "element":Ljava/lang/String;
    invoke-virtual {v7, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v7

    .line 40
    if-nez v7, :cond_3

    .line 41
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No child node \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_3
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 43
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot add child to leaf node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 45
    .end local v6    # "element":Ljava/lang/String;
    :cond_5
    invoke-virtual {v7, p1, p2, p3, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v1

    return-object v1
.end method

.method public addChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->reparent(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public fillPayload(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x3c

    .line 158
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "RTProperties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "DDFName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v2, "</"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "DDFName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string/jumbo v2, "</"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v2, "</"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "RTProperties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 169
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->toXml(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 157
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    return-void
.end method

.method public getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    return-object v0
.end method

.method public getChildren()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .local p1, "path":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    return-object v3

    .line 76
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->getSingletonValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 85
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_0
    if-nez v0, :cond_2

    .line 86
    return-object v3

    .line 82
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .restart local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    goto :goto_0

    .line 88
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v2

    return-object v2

    .line 91
    :cond_3
    return-object v0
.end method

.method public getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .local p1, "path":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Path too short for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 64
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 67
    :cond_1
    return-object v3
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isLeaf()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public marshal(Ljava/io/OutputStream;I)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->indent(ILjava/io/OutputStream;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 145
    const-string/jumbo v2, "(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 147
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 149
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 150
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->marshal(Ljava/io/OutputStream;I)V

    goto :goto_0

    .line 152
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    invoke-static {p2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->indent(ILjava/io/OutputStream;)V

    .line 153
    const-string/jumbo v2, ".\n"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 141
    return-void

    .line 147
    nop

    :array_0
    .array-data 1
        0x2bt
        0xat
    .end array-data
.end method

.method public removeNode(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .prologue
    .line 114
    const-string/jumbo v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    return-object v0
.end method

.method public reparent(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 6
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .prologue
    .line 51
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getAttributes()Ljava/util/Map;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic reparent(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 1
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->reparent(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v0

    return-object v0
.end method

.method public replaceNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 2
    .param p1, "oldNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p2, "newNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->replace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 131
    const-string/jumbo v2, " ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    :cond_0
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->mChildren:Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MultiValueMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 136
    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->toString(Ljava/lang/StringBuilder;I)V

    goto :goto_0

    .line 128
    .end local v0    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    return-void
.end method
