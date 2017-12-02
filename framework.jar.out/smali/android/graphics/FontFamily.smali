.class public Landroid/graphics/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "FontFamily"

    sput-object v0, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nCreateFamily(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    .line 44
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "error creating native FontFamily"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "varEnum":I
    const-string/jumbo v1, "compact"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const/4 v0, 0x1

    .line 56
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Landroid/graphics/FontFamily;->nCreateFamily(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    .line 57
    iget-wide v2, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 58
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "error creating native FontFamily"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_1
    const-string/jumbo v1, "elegant"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const/4 v0, 0x2

    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method

.method private static native nAddFont(JLjava/nio/ByteBuffer;I)Z
.end method

.method private static native nAddFontFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)Z
.end method

.method private static native nAddFontWeightStyle(JLjava/nio/ByteBuffer;ILjava/util/List;IZ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Axis;",
            ">;IZ)Z"
        }
    .end annotation
.end method

.method private static native nCreateFamily(Ljava/lang/String;I)J
.end method

.method private static native nUnrefFamily(J)V
.end method


# virtual methods
.method public addFont(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I

    .prologue
    const/4 v10, 0x0

    .line 72
    const/4 v7, 0x0

    .local v7, "file":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    .end local v7    # "file":Ljava/io/FileInputStream;
    .local v8, "file":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 74
    .local v0, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 75
    .local v4, "fontSize":J
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    .line 76
    .local v9, "fontBuffer":Ljava/nio/ByteBuffer;
    iget-wide v2, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-static {v2, v3, v9, p2}, Landroid/graphics/FontFamily;->nAddFont(JLjava/nio/ByteBuffer;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v1

    .line 80
    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 77
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    move-object v7, v8

    .line 78
    .end local v0    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v4    # "fontSize":J
    .end local v8    # "file":Ljava/io/FileInputStream;
    .end local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    :goto_1
    sget-object v1, Landroid/graphics/FontFamily;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error mapping font file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x0

    return v1

    .line 80
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v0    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "fontSize":J
    .restart local v8    # "file":Ljava/io/FileInputStream;
    .restart local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v10

    goto :goto_0

    .line 76
    :cond_1
    return v1

    .line 80
    .end local v0    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v4    # "fontSize":J
    .end local v8    # "file":Ljava/io/FileInputStream;
    .end local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "file":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .end local v7    # "file":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_3
    if-eqz v7, :cond_2

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    if-eqz v2, :cond_4

    :try_start_6
    throw v2

    .line 77
    :catch_3
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 80
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_4

    :cond_3
    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v7    # "file":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v1

    move-object v2, v10

    goto :goto_3

    .end local v7    # "file":Ljava/io/FileInputStream;
    .restart local v8    # "file":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v1

    move-object v2, v10

    move-object v7, v8

    .end local v8    # "file":Ljava/io/FileInputStream;
    .local v7, "file":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v7    # "file":Ljava/io/FileInputStream;
    .restart local v8    # "file":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    move-object v7, v8

    .end local v8    # "file":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 2
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/FontFamily;->nAddFontFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addFontWeightStyle(Ljava/nio/ByteBuffer;ILjava/util/List;IZ)Z
    .locals 7
    .param p1, "font"    # Ljava/nio/ByteBuffer;
    .param p2, "ttcIndex"    # I
    .param p4, "weight"    # I
    .param p5, "style"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListParser$Axis;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 85
    .local p3, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Axis;>;"
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/FontFamily;->nAddFontWeightStyle(JLjava/nio/ByteBuffer;ILjava/util/List;IZ)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nUnrefFamily(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    return-void

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 66
    throw v0
.end method
