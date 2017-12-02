.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 39
    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 48
    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceID"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 60
    invoke-direct {p0, v2, v3, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 61
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide v0

    .line 62
    .local v0, "id":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 63
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v3, "Loading of ScriptC script failed."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/BaseObj;->setID(J)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "bitcode32"    # [B
    .param p4, "bitcode64"    # [B

    .prologue
    const-wide/16 v4, 0x0

    .line 74
    invoke-direct {p0, v4, v5, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .local v0, "id":J
    sget v2, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 77
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v0

    .line 81
    :goto_0
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 82
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v3, "Loading of ScriptC script failed."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_0
    invoke-static {p1, p2, p4}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v0

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/BaseObj;->setID(J)V

    .line 73
    return-void
.end method

.method private static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .locals 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    .prologue
    const-class v9, Landroid/renderscript/ScriptC;

    monitor-enter v9

    .line 90
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 93
    .local v4, "is":Ljava/io/InputStream;
    const/16 v8, 0x400

    :try_start_1
    new-array v5, v8, [B

    .line 94
    .local v5, "pgm":[B
    const/4 v6, 0x0

    .line 96
    .local v6, "pgmLength":I
    :goto_0
    array-length v8, v5

    sub-int v1, v8, v6

    .line 97
    .local v1, "bytesLeft":I
    if-nez v1, :cond_0

    .line 98
    array-length v8, v5

    mul-int/lit8 v8, v8, 0x2

    new-array v0, v8, [B

    .line 99
    .local v0, "buf2":[B
    array-length v8, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v5, v10, v0, v11, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 100
    move-object v5, v0

    .line 101
    array-length v8, v0

    sub-int v1, v8, v6

    .line 103
    .end local v0    # "buf2":[B
    :cond_0
    invoke-virtual {v4, v5, v6, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 104
    .local v2, "bytesRead":I
    if-gtz v2, :cond_1

    .line 110
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "resName":Ljava/lang/String;
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v5, v6}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v10

    monitor-exit v9

    return-wide v10

    .line 107
    .end local v7    # "resName":Ljava/lang/String;
    :cond_1
    add-int/2addr v6, v2

    goto :goto_0

    .line 109
    .end local v1    # "bytesLeft":I
    .end local v2    # "bytesRead":I
    .end local v5    # "pgm":[B
    .end local v6    # "pgmLength":I
    :catchall_0
    move-exception v8

    .line 110
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 109
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v8}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private static declared-synchronized internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J
    .locals 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "bitcode"    # [B

    .prologue
    const-class v1, Landroid/renderscript/ScriptC;

    monitor-enter v1

    .line 124
    :try_start_0
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v0

    array-length v2, p2

    invoke-virtual {p0, p1, v0, p2, v2}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
