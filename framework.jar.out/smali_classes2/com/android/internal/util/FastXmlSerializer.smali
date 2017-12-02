.class public Lcom/android/internal/util/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final BUFFER_LEN:I = 0x2000

.field private static final ESCAPE_TABLE:[Ljava/lang/String;

.field private static sSpace:Ljava/lang/String;


# instance fields
.field private mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mInTag:Z

.field private mIndent:Z

.field private mLineStart:Z

.field private mNesting:I

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mText:[C

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    .line 42
    const-string/jumbo v1, "&#0;"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#1;"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#2;"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#3;"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#4;"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#5;"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#6;"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#7;"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "&#8;"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#9;"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#10;"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#11;"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#12;"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#13;"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#14;"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#15;"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "&#16;"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#17;"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#18;"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#19;"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#20;"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#21;"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#22;"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#23;"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "&#24;"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#25;"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#26;"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#27;"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#28;"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#29;"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#30;"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "&#31;"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 46
    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    const-string/jumbo v1, "&quot;"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const-string/jumbo v1, "&amp;"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const/16 v1, 0x27

    aput-object v3, v0, v1

    .line 47
    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    .line 48
    const/16 v1, 0x30

    aput-object v3, v0, v1

    const/16 v1, 0x31

    aput-object v3, v0, v1

    const/16 v1, 0x32

    aput-object v3, v0, v1

    const/16 v1, 0x33

    aput-object v3, v0, v1

    const/16 v1, 0x34

    aput-object v3, v0, v1

    const/16 v1, 0x35

    aput-object v3, v0, v1

    const/16 v1, 0x36

    aput-object v3, v0, v1

    const/16 v1, 0x37

    aput-object v3, v0, v1

    .line 49
    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    aput-object v3, v0, v1

    const-string/jumbo v1, "&lt;"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const-string/jumbo v1, "&gt;"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    .line 41
    sput-object v0, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "                                                              "

    sput-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2000

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    .line 63
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    .line 68
    iput v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 40
    return-void
.end method

.method private append(C)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 73
    .local v0, "pos":I
    const/16 v1, 0x1fff

    if-lt v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 75
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    aput-char p1, v1, v0

    .line 78
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 71
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 119
    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2000

    .line 82
    if-le p3, v4, :cond_2

    .line 83
    add-int v0, p2, p3

    .line 84
    .local v0, "end":I
    :goto_0
    if-ge p2, v0, :cond_1

    .line 85
    add-int/lit16 v1, p2, 0x2000

    .line 86
    .local v1, "next":I
    if-ge v1, v0, :cond_0

    move v3, v4

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 87
    move p2, v1

    goto :goto_0

    .line 86
    :cond_0
    sub-int v3, v0, p2

    goto :goto_1

    .line 89
    .end local v1    # "next":I
    :cond_1
    return-void

    .line 91
    .end local v0    # "end":I
    :cond_2
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 92
    .local v2, "pos":I
    add-int v3, v2, p3

    if-le v3, v4, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 94
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 96
    :cond_3
    add-int v3, p2, p3

    iget-object v4, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    invoke-virtual {p1, p2, v3, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 97
    add-int v3, v2, p3

    iput v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 81
    return-void
.end method

.method private append([CII)V
    .locals 5
    .param p1, "buf"    # [C
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2000

    .line 101
    if-le p3, v4, :cond_2

    .line 102
    add-int v0, p2, p3

    .line 103
    .local v0, "end":I
    :goto_0
    if-ge p2, v0, :cond_1

    .line 104
    add-int/lit16 v1, p2, 0x2000

    .line 105
    .local v1, "next":I
    if-ge v1, v0, :cond_0

    move v3, v4

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    .line 106
    move p2, v1

    goto :goto_0

    .line 105
    :cond_0
    sub-int v3, v0, p2

    goto :goto_1

    .line 108
    .end local v1    # "next":I
    :cond_1
    return-void

    .line 110
    .end local v0    # "end":I
    :cond_2
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 111
    .local v2, "pos":I
    add-int v3, v2, p3

    if-le v3, v4, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 113
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 115
    :cond_3
    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 116
    add-int v3, v2, p3

    iput v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 100
    return-void
.end method

.method private appendIndent(I)V
    .locals 2
    .param p1, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    mul-int/lit8 p1, p1, 0x4

    .line 125
    sget-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 126
    sget-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 128
    :cond_0
    sget-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 123
    return-void
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 133
    .local v0, "N":I
    sget-object v7, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v7, v7

    int-to-char v1, v7

    .line 134
    .local v1, "NE":C
    sget-object v4, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 135
    .local v4, "escapes":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 137
    .local v5, "lastPos":I
    const/4 v6, 0x0

    .local v6, "pos":I
    :goto_0
    if-ge v6, v0, :cond_3

    .line 138
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 139
    .local v2, "c":C
    if-lt v2, v1, :cond_1

    .line 137
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    :cond_1
    aget-object v3, v4, v2

    .line 141
    .local v3, "escape":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 142
    if-ge v5, v6, :cond_2

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 143
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .line 144
    invoke-direct {p0, v3}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    .end local v2    # "c":C
    .end local v3    # "escape":Ljava/lang/String;
    :cond_3
    if-ge v5, v6, :cond_4

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 131
    :cond_4
    return-void
.end method

.method private escapeAndAppendString([CII)V
    .locals 8
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    sget-object v7, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v7, v7

    int-to-char v0, v7

    .line 151
    .local v0, "NE":C
    sget-object v4, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 152
    .local v4, "escapes":[Ljava/lang/String;
    add-int v2, p2, p3

    .line 153
    .local v2, "end":I
    move v5, p2

    .line 155
    .local v5, "lastPos":I
    move v6, p2

    .local v6, "pos":I
    :goto_0
    if-ge v6, v2, :cond_3

    .line 156
    aget-char v1, p1, v6

    .line 157
    .local v1, "c":C
    if-lt v1, v0, :cond_1

    .line 155
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 158
    :cond_1
    aget-object v3, v4, v1

    .line 159
    .local v3, "escape":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 160
    if-ge v5, v6, :cond_2

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    .line 161
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .line 162
    invoke-direct {p0, v3}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 164
    .end local v1    # "c":C
    .end local v3    # "escape":Ljava/lang/String;
    :cond_3
    if-ge v5, v6, :cond_4

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    .line 149
    :cond_4
    return-void
.end method

.method private flushBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, "position":I
    if-lez v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 233
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 234
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 229
    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 169
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 172
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 174
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v0, "=\""

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p3}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 178
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 180
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    .line 198
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 204
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    .line 205
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 206
    const-string/jumbo v0, " />\n"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 219
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    .line 221
    return-object p0

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    if-eqz v0, :cond_1

    .line 209
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->appendIndent(I)V

    .line 211
    :cond_1
    const-string/jumbo v0, "</"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 212
    if-eqz p1, :cond_2

    .line 213
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 214
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 216
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v0, ">\n"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 240
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    if-lez v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_3

    .line 242
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    iget v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    invoke-static {v2, v5, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 243
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 245
    .local v1, "result":Ljava/nio/charset/CoderResult;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/android/internal/util/FastXmlSerializer;->flushBytes()V

    .line 249
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_0

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/util/FastXmlSerializer;->flushBytes()V

    .line 255
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 260
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :goto_1
    iput v5, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    .line 238
    :cond_2
    return-void

    .line 257
    :cond_3
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    iget v4, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    .line 258
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 301
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    .line 303
    return-void

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 314
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    .line 315
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 314
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    .line 316
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 314
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    iput-object p1, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    .line 309
    return-void

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v2, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/UnsupportedEncodingException;

    throw v2

    .line 317
    .end local v1    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_1
    move-exception v0

    .line 318
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v2, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/UnsupportedEncodingException;

    throw v2
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    .line 334
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "yes"

    .line 350
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    const-string/jumbo v1, "\' ?>\n"

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 349
    return-void

    .line 351
    :cond_0
    const-string/jumbo v0, "no"

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 358
    const-string/jumbo v0, ">\n"

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 360
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1

    .line 361
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->appendIndent(I)V

    .line 363
    :cond_1
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    .line 364
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 365
    if-eqz p1, :cond_2

    .line 366
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 367
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    .line 369
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 372
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 390
    iget-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    if-eqz v1, :cond_0

    .line 391
    const-string/jumbo v1, ">"

    invoke-direct {p0, v1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 392
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    .line 394
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 395
    iget-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    if-eqz v1, :cond_2

    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 398
    :cond_2
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 377
    iget-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    if-eqz v1, :cond_0

    .line 378
    const-string/jumbo v1, ">"

    invoke-direct {p0, v1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 379
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    .line 381
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString([CII)V

    .line 382
    iget-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    if-eqz v1, :cond_2

    .line 383
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    aget-char v1, p1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    .line 385
    :cond_2
    return-object p0
.end method
