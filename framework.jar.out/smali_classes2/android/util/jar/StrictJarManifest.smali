.class public Landroid/util/jar/StrictJarManifest;
.super Ljava/lang/Object;
.source "StrictJarManifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/jar/StrictJarManifest$Chunk;
    }
.end annotation


# static fields
.field static final LINE_LENGTH_LIMIT:I = 0x48

.field private static final LINE_SEPARATOR:[B

.field private static final VALUE_SEPARATOR:[B


# instance fields
.field private chunks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest$Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private final entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private final mainAttributes:Ljava/util/jar/Attributes;

.field private mainEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 43
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    .line 45
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/util/jar/StrictJarManifest;->VALUE_SEPARATOR:[B

    .line 40
    return-void

    .line 43
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 45
    nop

    :array_1
    .array-data 1
        0x3at
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/util/jar/StrictJarManifest;)V
    .locals 1
    .param p1, "man"    # Landroid/util/jar/StrictJarManifest;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget-object v0, p1, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    .line 100
    invoke-virtual {p1}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifest;-><init>()V

    .line 87
    invoke-static {p1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/jar/StrictJarManifest;->read([B)V

    .line 85
    return-void
.end method

.method constructor <init>([BZ)V
    .locals 1
    .param p1, "manifestBytes"    # [B
    .param p2, "readChunks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifest;-><init>()V

    .line 106
    if-eqz p2, :cond_0

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Landroid/util/jar/StrictJarManifest;->read([B)V

    .line 104
    return-void
.end method

.method private read([B)V
    .locals 3
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    array-length v1, p1

    if-nez v1, :cond_0

    .line 191
    return-void

    .line 194
    :cond_0
    new-instance v0, Landroid/util/jar/StrictJarManifestReader;

    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-direct {v0, p1, v1}, Landroid/util/jar/StrictJarManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    .line 195
    .local v0, "im":Landroid/util/jar/StrictJarManifestReader;
    invoke-virtual {v0}, Landroid/util/jar/StrictJarManifestReader;->getEndOfMainSection()I

    move-result v1

    iput v1, p0, Landroid/util/jar/StrictJarManifest;->mainEnd:I

    .line 196
    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/util/jar/StrictJarManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V

    .line 189
    return-void
.end method

.method static write(Landroid/util/jar/StrictJarManifest;Ljava/io/OutputStream;)V
    .locals 10
    .param p0, "manifest"    # Landroid/util/jar/StrictJarManifest;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    .line 257
    .local v2, "encoder":Ljava/nio/charset/CharsetEncoder;
    const/16 v9, 0x48

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 259
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    sget-object v8, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    .line 260
    .local v8, "versionName":Ljava/util/jar/Attributes$Name;
    iget-object v9, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v9, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "version":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 262
    sget-object v8, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    .line 263
    iget-object v9, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v9, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 265
    :cond_0
    if-eqz v7, :cond_2

    .line 266
    invoke-static {p1, v8, v7, v2, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 267
    iget-object v9, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v9}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 268
    .local v3, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 269
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes$Name;

    .line 270
    .local v6, "name":Ljava/util/jar/Attributes$Name;
    invoke-virtual {v6, v8}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 271
    iget-object v9, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v9, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v6, v9, v2, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 275
    .end local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "name":Ljava/util/jar/Attributes$Name;
    :cond_2
    sget-object v9, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    .line 276
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 277
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 278
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 279
    .local v5, "key":Ljava/lang/String;
    sget-object v9, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    invoke-static {p1, v9, v5, v2, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 280
    iget-object v9, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    .line 281
    .local v0, "attributes":Ljava/util/jar/Attributes;
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 282
    .restart local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 283
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes$Name;

    .line 284
    .restart local v6    # "name":Ljava/util/jar/Attributes$Name;
    invoke-virtual {v0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v6, v9, v2, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_2

    .line 286
    .end local v6    # "name":Ljava/util/jar/Attributes$Name;
    :cond_3
    sget-object v9, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 255
    .end local v0    # "attributes":Ljava/util/jar/Attributes;
    .end local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "name"    # Ljava/util/jar/Attributes$Name;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p4, "bBuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p1}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "nameString":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 294
    sget-object v3, Landroid/util/jar/StrictJarManifest;->VALUE_SEPARATOR:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 296
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 297
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x48

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 299
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 302
    .local v0, "cBuf":Ljava/nio/CharBuffer;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p3, v0, p4, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 303
    .local v2, "r":Ljava/nio/charset/CoderResult;
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_0

    .line 304
    invoke-virtual {p3, p4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 306
    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 307
    sget-object v3, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 308
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_1

    .line 291
    return-void

    .line 311
    :cond_1
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 312
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 118
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    .line 116
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Landroid/util/jar/StrictJarManifest;

    invoke-direct {v0, p0}, Landroid/util/jar/StrictJarManifest;-><init>(Landroid/util/jar/StrictJarManifest;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 220
    if-nez p1, :cond_0

    .line 221
    return v2

    .line 223
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 224
    return v2

    .line 226
    :cond_1
    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    move-object v0, p1

    check-cast v0, Landroid/util/jar/StrictJarManifest;

    iget-object v0, v0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v1, v0}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    return v2

    .line 229
    :cond_2
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    check-cast p1, Landroid/util/jar/StrictJarManifest;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    return-object v0
.end method

.method getChunk(Ljava/lang/String;)Landroid/util/jar/StrictJarManifest$Chunk;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/jar/StrictJarManifest$Chunk;

    return-object v0
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method getMainAttributesEnd()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Landroid/util/jar/StrictJarManifest;->mainEnd:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/jar/StrictJarManifest;->read([B)V

    .line 185
    return-void
.end method

.method removeChunks()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    .line 236
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {p0, p1}, Landroid/util/jar/StrictJarManifest;->write(Landroid/util/jar/StrictJarManifest;Ljava/io/OutputStream;)V

    .line 173
    return-void
.end method
