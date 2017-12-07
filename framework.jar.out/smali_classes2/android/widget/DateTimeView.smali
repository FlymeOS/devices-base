.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I

.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field private mNowText:Ljava/lang/String;

.field private mShowRelativeTime:Z

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method static synthetic -get0(Landroid/widget/DateTimeView;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 82
    sget-object v5, Lcom/android/internal/R$styleable;->DateTimeView:[I

    .line 81
    invoke-virtual {p1, p2, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 85
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 86
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 87
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 88
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 86
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 91
    .local v4, "relative":Z
    invoke-virtual {p0, v4}, Landroid/widget/DateTimeView;->setShowRelativeTime(Z)V

    goto :goto_1

    .line 95
    .end local v2    # "attr":I
    .end local v4    # "relative":Z
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private computeNextMidnight(Ljava/util/TimeZone;)J
    .locals 4
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v3, 0x0

    .line 295
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 296
    .local v0, "c":Landroid/icu/util/Calendar;
    invoke-static {p1}, Llibcore/icu/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 297
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->add(II)V

    .line 298
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 299
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 300
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 301
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 302
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private static dayDistance(Ljava/util/TimeZone;JJ)I
    .locals 5
    .param p0, "timeZone"    # Ljava/util/TimeZone;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 323
    invoke-virtual {p0, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {p3, p4, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 324
    invoke-virtual {p0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {p1, p2, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 323
    sub-int/2addr v0, v1

    return v0
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private updateNowText()V
    .locals 2

    .prologue
    .line 313
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-nez v0, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 317
    const v1, 0x104036b

    .line 316
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .line 312
    return-void
.end method

.method private updateRelativeTime()V
    .locals 14

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 230
    .local v6, "now":J
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 233
    .local v2, "duration":J
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v10, v6, v10

    if-ltz v10, :cond_0

    const/4 v1, 0x1

    .line 235
    .local v1, "past":Z
    :goto_0
    const-wide/32 v10, 0xea60

    cmp-long v10, v2, v10

    if-gez v10, :cond_1

    .line 236
    iget-object v10, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    invoke-virtual {p0, v10}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    const-wide/32 v12, 0xea60

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 238
    return-void

    .line 233
    .end local v1    # "past":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "past":Z
    goto :goto_0

    .line 239
    :cond_1
    const-wide/32 v10, 0x36ee80

    cmp-long v10, v2, v10

    if-gez v10, :cond_4

    .line 240
    const-wide/32 v10, 0xea60

    div-long v10, v2, v10

    long-to-int v0, v10

    .line 241
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v1, :cond_3

    .line 242
    const v10, 0x1140007

    .line 241
    :goto_1
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 241
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "result":Ljava/lang/String;
    const-wide/32 v4, 0xea60

    .line 280
    .local v4, "millisIncrease":J
    :goto_2
    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-eqz v10, :cond_2

    .line 281
    if-eqz v1, :cond_c

    .line 282
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-int/lit8 v12, v0, 0x1

    int-to-long v12, v12

    mul-long/2addr v12, v4

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 287
    :cond_2
    :goto_3
    invoke-virtual {p0, v8}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void

    .line 243
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    :cond_3
    const v10, 0x114000b

    goto :goto_1

    .line 247
    .end local v0    # "count":I
    :cond_4
    const-wide/32 v10, 0x5265c00

    cmp-long v10, v2, v10

    if-gez v10, :cond_6

    .line 248
    const-wide/32 v10, 0x36ee80

    div-long v10, v2, v10

    long-to-int v0, v10

    .line 249
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v1, :cond_5

    .line 250
    const v10, 0x1140008

    .line 249
    :goto_4
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 249
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 254
    .restart local v8    # "result":Ljava/lang/String;
    const-wide/32 v4, 0x36ee80

    .restart local v4    # "millisIncrease":J
    goto :goto_2

    .line 251
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    :cond_5
    const v10, 0x114000c

    goto :goto_4

    .line 255
    .end local v0    # "count":I
    :cond_6
    const-wide v10, 0x7528ad000L

    cmp-long v10, v2, v10

    if-gez v10, :cond_a

    .line 257
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    .line 258
    .local v9, "timeZone":Ljava/util/TimeZone;
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-static {v9, v10, v11, v6, v7}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 259
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v1, :cond_8

    .line 260
    const v10, 0x1140009

    .line 259
    :goto_5
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 259
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 264
    .restart local v8    # "result":Ljava/lang/String;
    if-nez v1, :cond_7

    const/4 v10, 0x1

    if-eq v0, v10, :cond_9

    .line 265
    :cond_7
    invoke-direct {p0, v9}, Landroid/widget/DateTimeView;->computeNextMidnight(Ljava/util/TimeZone;)J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 266
    const-wide/16 v4, -0x1

    .line 264
    .restart local v4    # "millisIncrease":J
    goto/16 :goto_2

    .line 261
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    :cond_8
    const v10, 0x114000d

    goto :goto_5

    .line 268
    .restart local v8    # "result":Ljava/lang/String;
    :cond_9
    const-wide/32 v4, 0x5265c00

    .restart local v4    # "millisIncrease":J
    goto/16 :goto_2

    .line 272
    .end local v0    # "count":I
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "timeZone":Ljava/util/TimeZone;
    :cond_a
    const-wide v10, 0x7528ad000L

    div-long v10, v2, v10

    long-to-int v0, v10

    .line 273
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v1, :cond_b

    .line 274
    const v10, 0x114000a

    .line 273
    :goto_6
    invoke-virtual {v11, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 273
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 278
    .restart local v8    # "result":Ljava/lang/String;
    const-wide v4, 0x7528ad000L

    .restart local v4    # "millisIncrease":J
    goto/16 :goto_2

    .line 275
    .end local v4    # "millisIncrease":J
    .end local v8    # "result":Ljava/lang/String;
    :cond_b
    const v10, 0x114000e

    goto :goto_6

    .line 284
    .restart local v4    # "millisIncrease":J
    .restart local v8    # "result":Ljava/lang/String;
    :cond_c
    iget-wide v10, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    int-to-long v12, v0

    mul-long/2addr v12, v4

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto/16 :goto_3
.end method


# virtual methods
.method clearFormatAndUpdate()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 333
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 331
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 101
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 102
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .end local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    invoke-direct {v0, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    .line 104
    .restart local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 106
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    .line 99
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 308
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 309
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 306
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 112
    sget-object v1, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 113
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 339
    iget-boolean v8, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v8, :cond_0

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 343
    .local v4, "now":J
    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 345
    .local v2, "duration":J
    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v8, v4, v8

    if-ltz v8, :cond_1

    const/4 v1, 0x1

    .line 347
    .local v1, "past":Z
    :goto_0
    const-wide/32 v8, 0xea60

    cmp-long v8, v2, v8

    if-gez v8, :cond_2

    .line 348
    iget-object v6, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .line 389
    .local v6, "result":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 337
    .end local v1    # "past":Z
    .end local v2    # "duration":J
    .end local v4    # "now":J
    .end local v6    # "result":Ljava/lang/String;
    :cond_0
    return-void

    .line 345
    .restart local v2    # "duration":J
    .restart local v4    # "now":J
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "past":Z
    goto :goto_0

    .line 349
    :cond_2
    const-wide/32 v8, 0x36ee80

    cmp-long v8, v2, v8

    if-gez v8, :cond_4

    .line 350
    const-wide/32 v8, 0xea60

    div-long v8, v2, v8

    long-to-int v0, v8

    .line 351
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v1, :cond_3

    .line 352
    const v8, 0x114000f

    .line 351
    :goto_2
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 357
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 351
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_1

    .line 354
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    const v8, 0x1140013

    goto :goto_2

    .line 358
    .end local v0    # "count":I
    :cond_4
    const-wide/32 v8, 0x5265c00

    cmp-long v8, v2, v8

    if-gez v8, :cond_6

    .line 359
    const-wide/32 v8, 0x36ee80

    div-long v8, v2, v8

    long-to-int v0, v8

    .line 360
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v1, :cond_5

    .line 361
    const v8, 0x1140010

    .line 360
    :goto_3
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 366
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 360
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_1

    .line 363
    .end local v6    # "result":Ljava/lang/String;
    :cond_5
    const v8, 0x1140014

    goto :goto_3

    .line 367
    .end local v0    # "count":I
    :cond_6
    const-wide v8, 0x7528ad000L

    cmp-long v8, v2, v8

    if-gez v8, :cond_8

    .line 369
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 370
    .local v7, "timeZone":Ljava/util/TimeZone;
    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-static {v7, v8, v9, v4, v5}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 371
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v1, :cond_7

    .line 372
    const v8, 0x1140011

    .line 371
    :goto_4
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 377
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 371
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 374
    .end local v6    # "result":Ljava/lang/String;
    :cond_7
    const v8, 0x1140015

    goto :goto_4

    .line 380
    .end local v0    # "count":I
    .end local v7    # "timeZone":Ljava/util/TimeZone;
    :cond_8
    const-wide v8, 0x7528ad000L

    div-long v8, v2, v8

    long-to-int v0, v8

    .line 381
    .restart local v0    # "count":I
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v1, :cond_9

    .line 382
    const v8, 0x1140012

    .line 381
    :goto_5
    invoke-virtual {v9, v8, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 387
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 381
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 384
    .end local v6    # "result":Ljava/lang/String;
    :cond_9
    const v8, 0x1140016

    goto :goto_5
.end method

.method public setShowRelativeTime(Z)V
    .locals 0
    .param p1, "showRelativeTime"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 129
    iput-boolean p1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    .line 130
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 131
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 128
    return-void
.end method

.method public setTime(J)V
    .locals 9
    .param p1, "time"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 120
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 121
    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 122
    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 123
    new-instance v0, Ljava/util/Date;

    iget v1, v7, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, v7, Landroid/text/format/Time;->month:I

    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    iget v4, v7, Landroid/text/format/Time;->hour:I

    iget v5, v7, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 124
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 119
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 137
    if-eq p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 138
    .local v0, "gotVisible":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 136
    :cond_0
    return-void

    .line 137
    .end local v0    # "gotVisible":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "gotVisible":Z
    goto :goto_0
.end method

.method update()V
    .locals 22

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    if-eqz v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v15

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v15, v0, :cond_1

    .line 146
    :cond_0
    return-void

    .line 148
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v15, :cond_2

    .line 149
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->updateRelativeTime()V

    .line 150
    return-void

    .line 154
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 156
    .local v14, "time":Ljava/util/Date;
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 157
    .local v12, "t":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 158
    const/4 v15, 0x0

    iput v15, v12, Landroid/text/format/Time;->second:I

    .line 160
    iget v15, v12, Landroid/text/format/Time;->hour:I

    add-int/lit8 v15, v15, -0xc

    iput v15, v12, Landroid/text/format/Time;->hour:I

    .line 161
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 162
    .local v18, "twelveHoursBefore":J
    iget v15, v12, Landroid/text/format/Time;->hour:I

    add-int/lit8 v15, v15, 0xc

    iput v15, v12, Landroid/text/format/Time;->hour:I

    .line 163
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    .line 164
    .local v16, "twelveHoursAfter":J
    const/4 v15, 0x0

    iput v15, v12, Landroid/text/format/Time;->hour:I

    .line 165
    const/4 v15, 0x0

    iput v15, v12, Landroid/text/format/Time;->minute:I

    .line 166
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 167
    .local v8, "midnightBefore":J
    iget v15, v12, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v12, Landroid/text/format/Time;->monthDay:I

    .line 168
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 170
    .local v6, "midnightAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 171
    .local v10, "nowMillis":J
    invoke-virtual {v12, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 172
    const/4 v15, 0x0

    iput v15, v12, Landroid/text/format/Time;->second:I

    .line 173
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    .line 177
    cmp-long v15, v10, v8

    if-ltz v15, :cond_4

    cmp-long v15, v10, v6

    if-gez v15, :cond_4

    .line 179
    :cond_3
    const/4 v4, 0x0

    .line 189
    .local v4, "display":I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    if-ne v4, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    if-eqz v15, :cond_6

    .line 191
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 207
    .local v5, "format":Ljava/text/DateFormat;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    invoke-virtual {v5, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 208
    .local v13, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    if-nez v4, :cond_8

    .line 213
    cmp-long v15, v16, v6

    if-lez v15, :cond_7

    .end local v16    # "twelveHoursAfter":J
    :goto_2
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 144
    .end local v18    # "twelveHoursBefore":J
    :goto_3
    return-void

    .line 178
    .end local v4    # "display":I
    .end local v5    # "format":Ljava/text/DateFormat;
    .end local v13    # "text":Ljava/lang/String;
    .restart local v16    # "twelveHoursAfter":J
    .restart local v18    # "twelveHoursBefore":J
    :cond_4
    cmp-long v15, v10, v18

    if-ltz v15, :cond_5

    cmp-long v15, v10, v16

    if-ltz v15, :cond_3

    .line 183
    :cond_5
    const/4 v4, 0x1

    .line 184
    .restart local v4    # "display":I
    goto :goto_0

    .line 193
    :cond_6
    packed-switch v4, :pswitch_data_0

    .line 201
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unknown display value: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 195
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v5

    .line 203
    .restart local v5    # "format":Ljava/text/DateFormat;
    :goto_4
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    goto :goto_1

    .line 198
    .end local v5    # "format":Ljava/text/DateFormat;
    :pswitch_1
    const/4 v15, 0x3

    invoke-static {v15}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    .restart local v5    # "format":Ljava/text/DateFormat;
    goto :goto_4

    .restart local v13    # "text":Ljava/lang/String;
    :cond_7
    move-wide/from16 v16, v6

    .line 213
    goto :goto_2

    .line 216
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v20, v0

    cmp-long v15, v20, v10

    if-gez v15, :cond_9

    .line 218
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_3

    .line 222
    :cond_9
    cmp-long v15, v18, v8

    if-gez v15, :cond_a

    .end local v18    # "twelveHoursBefore":J
    :goto_5
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_3

    .restart local v18    # "twelveHoursBefore":J
    :cond_a
    move-wide/from16 v18, v8

    .line 223
    goto :goto_5

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
