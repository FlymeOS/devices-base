.class public abstract Landroid/os/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ShellCommand"


# instance fields
.field private mArgPos:I

.field private mArgs:[Ljava/lang/String;

.field private mCmd:Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mErr:Ljava/io/FileDescriptor;

.field private mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

.field private mFileErr:Ljava/io/FileOutputStream;

.field private mFileIn:Ljava/io/FileInputStream;

.field private mFileOut:Ljava/io/FileOutputStream;

.field private mIn:Ljava/io/FileDescriptor;

.field private mInputStream:Ljava/io/InputStream;

.field private mOut:Ljava/io/FileDescriptor;

.field private mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

.field private mResultReceiver:Landroid/os/ResultReceiver;

.field private mTarget:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I
    .locals 13
    .param p1, "target"    # Landroid/os/Binder;
    .param p2, "in"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/FileDescriptor;
    .param p4, "err"    # Ljava/io/FileDescriptor;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 80
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v1, v0

    if-lez v1, :cond_2

    .line 81
    const/4 v1, 0x0

    aget-object v8, p5, v1

    .line 82
    .local v8, "cmd":Ljava/lang/String;
    const/4 v7, 0x1

    .end local v8    # "cmd":Ljava/lang/String;
    .local v7, "start":I
    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 87
    invoke-virtual/range {v1 .. v7}, Landroid/os/ShellCommand;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V

    .line 88
    iput-object v8, p0, Landroid/os/ShellCommand;->mCmd:Ljava/lang/String;

    .line 89
    move-object/from16 v0, p6

    iput-object v0, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 92
    const/4 v12, -0x1

    .line 94
    .local v12, "res":I
    :try_start_0
    iget-object v1, p0, Landroid/os/ShellCommand;->mCmd:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/ShellCommand;->onCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 112
    iget-object v1, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 115
    :cond_0
    iget-object v1, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 119
    :cond_1
    iget-object v1, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 122
    :goto_1
    return v12

    .line 84
    .end local v7    # "start":I
    .end local v12    # "res":I
    :cond_2
    const/4 v8, 0x0

    .line 85
    .local v8, "cmd":Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7    # "start":I
    goto :goto_0

    .line 101
    .end local v8    # "cmd":Ljava/lang/String;
    .restart local v12    # "res":I
    :catch_0
    move-exception v10

    .line 106
    .local v10, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v11

    .line 107
    .local v11, "eout":Ljava/io/PrintWriter;
    invoke-virtual {v11}, Ljava/io/PrintWriter;->println()V

    .line 108
    const-string/jumbo v1, "Exception occurred while dumping:"

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    iget-object v1, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 115
    :cond_3
    iget-object v1, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v1, :cond_4

    .line 116
    iget-object v1, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 119
    :cond_4
    iget-object v1, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 96
    .end local v10    # "e":Ljava/lang/Throwable;
    .end local v11    # "eout":Ljava/io/PrintWriter;
    :catch_1
    move-exception v9

    .line 97
    .local v9, "e":Ljava/lang/SecurityException;
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v11

    .line 98
    .restart local v11    # "eout":Ljava/io/PrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Security exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v11}, Ljava/io/PrintWriter;->println()V

    .line 100
    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    iget-object v1, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v1, :cond_5

    .line 113
    iget-object v1, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 115
    :cond_5
    iget-object v1, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v1, :cond_6

    .line 116
    iget-object v1, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 119
    :cond_6
    iget-object v1, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 110
    .end local v9    # "e":Ljava/lang/SecurityException;
    .end local v11    # "eout":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v1

    .line 112
    iget-object v2, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v2, :cond_7

    .line 113
    iget-object v2, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 115
    :cond_7
    iget-object v2, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-eqz v2, :cond_8

    .line 116
    iget-object v2, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 119
    :cond_8
    iget-object v2, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 110
    throw v1
.end method

.method public getBufferedInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    .line 185
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getErrPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Landroid/os/ShellCommand;->mErr:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawErrorStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 165
    :cond_1
    iget-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    return-object v0
.end method

.method public getNextArg()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v1, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 227
    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 228
    .local v0, "arg":Ljava/lang/String;
    iput-object v3, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 229
    return-object v0

    .line 230
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget v1, p0, Landroid/os/ShellCommand;->mArgPos:I

    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 231
    iget-object v1, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/os/ShellCommand;->mArgPos:I

    aget-object v1, v1, v2

    return-object v1

    .line 233
    :cond_1
    return-object v3
.end method

.method public getNextArgRequired()Ljava/lang/String;
    .locals 5

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 254
    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v3, p0, Landroid/os/ShellCommand;->mArgPos:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 255
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getNextOption()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 193
    iget-object v2, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v3, p0, Landroid/os/ShellCommand;->mArgPos:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 195
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    iget v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    iget-object v3, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 198
    return-object v4

    .line 200
    :cond_1
    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v3, p0, Landroid/os/ShellCommand;->mArgPos:I

    aget-object v0, v2, v3

    .line 201
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    return-object v4

    .line 204
    :cond_2
    iget v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/os/ShellCommand;->mArgPos:I

    .line 205
    const-string/jumbo v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    return-object v4

    .line 208
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_5

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_4

    .line 210
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 211
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 213
    :cond_4
    iput-object v4, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 214
    return-object v0

    .line 217
    :cond_5
    iput-object v4, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 218
    return-object v0
.end method

.method public getOutPrintWriter()Ljava/io/PrintWriter;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    return-object v0
.end method

.method public getRawErrorStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/os/ShellCommand;->mErr:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    .line 152
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroid/os/ShellCommand;->mIn:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getRawOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/os/ShellCommand;->mOut:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public handleDefaultCommands(Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 261
    const-string/jumbo v1, "dump"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 263
    .local v0, "newArgs":[Ljava/lang/String;
    iget-object v1, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    iget-object v2, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    iget-object v1, p0, Landroid/os/ShellCommand;->mTarget:Landroid/os/Binder;

    iget-object v2, p0, Landroid/os/ShellCommand;->mOut:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 265
    return v4

    .line 266
    .end local v0    # "newArgs":[Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v1, "help"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "-h"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->onHelp()V

    .line 271
    :goto_0
    const/4 v1, -0x1

    return v1

    .line 269
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "target"    # Landroid/os/Binder;
    .param p2, "in"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/FileDescriptor;
    .param p4, "err"    # Ljava/io/FileDescriptor;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "firstArgPos"    # I

    .prologue
    const/4 v0, 0x0

    .line 59
    iput-object p1, p0, Landroid/os/ShellCommand;->mTarget:Landroid/os/Binder;

    .line 60
    iput-object p2, p0, Landroid/os/ShellCommand;->mIn:Ljava/io/FileDescriptor;

    .line 61
    iput-object p3, p0, Landroid/os/ShellCommand;->mOut:Ljava/io/FileDescriptor;

    .line 62
    iput-object p4, p0, Landroid/os/ShellCommand;->mErr:Ljava/io/FileDescriptor;

    .line 63
    iput-object p5, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    .line 64
    iput-object v0, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 65
    iput-object v0, p0, Landroid/os/ShellCommand;->mCmd:Ljava/lang/String;

    .line 66
    iput p6, p0, Landroid/os/ShellCommand;->mArgPos:I

    .line 67
    iput-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Landroid/os/ShellCommand;->mFileIn:Ljava/io/FileInputStream;

    .line 69
    iput-object v0, p0, Landroid/os/ShellCommand;->mFileOut:Ljava/io/FileOutputStream;

    .line 70
    iput-object v0, p0, Landroid/os/ShellCommand;->mFileErr:Ljava/io/FileOutputStream;

    .line 71
    iput-object v0, p0, Landroid/os/ShellCommand;->mOutPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 72
    iput-object v0, p0, Landroid/os/ShellCommand;->mErrPrintWriter:Lcom/android/internal/util/FastPrintWriter;

    .line 73
    iput-object v0, p0, Landroid/os/ShellCommand;->mInputStream:Ljava/io/InputStream;

    .line 58
    return-void
.end method

.method public abstract onCommand(Ljava/lang/String;)I
.end method

.method public abstract onHelp()V
.end method

.method public peekNextArg()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Landroid/os/ShellCommand;->mCurArgData:Ljava/lang/String;

    return-object v0

    .line 240
    :cond_0
    iget v0, p0, Landroid/os/ShellCommand;->mArgPos:I

    iget-object v1, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 241
    iget-object v0, p0, Landroid/os/ShellCommand;->mArgs:[Ljava/lang/String;

    iget v1, p0, Landroid/os/ShellCommand;->mArgPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 243
    :cond_1
    return-object v2
.end method
