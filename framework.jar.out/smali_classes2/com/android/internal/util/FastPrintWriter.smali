.class public Lcom/android/internal/util/FastPrintWriter;
.super Ljava/io/PrintWriter;
.source "FastPrintWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FastPrintWriter$DummyWriter;
    }
.end annotation


# instance fields
.field private final mAutoFlush:Z

.field private final mBufferLen:I

.field private final mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mIoError:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mPrinter:Landroid/util/Printer;

.field private final mSeparator:Ljava/lang/String;

.field private final mText:[C

.field private final mWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Landroid/util/Printer;)V
    .locals 1
    .param p1, "pr"    # Landroid/util/Printer;

    .prologue
    .line 199
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;I)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/util/Printer;I)V
    .locals 3
    .param p1, "pr"    # Landroid/util/Printer;
    .param p2, "bufferLen"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 216
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$DummyWriter;)V

    invoke-direct {p0, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 217
    if-nez p1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "pr is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iput p2, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 221
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    .line 222
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 223
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 224
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 225
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 226
    iput-boolean v2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    .line 227
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 228
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 65
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .prologue
    .line 83
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "bufferLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 104
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$DummyWriter;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "out is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 109
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    .line 110
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 111
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 112
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 113
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 114
    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    .line 115
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "wr"    # Ljava/io/Writer;

    .prologue
    .line 134
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 1
    .param p1, "wr"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z

    .prologue
    .line 152
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZI)V
    .locals 2
    .param p1, "wr"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z
    .param p3, "bufferLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 173
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter$DummyWriter;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 174
    if-nez p1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "wr is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 178
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    .line 179
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 180
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 181
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 182
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 183
    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    .line 184
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    .line 172
    return-void
.end method

.method private appendLocked(C)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 283
    .local v0, "pos":I
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 285
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    aput-char p1, v1, v0

    .line 288
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 281
    return-void
.end method

