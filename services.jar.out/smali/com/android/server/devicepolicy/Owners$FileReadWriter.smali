.class abstract Lcom/android/server/devicepolicy/Owners$FileReadWriter;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FileReadWriter"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    .line 474
    return-void
.end method


# virtual methods
.method readFromFileLocked()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 532
    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 536
    return-void

    .line 541
    :cond_0
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-direct {v2, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 542
    .local v2, "f":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 544
    .local v3, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 545
    .local v3, "input":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 546
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 549
    const/4 v0, 0x0

    .line 550
    .local v0, "depth":I
    :cond_1
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v8, :cond_3

    .line 551
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 553
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 562
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, "tag":Ljava/lang/String;
    if-ne v0, v8, :cond_2

    .line 564
    const-string/jumbo v7, "root"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 565
    const-string/jumbo v7, "DevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid root tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 566
    return-void

    .line 556
    .end local v5    # "tag":Ljava/lang/String;
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 571
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0, v4, v0, v5}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 578
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 572
    return-void

    .line 578
    .end local v5    # "tag":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 531
    .end local v0    # "depth":I
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :goto_1
    return-void

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v7, "DevicePolicyManagerService"

    const-string/jumbo v8, "Error parsing device-owner file"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 578
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 577
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 578
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 577
    throw v7

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method abstract readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
.end method

.method abstract shouldWrite()Z
.end method

.method abstract writeInner(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method writeToFileLocked()V
    .locals 7

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->shouldWrite()Z

    move-result v4

    if-nez v4, :cond_1

    .line 486
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 491
    const-string/jumbo v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    return-void

    .line 500
    :cond_1
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->mFile:Ljava/io/File;

    invoke-direct {v1, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 501
    .local v1, "f":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 503
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 504
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 505
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 508
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 509
    const-string/jumbo v4, "root"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;->writeInner(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 515
    const-string/jumbo v4, "root"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 517
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 520
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    const/4 v3, 0x0

    .line 480
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "DevicePolicyManagerService"

    const-string/jumbo v5, "Exception when writing"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    if-eqz v3, :cond_2

    .line 526
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method
