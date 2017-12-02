.class public Lcom/android/server/NativeDaemonEvent;
.super Ljava/lang/Object;
.source "NativeDaemonEvent.java"


# static fields
.field public static final SENSITIVE_MARKER:Ljava/lang/String; = "{{sensitive}}"


# instance fields
.field private final mCmdNumber:I

.field private final mCode:I

.field private mFdList:[Ljava/io/FileDescriptor;

.field private final mLogMessage:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private mParsed:[Ljava/lang/String;

.field private final mRawEvent:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "cmdNumber"    # I
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "rawEvent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;
    .param p6, "fdList"    # [Ljava/io/FileDescriptor;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    .line 44
    iput p2, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    .line 45
    iput-object p3, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/android/server/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/android/server/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    .line 42
    return-void
.end method

.method public static filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    .locals 5
    .param p0, "events"    # [Lcom/android/server/NativeDaemonEvent;
    .param p1, "matchCode"    # I

    .prologue
    .line 182
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 183
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 184
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private static isClassUnsolicited(I)Z
    .locals 2
    .param p0, "code"    # I

    .prologue
    const/4 v0, 0x0

    .line 117
    const/16 v1, 0x258

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2bc

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/NativeDaemonEvent;
    .locals 12
    .param p0, "rawEvent"    # Ljava/lang/String;
    .param p1, "fdList"    # [Ljava/io/FileDescriptor;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x2

    .line 138
    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "parsed":[Ljava/lang/String;
    array-length v0, v8

    if-ge v0, v6, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Insufficient arguments"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    const/4 v9, 0x0

    .line 147
    .local v9, "skiplength":I
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 148
    .local v2, "code":I
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 v9, v0, 0x1

    .line 153
    const/4 v1, -0x1

    .line 154
    .local v1, "cmdNumber":I
    invoke-static {v2}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    array-length v0, v8

    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Insufficient arguemnts"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    .end local v1    # "cmdNumber":I
    .end local v2    # "code":I
    :catch_0
    move-exception v7

    .line 150
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "problem parsing code"

    invoke-direct {v0, v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 159
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "cmdNumber":I
    .restart local v2    # "code":I
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 160
    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v9, v0

    .line 166
    :cond_2
    move-object v5, p0

    .line 167
    .local v5, "logMessage":Ljava/lang/String;
    array-length v0, v8

    if-le v0, v6, :cond_3

    aget-object v0, v8, v6

    const-string/jumbo v4, "{{sensitive}}"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    aget-object v0, v8, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v9, v0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v8, v10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v8, v11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " {}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    :cond_3
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "message":Ljava/lang/String;
    new-instance v0, Lcom/android/server/NativeDaemonEvent;

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V

    return-object v0

    .line 161
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "logMessage":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 162
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "problem parsing cmdNumber"

    invoke-direct {v0, v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .param p0, "rawEvent"    # Ljava/lang/String;

    .prologue
    const/4 v13, -0x1

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "DEBUG_ROUTINE":Z
    const-string/jumbo v1, "unescapeArgs"

    .line 209
    .local v1, "LOGTAG":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v6, "parsed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 211
    .local v3, "length":I
    const/4 v2, 0x0

    .line 212
    .local v2, "current":I
    const/4 v10, -0x1

    .line 213
    .local v10, "wordEnd":I
    const/4 v7, 0x0

    .line 216
    .local v7, "quoted":Z
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x22

    if-ne v11, v12, :cond_0

    .line 217
    const/4 v7, 0x1

    .line 218
    const/4 v2, 0x1

    .line 220
    :cond_0
    :goto_0
    if-ge v2, v3, :cond_7

    .line 222
    if-eqz v7, :cond_2

    const/16 v8, 0x22

    .line 223
    .local v8, "terminator":C
    :goto_1
    move v10, v2

    .line 224
    :goto_2
    if-ge v10, v3, :cond_3

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v8, :cond_3

    .line 225
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_1

    .line 227
    add-int/lit8 v10, v10, 0x1

    .line 229
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 222
    .end local v8    # "terminator":C
    :cond_2
    const/16 v8, 0x20

    .restart local v8    # "terminator":C
    goto :goto_1

    .line 231
    :cond_3
    if-le v10, v3, :cond_4

    move v10, v3

    .line 232
    :cond_4
    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, "word":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v2, v11

    .line 234
    if-nez v7, :cond_5

    .line 235
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 240
    :goto_3
    const-string/jumbo v11, "\\\\"

    const-string/jumbo v12, "\\"

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 241
    const-string/jumbo v11, "\\\""

    const-string/jumbo v12, "\""

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 244
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    const/16 v11, 0x20

    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 248
    .local v5, "nextSpace":I
    const-string/jumbo v11, " \""

    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 252
    .local v4, "nextQuote":I
    if-le v4, v13, :cond_6

    if-gt v4, v5, :cond_6

    .line 253
    const/4 v7, 0x1

    .line 254
    add-int/lit8 v2, v4, 0x2

    .line 252
    goto :goto_0

    .line 237
    .end local v4    # "nextQuote":I
    .end local v5    # "nextSpace":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 256
    .restart local v4    # "nextQuote":I
    .restart local v5    # "nextSpace":I
    :cond_6
    const/4 v7, 0x0

    .line 257
    if-le v5, v13, :cond_0

    .line 258
    add-int/lit8 v2, v5, 0x1

    goto :goto_0

    .line 266
    .end local v4    # "nextQuote":I
    .end local v5    # "nextSpace":I
    .end local v8    # "terminator":C
    .end local v9    # "word":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    return-object v11
.end method


# virtual methods
.method public checkCode(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    if-eq v0, p1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    return-void
.end method

.method public getCmdNumber()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    return v0
.end method

.method public getField(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    .line 201
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 202
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_1

    return-object v1

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRawEvent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    return-object v0
.end method

.method public isClassClientError()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 106
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isClassContinue()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 85
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isClassOk()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isClassServerError()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 99
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isClassUnsolicited()Z
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    return-object v0
.end method
