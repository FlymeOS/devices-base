.class public Lcom/android/server/wifi/anqp/I18Name;
.super Ljava/lang/Object;
.source "I18Name.java"


# instance fields
.field private final mLanguage:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "compoundString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 37
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "I18String too short: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mLocale:Ljava/util/Locale;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 22
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Truncated I18Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 25
    .local v0, "nameLength":I
    if-ge v0, v3, :cond_1

    .line 26
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Runt I18Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 28
    invoke-static {p1, v3, v1}, Lcom/android/server/wifi/anqp/Constants;->getTrimmedString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mLocale:Ljava/util/Locale;

    .line 31
    add-int/lit8 v1, v0, -0x3

    .line 32
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 31
    invoke-static {p1, v1, v2}, Lcom/android/server/wifi/anqp/Constants;->getString(Ljava/nio/ByteBuffer;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 58
    if-ne p0, p1, :cond_0

    .line 59
    const/4 v1, 0x1

    return v1

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/I18Name;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 62
    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/android/server/wifi/anqp/I18Name;

    .line 66
    .local v0, "that":Lcom/android/server/wifi/anqp/I18Name;
    iget-object v2, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 72
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 73
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/anqp/I18Name;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
