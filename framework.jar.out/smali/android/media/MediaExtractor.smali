.class public final Landroid/media/MediaExtractor;
.super Ljava/lang/Object;
.source "MediaExtractor.java"


# static fields
.field public static final SAMPLE_FLAG_ENCRYPTED:I = 0x2

.field public static final SAMPLE_FLAG_SYNC:I = 0x1

.field public static final SEEK_TO_CLOSEST_SYNC:I = 0x2

.field public static final SEEK_TO_NEXT_SYNC:I = 0x1

.field public static final SEEK_TO_PREVIOUS_SYNC:I


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 592
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 593
    invoke-static {}, Landroid/media/MediaExtractor;->native_init()V

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_setup()V

    .line 73
    return-void
.end method

.method private native getFileFormatNative()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private native getTrackFormatNative(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final native nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method


# virtual methods
.method public native advance()Z
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_finalize()V

    .line 236
    return-void
.end method

.method public native getCachedDuration()J
.end method

.method public getDrmInitData()Landroid/media/DrmInitData;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 260
    invoke-direct {p0}, Landroid/media/MediaExtractor;->getFileFormatNative()Ljava/util/Map;

    move-result-object v4

    .line 261
    .local v4, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v4, :cond_0

    .line 262
    return-object v12

    .line 264
    :cond_0
    const-string/jumbo v11, "pssh"

    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 265
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getPsshInfo()Ljava/util/Map;

    move-result-object v8

    .line 267
    .local v8, "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 268
    .local v6, "initDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Landroid/media/DrmInitData$SchemeInitData;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 269
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/UUID;

    .line 270
    .local v10, "uuid":Ljava/util/UUID;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 271
    .local v1, "data":[B
    new-instance v11, Landroid/media/DrmInitData$SchemeInitData;

    const-string/jumbo v12, "cenc"

    invoke-direct {v11, v12, v1}, Landroid/media/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 273
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;[B>;"
    .end local v10    # "uuid":Ljava/util/UUID;
    :cond_1
    new-instance v11, Landroid/media/MediaExtractor$1;

    invoke-direct {v11, p0, v6}, Landroid/media/MediaExtractor$1;-><init>(Landroid/media/MediaExtractor;Ljava/util/Map;)V

    return-object v11

    .line 279
    .end local v3    # "e$iterator":Ljava/util/Iterator;
    .end local v6    # "initDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Landroid/media/DrmInitData$SchemeInitData;>;"
    .end local v8    # "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v7

    .line 280
    .local v7, "numTracks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_4

    .line 281
    invoke-direct {p0, v5}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    move-result-object v9

    .line 282
    .local v9, "trackFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v11, "crypto-key"

    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 280
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 285
    :cond_3
    const-string/jumbo v11, "crypto-key"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 286
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 287
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    new-array v1, v11, [B

    .line 288
    .restart local v1    # "data":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 289
    new-instance v11, Landroid/media/MediaExtractor$2;

    invoke-direct {v11, p0, v1}, Landroid/media/MediaExtractor$2;-><init>(Landroid/media/MediaExtractor;[B)V

    return-object v11

    .line 296
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "data":[B
    .end local v9    # "trackFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    return-object v12
.end method

.method public getPsshInfo()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 307
    const/4 v6, 0x0

    .line 308
    .local v6, "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {p0}, Landroid/media/MediaExtractor;->getFileFormatNative()Ljava/util/Map;

    move-result-object v1

    .line 309
    .local v1, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    const-string/jumbo v10, "pssh"

    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 310
    const-string/jumbo v10, "pssh"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    .line 311
    .local v8, "rawpssh":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 312
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 313
    const-string/jumbo v10, "pssh"

    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v6, "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    :goto_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-lez v10, :cond_0

    .line 317
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 318
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 319
    .local v4, "msb":J
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 320
    .local v2, "lsb":J
    new-instance v9, Ljava/util/UUID;

    invoke-direct {v9, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 321
    .local v9, "uuid":Ljava/util/UUID;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 322
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 323
    .local v0, "datalen":I
    new-array v7, v0, [B

    .line 324
    .local v7, "psshdata":[B
    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 325
    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 328
    .end local v0    # "datalen":I
    .end local v2    # "lsb":J
    .end local v4    # "msb":J
    .end local v6    # "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    .end local v7    # "psshdata":[B
    .end local v8    # "rawpssh":Ljava/nio/ByteBuffer;
    .end local v9    # "uuid":Ljava/util/UUID;
    :cond_0
    return-object v6
.end method

.method public native getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z
.end method

.method public native getSampleFlags()I
.end method

.method public native getSampleTime()J
.end method

.method public native getSampleTrackIndex()I
.end method

.method public final native getTrackCount()I
.end method

.method public getTrackFormat(I)Landroid/media/MediaFormat;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 446
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public native hasCacheReachedEndOfStream()Z
.end method

.method public native readSampleData(Ljava/nio/ByteBuffer;I)I
.end method

.method public final native release()V
.end method

.method public native seekTo(JI)V
.end method

.method public native selectTrack(I)V
.end method

.method public final setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string/jumbo v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 102
    return-void

    .line 105
    :cond_1
    const/4 v8, 0x0

    .line 107
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 108
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v9, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 109
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v8, :cond_3

    .line 127
    if-eqz v8, :cond_2

    .line 128
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 110
    :cond_2
    return-void

    .line 115
    :cond_3
    :try_start_1
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 116
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :goto_0
    if-eqz v8, :cond_4

    .line 128
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 123
    :cond_4
    return-void

    .line 119
    :cond_5
    :try_start_2
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 120
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 121
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    .line 118
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 124
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .line 127
    .local v7, "ex":Ljava/lang/SecurityException;
    if-eqz v8, :cond_6

    .line 128
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 132
    .end local v7    # "ex":Ljava/lang/SecurityException;
    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    return-void

    .line 125
    :catch_1
    move-exception v6

    .line 127
    .local v6, "ex":Ljava/io/IOException;
    if-eqz v8, :cond_6

    .line 128
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_1

    .line 126
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 127
    if-eqz v8, :cond_7

    .line 128
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 126
    :cond_7
    throw v0
.end method

.method public final setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 201
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0
.end method

.method public final native setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 219
    return-void
.end method

.method public final native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 186
    invoke-direct {p0, v0, p1, v1, v1}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public final setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 146
    .local v3, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 148
    .local v4, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 149
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 150
    .local v3, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 152
    .local v4, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 153
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v2

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v2

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v3    # "keys":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 160
    invoke-direct {p0, v5, p1, v3, v4}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public native unselectTrack(I)V
.end method
