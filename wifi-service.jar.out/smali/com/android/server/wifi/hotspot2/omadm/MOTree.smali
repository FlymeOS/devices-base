.class public Lcom/android/server/wifi/hotspot2/omadm/MOTree;
.super Ljava/lang/Object;
.source "MOTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    }
.end annotation


# static fields
.field public static final DDFNameTag:Ljava/lang/String; = "DDFName"

.field public static final MgmtTreeTag:Ljava/lang/String; = "MgmtTree"

.field public static final NodeNameTag:Ljava/lang/String; = "NodeName"

.field public static final NodeTag:Ljava/lang/String; = "Node"

.field public static final PathTag:Ljava/lang/String; = "Path"

.field public static final RTPropTag:Ljava/lang/String; = "RTProperties"

.field public static final TypeTag:Ljava/lang/String; = "Type"

.field public static final ValueTag:Ljava/lang/String; = "Value"


# instance fields
.field private final mDtdRev:Ljava/lang/String;

.field private final mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

.field private final mUrn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V
    .locals 6
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p2, "urn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 30
    .local v2, "children":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v3, 0x0

    .line 32
    .local v3, "dtdRev":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 34
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "VerDTD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "dtdRev":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 41
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v3    # "dtdRev":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    .line 42
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    .line 44
    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;

    invoke-direct {v4, p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;-><init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 46
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 47
    .restart local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-static {v4, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    goto :goto_0

    .line 27
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V
    .locals 0
    .param p1, "urn"    # Ljava/lang/String;
    .param p2, "rev"    # Ljava/lang/String;
    .param p3, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .line 51
    return-void
.end method

.method public static buildMgmtTree(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 2
    .param p0, "urn"    # Ljava/lang/String;
    .param p1, "rev"    # Ljava/lang/String;
    .param p2, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .prologue
    .line 67
    const-string/jumbo v1, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;

    const-string/jumbo v1, "1.2"

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "realRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    .line 74
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    return-object v1

    .line 67
    .end local v0    # "realRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_1
    const-string/jumbo v1, "urn:oma:mo:oma-dm-devinfo:1.0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "urn:oma:mo:oma-dm-devdetail:1.0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "urn:wfa:mo-ext:hotspot2dot0-devdetail-ext:1.0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    return-object v1
.end method

.method private static buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V
    .locals 20
    .param p0, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "Node"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 123
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Node is a \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\' instead of a \'Node\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 125
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 126
    .local v4, "checkMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v8, 0x0

    .line 127
    .local v8, "context":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v16, "values":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v7, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v9, 0x0

    .line 132
    .local v9, "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v8    # "context":Ljava/lang/String;
    .end local v9    # "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    .local v6, "child$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 133
    .local v5, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 135
    .local v13, "old":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "NodeName"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 137
    if-eqz v9, :cond_7

    .line 138
    new-instance v17, Ljava/io/IOException;

    const-string/jumbo v18, "NodeName not expected"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 135
    :cond_2
    const-string/jumbo v18, "Path"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 143
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 144
    :cond_3
    new-instance v17, Ljava/io/IOException;

    const-string/jumbo v18, "Path not expected"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 135
    :cond_4
    const-string/jumbo v18, "Value"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 149
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_9

    .line 150
    new-instance v17, Ljava/io/IOException;

    const-string/jumbo v18, "Value in constructed node"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 135
    :cond_5
    const-string/jumbo v18, "RTProperties"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 159
    if-eqz v13, :cond_c

    .line 160
    new-instance v17, Ljava/io/IOException;

    const-string/jumbo v18, "Duplicate RTProperties"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 135
    :cond_6
    const-string/jumbo v18, "Node"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 169
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_d

    .line 170
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Scalar node "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " has Node child"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 139
    :cond_7
    new-instance v9, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;-><init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;)V

    .line 141
    .local v9, "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    goto/16 :goto_0

    .line 145
    .end local v9    # "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    :cond_8
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->-wrap0(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getValue()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 152
    :cond_a
    new-instance v17, Ljava/io/IOException;

    const-string/jumbo v18, "Value not expected"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 153
    :cond_b
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->-wrap1(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const/4 v9, 0x0

    .line 157
    .local v9, "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    goto/16 :goto_0

    .line 161
    .end local v9    # "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    :cond_c
    const-string/jumbo v17, "Type"

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    move-result-object v15

    .line 162
    .local v15, "typeNode":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    const-string/jumbo v17, "DDFName"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    move-result-object v10

    .line 163
    .local v10, "ddfName":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, "context":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 165
    new-instance v17, Ljava/io/IOException;

    const-string/jumbo v18, "No text in DDFName"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 171
    .end local v8    # "context":Ljava/lang/String;
    .end local v10    # "ddfName":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v15    # "typeNode":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_d
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 177
    .end local v5    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v13    # "old":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 178
    if-nez v9, :cond_f

    .line 179
    new-instance v17, Ljava/io/IOException;

    const-string/jumbo v18, "Missing name"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 181
    :cond_f
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getName()Ljava/lang/String;

    move-result-object v17

    .line 182
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v14

    .line 184
    .local v14, "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 185
    .restart local v5    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-static {v14, v5}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    goto :goto_1

    .line 188
    .end local v5    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v14    # "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_10
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_11

    .line 189
    new-instance v17, Ljava/io/IOException;

    const-string/jumbo v18, "Got both sub nodes and value(s)"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 191
    :cond_11
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "nodeData$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;

    .line 192
    .local v11, "nodeData":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getName()Ljava/lang/String;

    move-result-object v17

    .line 193
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    goto :goto_2

    .line 121
    .end local v11    # "nodeData":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    .end local v12    # "nodeData$iterator":Ljava/util/Iterator;
    :cond_12
    return-void
.end method

.method private static getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .locals 4
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    if-nez p0, :cond_0

    .line 200
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No node for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 202
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to have exactly one child"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 204
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to have child \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 206
    const-string/jumbo v3, "\' instead of \'"

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 206
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 206
    const-string/jumbo v3, "\'"

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_2
    return-object v0
.end method

.method public static hasMgmtTreeTag(Ljava/lang/String;)Z
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 81
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 82
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 83
    .local v6, "ch":C
    const/16 v0, 0x20

    if-le v6, v0, :cond_0

    .line 84
    const-string/jumbo v3, "<MgmtTree>"

    .line 85
    const-string/jumbo v0, "MgmtTree"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v5, v0, 0x2

    .line 84
    const/4 v1, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 81
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v6    # "ch":C
    :cond_1
    return v4
.end method

.method public static unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v3, 0x1

    .line 240
    .local v3, "strip":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v4, "tree":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 243
    .local v1, "octet":I
    if-gez v1, :cond_1

    .line 244
    new-instance v7, Ljava/io/FileNotFoundException;

    invoke-direct {v7}, Ljava/io/FileNotFoundException;-><init>()V

    throw v7

    .line 245
    :cond_1
    const/16 v7, 0x20

    if-le v1, v7, :cond_2

    .line 246
    int-to-char v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    const/4 v3, 0x0

    goto :goto_0

    .line 248
    :cond_2
    if-nez v3, :cond_0

    .line 252
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "tree"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 253
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Not a tree: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 256
    :cond_3
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->deserializeString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, "version":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 258
    .local v0, "next":I
    const/16 v7, 0x28

    if-eq v0, v7, :cond_4

    .line 259
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Expected URN in tree definition"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 261
    :cond_4
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->readURN(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "urn":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    move-result-object v2

    .line 265
    .local v2, "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    invoke-direct {v7, v5, v6, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    return-object v7
.end method


# virtual methods
.method public getDtdRev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    return-object v0
.end method

.method public getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    return-object v0
.end method

.method public getUrn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    return-object v0
.end method

.method public marshal(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 232
    const-string/jumbo v0, "tree "

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 233
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 234
    const-string/jumbo v0, "(%s)\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 235
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->marshal(Ljava/io/OutputStream;I)V

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "MO Tree v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", urn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->toXml(Ljava/lang/StringBuilder;)V

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
