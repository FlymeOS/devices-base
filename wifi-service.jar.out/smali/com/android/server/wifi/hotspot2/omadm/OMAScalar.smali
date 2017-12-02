.class public Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;
.super Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.source "OMAScalar.java"


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;",
            "Ljava/lang/String;",
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
    .line 19
    .local p5, "avps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->mValue:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public varargs constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "avps"    # [Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p5}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->buildAttributes([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    return-void
.end method


# virtual methods
.method public addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fillPayload(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 83
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->mValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    return-void
.end method

.method public getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' is a scalar node"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 3
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
    .line 34
    .local p1, "path":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Scalar encountered in list path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 1
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
    .line 29
    .local p1, "path":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public marshal(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->indent(ILjava/io/OutputStream;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 76
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 78
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 73
    return-void
.end method

.method public bridge synthetic reparent(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 1
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->reparent(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;

    move-result-object v0

    return-object v0
.end method

.method public reparent(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;
    .locals 6
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .prologue
    .line 25
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getContext()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->mValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getAttributes()Ljava/util/Map;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getPathString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getContext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    return-void
.end method
