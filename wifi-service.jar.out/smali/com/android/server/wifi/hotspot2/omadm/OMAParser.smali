.class public Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OMAParser.java"


# instance fields
.field private mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

.field private mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 25
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 23
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->addText([CII)V

    .line 74
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "End tag \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' doesn\'t match current node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 59
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string/jumbo v2, "Failed to close element"

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getRoot()Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "urn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Missing text string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 34
    .local v0, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v2, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 35
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-direct {v2, v3, p2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 36
    .end local v0    # "parser":Ljavax/xml/parsers/SAXParser;
    :catch_0
    move-exception v1

    .line 37
    .local v1, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 50
    .local v0, "parent":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-direct {v1, v2, p3, p4}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;-><init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 52
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    .line 47
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->mCurrent:Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->addChild(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    goto :goto_0
.end method
