.class public Lcom/android/internal/util/LineBreakBufferedWriter;
.super Ljava/io/PrintWriter;
.source "LineBreakBufferedWriter.java"


# instance fields
.field private buffer:[C

.field private bufferIndex:I

.field private final bufferSize:I

.field private lastNewline:I

.field private final lineSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "bufferSize"    # I

    .prologue
    .line 69
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;-><init>(Ljava/io/Writer;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;II)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "bufferSize"    # I
    .param p3, "initialCapacity"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 81
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 83
    iput p2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    .line 84
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lineSeparator:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private appendToBuffer(Ljava/lang/String;II)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 248
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 249
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->ensureCapacity(I)V

    .line 251
    :cond_0
    add-int v0, p2, p3

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 252
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 247
    return-void
.end method

.method private appendToBuffer([CII)V
    .locals 2
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 233
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 234
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->ensureCapacity(I)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 237
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 232
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    .line 263
    .local v0, "newSize":I
    if-ge v0, p1, :cond_0

    .line 264
    move v0, p1

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    .line 261
    return-void
.end method

.method private removeFromBuffer(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 275
    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int v0, v1, p1

    .line 276
    .local v0, "rest":I
    if-lez v0, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 278
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 274
    :goto_0
    return-void

    .line 280
    :cond_0
    iput v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    goto :goto_0
.end method

.method private writeBuffer(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 289
    if-lez p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    invoke-super {p0, v0, v1, p1}, Ljava/io/PrintWriter;->write([CII)V

    .line 288
    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 94
    invoke-super {p0}, Ljava/io/PrintWriter;->flush()V

    .line 91
    return-void
.end method

.method public println()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->write(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 101
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 102
    int-to-char v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 103
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    new-array v0, v3, [C

    int-to-char v1, p1

    aput-char v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/util/LineBreakBufferedWriter;->write([CII)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 173
    :goto_0
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v4, p3

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-le v4, v5, :cond_4

    .line 176
    const/4 v2, -0x1

    .line 177
    .local v2, "nextNewLine":I
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int v1, v4, v5

    .line 178
    .local v1, "maxLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 179
    add-int v4, p2, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_0

    .line 180
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-ge v4, v5, :cond_1

    .line 181
    move v2, v0

    .line 178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_1
    if-eq v2, v6, :cond_2

    .line 190
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    .line 191
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 192
    iput v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 193
    iput v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 194
    add-int/lit8 v4, v2, 0x1

    add-int/2addr p2, v4

    .line 195
    add-int/lit8 v4, v2, 0x1

    sub-int/2addr p3, v4

    goto :goto_0

    .line 196
    :cond_2
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    if-eq v4, v6, :cond_3

    .line 198
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 199
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->removeFromBuffer(I)V

    .line 200
    iput v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_0

    .line 203
    :cond_3
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int v3, v4, v5

    .line 204
    .local v3, "rest":I
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    .line 205
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 206
    iput v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 207
    add-int/2addr p2, v3

    .line 208
    sub-int/2addr p3, v3

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    .end local v1    # "maxLength":I
    .end local v2    # "nextNewLine":I
    .end local v3    # "rest":I
    :cond_4
    if-lez p3, :cond_5

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    .line 216
    add-int/lit8 v0, p3, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 217
    add-int v4, p2, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_6

    .line 218
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v4, p3

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 172
    .end local v0    # "i":I
    :cond_5
    return-void

    .line 216
    .restart local v0    # "i":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public write([CII)V
    .locals 9
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 119
    :goto_0
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v4, p3

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-le v4, v5, :cond_4

    .line 122
    const/4 v2, -0x1

    .line 123
    .local v2, "nextNewLine":I
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int v1, v4, v5

    .line 124
    .local v1, "maxLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 125
    add-int v4, p2, v0

    aget-char v4, p1, v4

    if-ne v4, v8, :cond_0

    .line 126
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-ge v4, v5, :cond_1

    .line 127
    move v2, v0

    .line 124
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_1
    if-eq v2, v6, :cond_2

    .line 136
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    .line 137
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 138
    iput v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 139
    iput v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 140
    add-int/lit8 v4, v2, 0x1

    add-int/2addr p2, v4

    .line 141
    add-int/lit8 v4, v2, 0x1

    sub-int/2addr p3, v4

    goto :goto_0

    .line 142
    :cond_2
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    if-eq v4, v6, :cond_3

    .line 144
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 145
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->removeFromBuffer(I)V

    .line 146
    iput v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_0

    .line 149
    :cond_3
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v5, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int v3, v4, v5

    .line 150
    .local v3, "rest":I
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    .line 151
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 152
    iput v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 153
    add-int/2addr p2, v3

    .line 154
    sub-int/2addr p3, v3

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    .end local v1    # "maxLength":I
    .end local v2    # "nextNewLine":I
    .end local v3    # "rest":I
    :cond_4
    if-lez p3, :cond_5

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    .line 162
    add-int/lit8 v0, p3, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 163
    add-int v4, p2, v0

    aget-char v4, p1, v4

    if-ne v4, v8, :cond_6

    .line 164
    iget v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v4, p3

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 118
    .end local v0    # "i":I
    :cond_5
    return-void

    .line 162
    .restart local v0    # "i":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method