.method private appendLocked(Ljava/lang/String;II)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 293
    .local v0, "BUFFER_LEN":I
    if-le p3, v0, :cond_2

    .line 294
    add-int v1, p2, p3

    .line 295
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    .line 296
    add-int v2, p2, v0

    .line 297
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    move v4, v0

    :goto_1
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    .line 298
    move p2, v2

    goto :goto_0

    .line 297
    :cond_0
    sub-int v4, v1, p2

    goto :goto_1

    .line 300
    .end local v2    # "next":I
    :cond_1
    return-void

    .line 302
    .end local v1    # "end":I
    :cond_2
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 303
    .local v3, "pos":I
    add-int v4, v3, p3

    if-le v4, v0, :cond_3

    .line 304
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 305
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 307
    :cond_3
    add-int v4, p2, p3

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    invoke-virtual {p1, p2, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 308
    add-int v4, v3, p3

    iput v4, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 291
    return-void
.end method

.method private appendLocked([CII)V
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
    .line 312
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 313
    .local v0, "BUFFER_LEN":I
    if-le p3, v0, :cond_2

    .line 314
    add-int v1, p2, p3

    .line 315
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    .line 316
    add-int v2, p2, v0

    .line 317
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    move v4, v0

    :goto_1
    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V

    .line 318
    move p2, v2

    goto :goto_0

    .line 317
    :cond_0
    sub-int v4, v1, p2

    goto :goto_1

    .line 320
    .end local v2    # "next":I
    :cond_1
    return-void

    .line 322
    .end local v1    # "end":I
    :cond_2
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 323
    .local v3, "pos":I
    add-int v4, v3, p3

    if-le v4, v0, :cond_3

    .line 324
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 325
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 327
    :cond_3
    iget-object v4, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    invoke-static {p1, p2, v4, v3, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 328
    add-int v4, v3, p3

    iput v4, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 311
    return-void
.end method

.method private flushBytesLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 332
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, "position":I
    if-lez v0, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 336
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 337
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 331
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method private flushLocked()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 344
    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-lez v5, :cond_3

    .line 345
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v5, :cond_4

    .line 346
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v6, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    invoke-static {v5, v9, v6}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 347
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0, v6, v7}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 348
    .local v3, "result":Ljava/nio/charset/CoderResult;
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v5, :cond_1

    .line 349
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 351
    :cond_0
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    .line 353
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0, v6, v7}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    goto :goto_0

    .line 358
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v5, :cond_2

    .line 359
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    .line 360
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 381
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v3    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    :goto_1
    iput v9, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 342
    :cond_3
    return-void

    .line 362
    :cond_4
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v5, :cond_5

    .line 363
    iget-boolean v5, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v5, :cond_2

    .line 364
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v7, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    invoke-virtual {v5, v6, v9, v7}, Ljava/io/Writer;->write([CII)V

    .line 365
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    goto :goto_1

    .line 368
    :cond_5
    const/4 v2, 0x0

    .line 369
    .local v2, "nonEolOff":I
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 370
    .local v4, "sepLen":I
    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-ge v4, v5, :cond_6

    move v1, v4

    .line 371
    .local v1, "len":I
    :goto_2
    if-ge v2, v1, :cond_7

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v6, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    aget-char v5, v5, v6

    .line 372
    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 371
    if-ne v5, v6, :cond_7

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 370
    .end local v1    # "len":I
    :cond_6
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .restart local v1    # "len":I
    goto :goto_2

    .line 375
    :cond_7
    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-lt v2, v5, :cond_8

    .line 376
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    const-string/jumbo v6, ""

    invoke-interface {v5, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 378
    :cond_8
    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v8, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    sub-int/2addr v8, v2

    invoke-direct {v6, v7, v9, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v5, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final initDefaultEncoder()V
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 277
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 278
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 275
    return-void
.end method

.method private final initEncoder(Ljava/lang/String;)V
    .locals 3
    .param p1, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 233
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 238
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 231
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 679
    if-nez p1, :cond_0

    .line 680
    const-string/jumbo p1, "null"

    .line 682
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/util/FastPrintWriter;->write(Ljava/lang/String;II)V

    .line 684
    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public checkError()Z
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 251
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected clearError()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 260
    return-void

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public close()V
    .locals 4

    .prologue
    .line 411
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 413
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 414
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 410
    return-void

    .line 416
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 411
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 392
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 394
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 395
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 391
    return-void

    .line 398
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 392
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public print(C)V
    .locals 4
    .param p1, "ch"    # C

    .prologue
    .line 454
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 456
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 453
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 454
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public print(I)V
    .locals 1
    .param p1, "inum"    # I

    .prologue
    .line 492
    if-nez p1, :cond_0

    .line 493
    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 491
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0
.end method

.method public print(J)V
    .locals 3
    .param p1, "lnum"    # J

    .prologue
    .line 501
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 502
    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 500
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_0
.end method

.method public print(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 476
    if-nez p1, :cond_0

    .line 477
    check-cast v1, Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 479
    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 481
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 475
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 479
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public print([C)V
    .locals 4
    .param p1, "charArray"    # [C

    .prologue
    .line 435
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 437
    :try_start_0
    array-length v1, p1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 434
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 435
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public println()V
    .locals 5

    .prologue
    .line 512
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 514
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    .line 515
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    if-eqz v1, :cond_0

    .line 516
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 511
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 512
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public println(C)V
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 557
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print(C)V

    .line 558
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 556
    return-void
.end method

.method public println(I)V
    .locals 1
    .param p1, "inum"    # I

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 528
    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 526
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0
.end method

.method public println(J)V
    .locals 3
    .param p1, "lnum"    # J

    .prologue
    .line 536
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 537
    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 535
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_0
.end method

.method public println([C)V
    .locals 0
    .param p1, "chars"    # [C

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print([C)V

    .line 549
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 547
    return-void
.end method

.method protected setError()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 269
    return-void

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneChar"    # I

    .prologue
    .line 602
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 604
    int-to-char v1, p1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 601
    return-void

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 602
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 620
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 622
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 619
    return-void

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 620
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 646
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 648
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 645
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 646
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write([CII)V
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 580
    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 582
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 579
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FastPrintWriter"

    const-string/jumbo v3, "Write failure"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 580
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
