.class public Landroid/widget/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AnalogClock$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F


# direct methods
.method static synthetic -set0(Landroid/widget/AnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0

    iput-object p1, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/AnalogClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 252
    new-instance v2, Landroid/widget/AnalogClock$1;

    invoke-direct {v2, p0}, Landroid/widget/AnalogClock$1;-><init>(Landroid/widget/AnalogClock;)V

    iput-object v2, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    .local v1, "r":Landroid/content/res/Resources;
    sget-object v2, Lcom/android/internal/R$styleable;->AnalogClock:[I

    .line 79
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 84
    const v2, 0x1080244

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 87
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v2, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 89
    const v2, 0x1080245

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 92
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 94
    const v2, 0x1080246

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 97
    :cond_2
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 99
    iget-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    .line 100
    iget-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    .line 75
    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    const/high16 v5, 0x42700000    # 60.0f

    .line 239
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 241
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 242
    .local v0, "hour":I
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 243
    .local v1, "minute":I
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 245
    .local v2, "second":I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AnalogClock;->mMinutes:F

    .line 246
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/AnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AnalogClock;->mHour:F

    .line 247
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 249
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0, v3}, Landroid/widget/AnalogClock;->updateContentDescription(Landroid/text/format/Time;)V

    .line 238
    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 6
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 267
    const/16 v1, 0x81

    .line 268
    .local v1, "flags":I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 269
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const/16 v3, 0x81

    .line 268
    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "contentDescription":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 105
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 107
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    .line 109
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v4, 0x0

    .line 122
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 133
    invoke-direct {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    .line 104
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 139
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    .line 137
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 178
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 180
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 181
    .local v3, "changed":Z
    if-eqz v3, :cond_0

    .line 182
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 185
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mLeft:I

    sub-int v2, v13, v14

    .line 186
    .local v2, "availableWidth":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mTop:I

    sub-int v1, v13, v14

    .line 188
    .local v1, "availableHeight":I
    div-int/lit8 v11, v2, 0x2

    .line 189
    .local v11, "x":I
    div-int/lit8 v12, v1, 0x2

    .line 191
    .local v12, "y":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 192
    .local v4, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 193
    .local v10, "w":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 195
    .local v5, "h":I
    const/4 v9, 0x0

    .line 197
    .local v9, "scaled":Z
    if-lt v2, v10, :cond_1

    if-ge v1, v5, :cond_2

    .line 198
    :cond_1
    const/4 v9, 0x1

    .line 199
    int-to-float v13, v2

    int-to-float v14, v10

    div-float/2addr v13, v14

    .line 200
    int-to-float v14, v1

    int-to-float v15, v5

    div-float/2addr v14, v15

    .line 199
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 201
    .local v8, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    int-to-float v13, v11

    int-to-float v14, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v8, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 205
    .end local v8    # "scale":F
    :cond_2
    if-eqz v3, :cond_3

    .line 206
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v5, 0x2

    sub-int v14, v12, v14

    div-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v11

    div-int/lit8 v16, v5, 0x2

    add-int v16, v16, v12

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 208
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 211
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AnalogClock;->mHour:F

    const/high16 v14, 0x41400000    # 12.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x43b40000    # 360.0f

    mul-float/2addr v13, v14

    int-to-float v14, v11

    int-to-float v15, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 212
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 213
    .local v6, "hourHand":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_4

    .line 214
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 215
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 216
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v5, 0x2

    sub-int v14, v12, v14

    div-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v11

    div-int/lit8 v16, v5, 0x2

    add-int v16, v16, v12

    move/from16 v0, v16

    invoke-virtual {v6, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 218
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 222
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AnalogClock;->mMinutes:F

    const/high16 v14, 0x42700000    # 60.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x43b40000    # 360.0f

    mul-float/2addr v13, v14

    int-to-float v14, v11

    int-to-float v15, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 224
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 225
    .local v7, "minuteHand":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5

    .line 226
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 227
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 228
    div-int/lit8 v13, v10, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v5, 0x2

    sub-int v14, v12, v14

    div-int/lit8 v15, v10, 0x2

    add-int/2addr v15, v11

    div-int/lit8 v16, v5, 0x2

    add-int v16, v16, v12

    move/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 230
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 233
    if-eqz v9, :cond_6

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 177
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 149
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 150
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 151
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 153
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 154
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 156
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    if-ge v6, v7, :cond_0

    .line 157
    int-to-float v7, v6

    iget v8, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 160
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    if-ge v2, v7, :cond_1

    .line 161
    int-to-float v7, v2

    iget v8, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 164
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 166
    .local v3, "scale":F
    iget v7, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Landroid/widget/AnalogClock;->resolveSizeAndState(III)I

    move-result v7

    .line 167
    iget v8, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Landroid/widget/AnalogClock;->resolveSizeAndState(III)I

    move-result v8

    .line 166
    invoke-virtual {p0, v7, v8}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 146
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 171
    return-void
.end method
