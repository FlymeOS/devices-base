.class public final Landroid/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Log$1;,
        Landroid/util/Log$ImmediateLogWriter;,
        Landroid/util/Log$NoPreloadHolder;,
        Landroid/util/Log$TerribleFailure;,
        Landroid/util/Log$TerribleFailureHandler;
    }
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final LOG_ID_CRASH:I = 0x4

.field public static final LOG_ID_EVENTS:I = 0x2

.field public static final LOG_ID_MAIN:I = 0x0

.field public static final LOG_ID_RADIO:I = 0x1

.field public static final LOG_ID_SYSTEM:I = 0x3

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static sWtfHandler:Landroid/util/Log$TerribleFailureHandler;


# direct methods
.method static synthetic -wrap0()I
    .locals 1

    invoke-static {}, Landroid/util/Log;->logger_entry_max_payload_native()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Landroid/util/Log$1;

    invoke-direct {v0}, Landroid/util/Log$1;-><init>()V

    sput-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 247
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 330
    if-nez p0, :cond_0

    .line 331
    const-string/jumbo v3, ""

    return-object v3

    .line 336
    :cond_0
    move-object v2, p0

    .line 337
    .local v2, "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_2

    .line 338
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    .line 339
    const-string/jumbo v3, ""

    return-object v3

    .line 341
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    .line 344
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 345
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 346
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 347
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 348
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 175
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static native isLoggable(Ljava/lang/String;I)Z
.end method

.method private static native logger_entry_max_payload_native()I
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static native println_native(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6
    .param p0, "bufID"    # I
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 386
    new-instance v2, Landroid/util/Log$ImmediateLogWriter;

    invoke-direct {v2, p0, p1, p2}, Landroid/util/Log$ImmediateLogWriter;-><init>(IILjava/lang/String;)V

    .line 391
    .local v2, "logWriter":Landroid/util/Log$ImmediateLogWriter;
    sget v4, Landroid/util/Log$NoPreloadHolder;->LOGGER_ENTRY_MAX_PAYLOAD:I

    add-int/lit8 v5, v4, -0x2

    .line 393
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 391
    :goto_0
    sub-int v4, v5, v4

    add-int/lit8 v0, v4, -0x20

    .line 396
    .local v0, "bufferSize":I
    const/16 v4, 0x64

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 398
    new-instance v1, Lcom/android/internal/util/LineBreakBufferedWriter;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 400
    .local v1, "lbbw":Lcom/android/internal/util/LineBreakBufferedWriter;
    invoke-virtual {v1, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->println(Ljava/lang/String;)V

    .line 402
    if-eqz p4, :cond_1

    .line 405
    move-object v3, p4

    .line 406
    .local v3, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v3, :cond_0

    .line 407
    instance-of v4, v3, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_3

    .line 417
    :cond_0
    :goto_2
    if-nez v3, :cond_1

    .line 418
    invoke-virtual {p4, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 422
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/util/LineBreakBufferedWriter;->flush()V

    .line 424
    invoke-virtual {v2}, Landroid/util/Log$ImmediateLogWriter;->getWritten()I

    move-result v4

    return v4

    .line 393
    .end local v0    # "bufferSize":I
    .end local v1    # "lbbw":Lcom/android/internal/util/LineBreakBufferedWriter;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 410
    .restart local v0    # "bufferSize":I
    .restart local v1    # "lbbw":Lcom/android/internal/util/LineBreakBufferedWriter;
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_3
    instance-of v4, v3, Landroid/os/DeadSystemException;

    if-eqz v4, :cond_4

    .line 411
    const-string/jumbo v4, "DeadSystemException: The system died; earlier logs will point to the root cause"

    invoke-virtual {v1, v4}, Lcom/android/internal/util/LineBreakBufferedWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 415
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_1
.end method

.method public static setWtfHandler(Landroid/util/Log$TerribleFailureHandler;)Landroid/util/Log$TerribleFailureHandler;
    .locals 3
    .param p0, "handler"    # Landroid/util/Log$TerribleFailureHandler;

    .prologue
    .line 317
    if-nez p0, :cond_0

    .line 318
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "handler == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_0
    sget-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 321
    .local v0, "oldHandler":Landroid/util/Log$TerribleFailureHandler;
    sput-object p0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    .line 322
    return-object v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 196
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 226
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v1, v2, p0, v0, p1}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I
    .locals 3
    .param p0, "logId"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;
    .param p4, "localStack"    # Z
    .param p5, "system"    # Z

    .prologue
    .line 295
    new-instance v1, Landroid/util/Log$TerribleFailure;

    invoke-direct {v1, p2, p3}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    .local v1, "what":Landroid/util/Log$TerribleFailure;
    if-eqz p4, :cond_0

    move-object p3, v1

    .end local p3    # "tr":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x6

    invoke-static {p0, v2, p1, p2, p3}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 300
    .local v0, "bytes":I
    sget-object v2, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    invoke-interface {v2, p1, v1, p5}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    .line 301
    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 260
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v5, v0

    .line 290
    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 279
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method

.method static wtfQuiet(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logId"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "system"    # Z

    .prologue
    .line 305
    new-instance v0, Landroid/util/Log$TerribleFailure;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    .local v0, "what":Landroid/util/Log$TerribleFailure;
    sget-object v1, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    invoke-interface {v1, p1, v0, p3}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    .line 304
    return-void
.end method

.method public static wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 269
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    move-result v0

    return v0
.end method
