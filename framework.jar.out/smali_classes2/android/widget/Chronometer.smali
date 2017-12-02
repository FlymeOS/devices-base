.class public Landroid/widget/Chronometer;
.super Landroid/widget/TextView;
.source "Chronometer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Chronometer$1;,
        Landroid/widget/Chronometer$OnChronometerTickListener;
    }
.end annotation


# static fields
.field private static final HOUR_IN_SEC:I = 0xe10

.field private static final MIN_IN_SEC:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "Chronometer"


# instance fields
.field private mBase:J

.field private mCountDown:Z

.field private mFormat:Ljava/lang/String;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mFormatterArgs:[Ljava/lang/Object;

.field private mFormatterLocale:Ljava/util/Locale;

.field private mLogged:Z

.field private mNow:J

.field private mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

.field private mRecycle:Ljava/lang/StringBuilder;

.field private mRunning:Z

.field private mStarted:Z

.field private final mTickRunnable:Ljava/lang/Runnable;

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Landroid/widget/Chronometer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    return v0
.end method

.method static synthetic -get1(Landroid/widget/Chronometer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Chronometer;J)V
    .locals 1
    .param p1, "now"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    new-array v1, v4, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    .line 305
    new-instance v1, Landroid/widget/Chronometer$1;

    invoke-direct {v1, p0}, Landroid/widget/Chronometer$1;-><init>(Landroid/widget/Chronometer;)V

    iput-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    .line 110
    sget-object v1, Lcom/android/internal/R$styleable;->Chronometer:[I

    .line 109
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->setCountDown(Z)V

    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    invoke-direct {p0}, Landroid/widget/Chronometer;->init()V

    .line 106
    return-void
.end method

.method private static formatDuration(J)Ljava/lang/String;
    .locals 10
    .param p0, "ms"    # J

    .prologue
    .line 325
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 326
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v6, "text":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x3e8

    div-long v8, p0, v8

    long-to-int v0, v8

    .line 329
    .local v0, "duration":I
    if-gez v0, :cond_0

    .line 330
    neg-int v0, v0

    .line 333
    :cond_0
    const/4 v2, 0x0

    .line 334
    .local v2, "h":I
    const/4 v3, 0x0

    .line 336
    .local v3, "m":I
    const/16 v7, 0xe10

    if-lt v0, v7, :cond_1

    .line 337
    div-int/lit16 v2, v0, 0xe10

    .line 338
    mul-int/lit16 v7, v2, 0xe10

    sub-int/2addr v0, v7

    .line 340
    :cond_1
    const/16 v7, 0x3c

    if-lt v0, v7, :cond_2

    .line 341
    div-int/lit8 v3, v0, 0x3c

    .line 342
    mul-int/lit8 v7, v3, 0x3c

    sub-int/2addr v0, v7

    .line 344
    :cond_2
    move v5, v0

    .line 347
    .local v5, "s":I
    if-lez v2, :cond_3

    .line 348
    const/4 v7, 0x1

    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    .line 349
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x1140006

    .line 348
    invoke-virtual {v4, v8, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_3
    if-lez v3, :cond_5

    .line 352
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 353
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    :cond_4
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 356
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x1140005

    .line 355
    invoke-virtual {v4, v8, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 360
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    :cond_6
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 363
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x1140004

    .line 362
    invoke-virtual {v4, v8, v5, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 364
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v7, 0x0

    return-object v7
.end method

.method private init()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    .line 120
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 118
    return-void
.end method

.method private updateRunning()V
    .locals 4

    .prologue
    .line 292
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 293
    :goto_0
    iget-boolean v1, p0, Landroid/widget/Chronometer;->mRunning:Z

    if-eq v0, v1, :cond_0

    .line 294
    if-eqz v0, :cond_2

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/widget/Chronometer;->updateText(J)V

    .line 296
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 297
    iget-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    :goto_1
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mRunning:Z

    .line 291
    :cond_0
    return-void

    .line 292
    :cond_1
    const/4 v0, 0x0

    .local v0, "running":Z
    goto :goto_0

    .line 299
    .end local v0    # "running":Z
    :cond_2
    iget-object v1, p0, Landroid/widget/Chronometer;->mTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/Chronometer;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private declared-synchronized updateText(J)V
    .locals 9
    .param p1, "now"    # J

    .prologue
    monitor-enter p0

    .line 257
    :try_start_0
    iput-wide p1, p0, Landroid/widget/Chronometer;->mNow:J

    .line 258
    iget-boolean v6, p0, Landroid/widget/Chronometer;->mCountDown:Z

    if-eqz v6, :cond_3

    iget-wide v6, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long v4, v6, p1

    .line 259
    .local v4, "seconds":J
    :goto_0
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, "negative":Z
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 262
    neg-long v4, v4

    .line 263
    const/4 v2, 0x1

    .line 265
    :cond_0
    iget-object v6, p0, Landroid/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    invoke-static {v6, v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "text":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 267
    invoke-virtual {p0}, Landroid/widget/Chronometer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const v8, 0x1040606

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 270
    :cond_1
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 271
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 272
    .local v1, "loc":Ljava/util/Locale;
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 276
    :goto_1
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 277
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :try_start_1
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    iget-object v7, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    iget-object v8, p0, Landroid/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 280
    iget-object v6, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 288
    .end local v1    # "loc":Ljava/util/Locale;
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {p0, v3}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 256
    return-void

    .line 258
    .end local v2    # "negative":Z
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "seconds":J
    :cond_3
    :try_start_3
    iget-wide v6, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long v4, p1, v6

    .restart local v4    # "seconds":J
    goto :goto_0

    .line 273
    .restart local v1    # "loc":Ljava/util/Locale;
    .restart local v2    # "negative":Z
    .restart local v3    # "text":Ljava/lang/String;
    :cond_4
    iput-object v1, p0, Landroid/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    .line 274
    new-instance v6, Ljava/util/Formatter;

    iget-object v7, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v6, v7, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v6, p0, Landroid/widget/Chronometer;->mFormatter:Ljava/util/Formatter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v1    # "loc":Ljava/util/Locale;
    .end local v2    # "negative":Z
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "seconds":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 281
    .restart local v1    # "loc":Ljava/util/Locale;
    .restart local v2    # "negative":Z
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v4    # "seconds":J
    :catch_0
    move-exception v0

    .line 282
    .local v0, "ex":Ljava/util/IllegalFormatException;
    :try_start_4
    iget-boolean v6, p0, Landroid/widget/Chronometer;->mLogged:Z

    if-nez v6, :cond_2

    .line 283
    const-string/jumbo v6, "Chronometer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal format string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/Chronometer;->mLogged:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method dispatchChronometerTick()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    invoke-interface {v0, p0}, Landroid/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Landroid/widget/Chronometer;)V

    .line 316
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 378
    const-class v0, Landroid/widget/Chronometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBase()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Landroid/widget/Chronometer;->mBase:J

    return-wide v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 373
    iget-wide v0, p0, Landroid/widget/Chronometer;->mNow:J

    iget-wide v2, p0, Landroid/widget/Chronometer;->mBase:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/widget/Chronometer;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    return-object v0
.end method

.method public isCountDown()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/widget/Chronometer;->mCountDown:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 246
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 243
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 252
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/widget/Chronometer;->mVisible:Z

    .line 253
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 250
    return-void
.end method

.method public setBase(J)V
    .locals 3
    .param p1, "base"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 152
    iput-wide p1, p0, Landroid/widget/Chronometer;->mBase:J

    .line 153
    invoke-virtual {p0}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 151
    return-void
.end method

.method public setCountDown(Z)V
    .locals 2
    .param p1, "countDown"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 132
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mCountDown:Z

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/widget/Chronometer;->updateText(J)V

    .line 131
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 177
    iput-object p1, p0, Landroid/widget/Chronometer;->mFormat:Ljava/lang/String;

    .line 178
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    return-void
.end method

.method public setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/Chronometer$OnChronometerTickListener;

    .prologue
    .line 196
    iput-object p1, p0, Landroid/widget/Chronometer;->mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    .line 195
    return-void
.end method

.method public setStarted(Z)V
    .locals 0
    .param p1, "started"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 238
    iput-boolean p1, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 239
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 237
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 217
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 215
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer;->mStarted:Z

    .line 229
    invoke-direct {p0}, Landroid/widget/Chronometer;->updateRunning()V

    .line 227
    return-void
.end method
