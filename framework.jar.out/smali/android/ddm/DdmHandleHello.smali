.class public Landroid/ddm/DdmHandleHello;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleHello.java"


# static fields
.field public static final CHUNK_FEAT:I

.field public static final CHUNK_HELO:I

.field public static final CHUNK_WAIT:I

.field private static final FRAMEWORK_FEATURES:[Ljava/lang/String;

.field private static mInstance:Landroid/ddm/DdmHandleHello;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const-string/jumbo v0, "HELO"

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    .line 35
    const-string/jumbo v0, "WAIT"

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    .line 36
    const-string/jumbo v0, "FEAT"

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    .line 38
    new-instance v0, Landroid/ddm/DdmHandleHello;

    invoke-direct {v0}, Landroid/ddm/DdmHandleHello;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 41
    const-string/jumbo v1, "opengl-tracing"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "view-hierarchy"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 40
    sput-object v0, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 179
    invoke-static {}, Landroid/os/Debug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "vmFeatures":[Ljava/lang/String;
    array-length v4, v3

    sget-object v5, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, v4, 0x4

    .line 185
    .local v2, "size":I
    array-length v4, v3

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 186
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 185
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 187
    :cond_0
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 188
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 187
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 190
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 191
    .local v1, "out":Ljava/nio/ByteBuffer;
    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 192
    array-length v4, v3

    sget-object v5, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 193
    array-length v4, v3

    add-int/lit8 v0, v4, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 194
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 195
    aget-object v4, v3, v0

    invoke-static {v1, v4}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 193
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 197
    :cond_2
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    :goto_3
    if-ltz v0, :cond_3

    .line 198
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 199
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v1, v4}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 197
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 202
    :cond_3
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v5, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    invoke-direct {v4, v5, v1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v4
.end method

.method private handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 15
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 112
    invoke-static/range {p1 .. p1}, Landroid/ddm/DdmHandleHello;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 114
    .local v1, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 121
    .local v6, "serverProtoVers":I
    const-string/jumbo v13, "java.vm.name"

    const-string/jumbo v14, "?"

    invoke-static {v13, v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, "vmName":Ljava/lang/String;
    const-string/jumbo v13, "java.vm.version"

    const-string/jumbo v14, "?"

    invoke-static {v13, v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, "vmVersion":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " v"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, "vmIdent":Ljava/lang/String;
    invoke-static {}, Landroid/ddm/DdmHandleAppName;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "appName":Ljava/lang/String;
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v11

    .line 132
    .local v11, "vmRuntime":Ldalvik/system/VMRuntime;
    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v2, "64-bit"

    .line 133
    .local v2, "instructionSetDescription":Ljava/lang/String;
    :goto_0
    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, "vmInstructionSet":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 135
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "CheckJNI="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 138
    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->isCheckJniEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string/jumbo v13, "true"

    .line 137
    :goto_1
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "vmFlags":Ljava/lang/String;
    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->isNativeDebuggable()Z

    move-result v3

    .line 142
    .local v3, "isNativeDebuggable":Z
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    .line 141
    add-int/lit8 v13, v13, 0x1c

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    .line 141
    add-int/2addr v13, v14

    .line 144
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    .line 141
    add-int/2addr v13, v14

    .line 145
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    .line 141
    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 147
    .local v4, "out":Ljava/nio/ByteBuffer;
    sget-object v13, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 148
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 149
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 152
    invoke-static {v4, v8}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 153
    invoke-static {v4, v0}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 156
    invoke-static {v4, v2}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 158
    invoke-static {v4, v7}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 159
    if-eqz v3, :cond_4

    const/4 v13, 0x1

    :goto_2
    int-to-byte v13, v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 161
    new-instance v5, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v13, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    invoke-direct {v5, v13, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    .line 167
    .local v5, "reply":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 168
    const/4 v13, 0x0

    invoke-static {v13}, Landroid/ddm/DdmHandleHello;->sendWAIT(I)V

    .line 170
    :cond_1
    return-object v5

    .line 132
    .end local v2    # "instructionSetDescription":Ljava/lang/String;
    .end local v3    # "isNativeDebuggable":Z
    .end local v4    # "out":Ljava/nio/ByteBuffer;
    .end local v5    # "reply":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .end local v7    # "vmFlags":Ljava/lang/String;
    .end local v9    # "vmInstructionSet":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "32-bit"

    .restart local v2    # "instructionSetDescription":Ljava/lang/String;
    goto/16 :goto_0

    .line 138
    .restart local v9    # "vmInstructionSet":Ljava/lang/String;
    :cond_3
    const-string/jumbo v13, "false"

    goto/16 :goto_1

    .line 159
    .restart local v3    # "isNativeDebuggable":Z
    .restart local v4    # "out":Ljava/nio/ByteBuffer;
    .restart local v7    # "vmFlags":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    goto :goto_2
.end method

.method public static register()V
    .locals 2

    .prologue
    .line 52
    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 53
    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 51
    return-void
.end method

.method public static sendWAIT(I)V
    .locals 5
    .param p0, "reason"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    new-array v0, v4, [B

    int-to-byte v2, p0

    aput-byte v2, v0, v3

    .line 211
    .local v0, "data":[B
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v2, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 212
    .local v1, "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 209
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public disconnected()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 88
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 90
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    if-ne v0, v1, :cond_0

    .line 91
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 92
    :cond_0
    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    if-ne v0, v1, :cond_1

    .line 93
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 95
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 96
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
