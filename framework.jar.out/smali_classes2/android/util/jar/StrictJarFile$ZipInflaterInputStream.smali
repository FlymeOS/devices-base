.class public Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipInflaterInputStream"
.end annotation


# instance fields
.field private bytesRead:J

.field private final entry:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;
    .param p3, "bsize"    # I
    .param p4, "entry"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 352
    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 349
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    .line 353
    iput-object p4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    .line 351
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 376
    iget-boolean v1, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 380
    return v0

    .line 382
    :cond_0
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->available()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 364
    .local v1, "i":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 365
    iget-object v2, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 366
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Size mismatch on inflated file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 367
    iget-object v4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    .line 366
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reading data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " near offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 362
    iget-wide v4, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    .line 361
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 370
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i":I
    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;->bytesRead:J

    .line 372
    :cond_1
    return v1
.end method
