.class abstract Landroid/util/apk/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final UINT16_MAX_VALUE:I = 0xffff

.field private static final ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER:I = 0x504b0607

.field private static final ZIP64_EOCD_LOCATOR_SIZE:I = 0x14

.field private static final ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final ZIP_EOCD_CENTRAL_DIR_SIZE_FIELD_OFFSET:I = 0xc

.field private static final ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET:I = 0x14

.field private static final ZIP_EOCD_REC_MIN_SIZE:I = 0x16

.field private static final ZIP_EOCD_REC_SIG:I = 0x6054b50


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 243
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v1, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    return-void
.end method

.method private static findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p0, "zipContents"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v8, -0x1

    .line 145
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 157
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    .line 158
    .local v1, "archiveSize":I
    const/16 v6, 0x16

    if-ge v1, v6, :cond_0

    .line 159
    return v8

    .line 161
    :cond_0
    add-int/lit8 v6, v1, -0x16

    const v7, 0xffff

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 162
    .local v5, "maxCommentLength":I
    add-int/lit8 v3, v1, -0x16

    .line 163
    .local v3, "eocdWithEmptyCommentStartPosition":I
    const/4 v4, 0x0

    .local v4, "expectedCommentLength":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 165
    sub-int v2, v3, v4

    .line 166
    .local v2, "eocdStartPos":I
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    const v7, 0x6054b50

    if-ne v6, v7, :cond_1

    .line 169
    add-int/lit8 v6, v2, 0x14

    .line 168
    invoke-static {p0, v6}, Landroid/util/apk/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 170
    .local v0, "actualCommentLength":I
    if-ne v0, v4, :cond_1

    .line 171
    return v2

    .line 164
    .end local v0    # "actualCommentLength":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "eocdStartPos":I
    :cond_2
    return v8
.end method

.method static findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .locals 7
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 66
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 67
    .local v0, "fileSize":J
    const-wide/16 v4, 0x16

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 68
    return-object v6

    .line 74
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v2

    .line 75
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-eqz v2, :cond_1

    .line 76
    return-object v2

    .line 82
    :cond_1
    const v3, 0xffff

    invoke-static {p0, v3}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;
    .locals 13
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .param p1, "maxCommentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x16

    const/4 v12, 0x0

    .line 109
    if-ltz p1, :cond_0

    const v5, 0xffff

    if-le p1, v5, :cond_1

    .line 110
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "maxCommentSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 113
    :cond_1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    .line 114
    .local v6, "fileSize":J
    cmp-long v5, v6, v10

    if-gez v5, :cond_2

    .line 116
    return-object v12

    .line 119
    :cond_2
    int-to-long v8, p1

    sub-long v10, v6, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int p1, v8

    .line 121
    add-int/lit8 v5, p1, 0x16

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 122
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    int-to-long v8, v5

    sub-long v2, v6, v8

    .line 124
    .local v2, "bufOffsetInFile":J
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 125
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {p0, v5, v8, v9}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 126
    invoke-static {v0}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 127
    .local v4, "eocdOffsetInBuf":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 129
    return-object v12

    .line 132
    :cond_3
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 134
    .local v1, "eocd":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 135
    int-to-long v8, v4

    add-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static getUnsignedInt16(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static getUnsignedInt32(Ljava/nio/ByteBuffer;I)J
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 210
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 213
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 211
    invoke-static {p0, v0}, Landroid/util/apk/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 236
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 239
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    .line 237
    invoke-static {p0, v0}, Landroid/util/apk/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z
    .locals 7
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .param p1, "zipEndOfCentralDirectoryPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 193
    const-wide/16 v4, 0x14

    sub-long v0, p1, v4

    .line 194
    .local v0, "locatorPosition":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 195
    return v2

    .line 198
    :cond_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 201
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    const v4, 0x504b0607

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .prologue
    .line 257
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uint32 value of out range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 256
    return-void
.end method

.method public static setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V
    .locals 1
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J

    .prologue
    .line 223
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 226
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 224
    invoke-static {p0, v0, p1, p2}, Landroid/util/apk/ZipUtils;->setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V

    .line 222
    return-void
.end method
