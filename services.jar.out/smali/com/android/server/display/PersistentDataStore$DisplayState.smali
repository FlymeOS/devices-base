.class final Lcom/android/server/display/PersistentDataStore$DisplayState;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayState"
.end annotation


# instance fields
.field private mColorMode:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/display/PersistentDataStore$DisplayState;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/PersistentDataStore$DisplayState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/PersistentDataStore$DisplayState;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>()V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    return-void
.end method


# virtual methods
.method public getColorMode()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    return v0
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 406
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "color-mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    goto :goto_0

    .line 403
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 415
    const-string/jumbo v0, "color-mode"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    const-string/jumbo v0, "color-mode"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    return-void
.end method

.method public setColorMode(I)Z
    .locals 1
    .param p1, "colorMode"    # I

    .prologue
    .line 391
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    if-ne p1, v0, :cond_0

    .line 392
    const/4 v0, 0x0

    return v0

    .line 394
    :cond_0
    iput p1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    .line 395
    const/4 v0, 0x1

    return v0
.end method
