.class public abstract Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.super Ljava/lang/Object;
.source "OMANode.java"


# static fields
.field private static final sEscapes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributes:Ljava/util/Map;
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

.field private final mContext:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mParent:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    .line 22
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "&quot;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "&apos;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "&lt;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "&gt;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string/jumbo v2, "&amp;"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p4, "avps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 31
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mContext:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mAttributes:Ljava/util/Map;

    .line 29
    return-void
.end method

.method protected static buildAttributes([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "avps"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 38
    return-object v2

    .line 40
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 42
    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 44
    :cond_1
    return-object v0
.end method

.method private static buildNode(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 169
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->deserializeString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 171
    return-object v6

    .line 174
    :cond_0
    const/4 v2, 0x0

    .line 175
    .local v2, "urn":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 176
    .local v1, "next":I
    const/16 v4, 0x28

    if-ne v1, v4, :cond_1

    .line 177
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->readURN(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "urn":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 181
    .end local v2    # "urn":Ljava/lang/String;
    :cond_1
    const/16 v4, 0x3d

    if-ne v1, v4, :cond_2

    .line 182
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->deserializeString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p1, v0, v2, v3, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v4

    return-object v4

    .line 184
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_4

    .line 185
    if-eqz p1, :cond_3

    .line 186
    invoke-virtual {p1, v0, v2, v6, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v4

    return-object v4

    .line 188
    :cond_3
    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-direct {v4, v6, v0, v2, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v4

    .line 192
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Parse error: expected = or + after node name"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 86
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 87
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 88
    .local v0, "ch":C
    sget-object v4, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->sEscapes:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    .local v1, "escape":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 95
    .end local v0    # "ch":C
    .end local v1    # "escape":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->buildNode(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    .line 149
    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Bad OMA tree"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v1, v0

    .line 152
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->unmarshal(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    .line 153
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .end local v0    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    return-object v0
.end method

.method private static unmarshal(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->buildNode(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    .line 159
    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_1

    .line 160
    return-void

    .line 162
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .end local v0    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->unmarshal(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract fillPayload(Ljava/lang/StringBuilder;)V
.end method

.method protected getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public abstract getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation
.end method

.method public abstract getChildren()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            ">;"
        }
    .end annotation
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mContext:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
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
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    return-object v0
.end method

.method public getPath()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 65
    .local v1, "path":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_0
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_0
    return-object v1
.end method

.method public getPathString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getPath()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, "element":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 76
    .end local v0    # "element":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public abstract getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;
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
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract isLeaf()Z
.end method

.method public abstract marshal(Ljava/io/OutputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reparent(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->toString(Ljava/lang/StringBuilder;I)V

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract toString(Ljava/lang/StringBuilder;I)V
.end method

.method public toXml(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x3c

    .line 122
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mAttributes:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mAttributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    :cond_0
    const-string/jumbo v2, ">\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "NodeName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v2, "</"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "NodeName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->fillPayload(Ljava/lang/StringBuilder;)V

    .line 137
    const-string/jumbo v2, "</"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    return-void

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mAttributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "avp$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    .local v0, "avp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 126
    const/16 v3, 0x22

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
