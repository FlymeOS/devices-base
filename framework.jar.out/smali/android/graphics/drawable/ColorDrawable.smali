.class public Landroid/graphics/drawable/ColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ColorDrawable$ColorState;
    }
.end annotation


# instance fields
.field private mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "state_"
    .end annotation
.end field

.field private mMutated:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable$ColorState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable$ColorState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 70
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/ColorDrawable$ColorState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 336
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 337
    iput-object p1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 339
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 336
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;Landroid/graphics/drawable/ColorDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/ColorDrawable$ColorState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 348
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v2, v2, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/ColorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 347
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 247
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 250
    .local v0, "state":Landroid/graphics/drawable/ColorDrawable$ColorState;
    iget v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    .line 253
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    .line 255
    iget v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 256
    iget v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    iput v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    .line 246
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 268
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 269
    .local v1, "state":Landroid/graphics/drawable/ColorDrawable$ColorState;
    if-nez v1, :cond_0

    .line 270
    return-void

    .line 273
    :cond_0
    iget-object v2, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    sget-object v3, Lcom/android/internal/R$styleable;->ColorDrawable:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 275
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 276
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    iget-object v2, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    .line 283
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/ColorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 265
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable$ColorState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorDrawable;->mMutated:Z

    .line 96
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 103
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 104
    .local v0, "colorFilter":Landroid/graphics/ColorFilter;
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v1, v1, 0x18

    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    .line 105
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 106
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 109
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v2, v2, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 113
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 102
    :cond_2
    return-void

    .line 104
    :cond_3
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable$ColorState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    const/4 v1, -0x3

    .line 212
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    return v1

    .line 216
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    sparse-switch v0, :sswitch_data_0

    .line 222
    return v1

    .line 218
    :sswitch_0
    const/4 v0, -0x1

    return v0

    .line 220
    :sswitch_1
    const/4 v0, -0x2

    return v0

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    .line 228
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 226
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 236
    sget-object v1, Lcom/android/internal/R$styleable;->ColorDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/ColorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 237
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 238
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 233
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/graphics/drawable/ColorDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 87
    new-instance v0, Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable$ColorState;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorDrawable;->mMutated:Z

    .line 90
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .prologue
    .line 197
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    .line 198
    .local v0, "state":Landroid/graphics/drawable/ColorDrawable$ColorState;
    iget-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/ColorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 200
    const/4 v1, 0x1

    return v1

    .line 202
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setAlpha(I)V
    .locals 5
    .param p1, "alpha"    # I

    .prologue
    .line 158
    shr-int/lit8 v3, p1, 0x7

    add-int/2addr p1, v3

    .line 159
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v3, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    ushr-int/lit8 v0, v3, 0x18

    .line 160
    .local v0, "baseAlpha":I
    mul-int v3, v0, p1

    shr-int/lit8 v1, v3, 0x8

    .line 161
    .local v1, "useAlpha":I
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v3, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    shl-int/lit8 v3, v3, 0x8

    ushr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v4, v1, 0x18

    or-int v2, v3, v4

    .line 162
    .local v2, "useColor":I
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v3, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    if-eq v3, v2, :cond_0

    .line 163
    iget-object v3, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iput v2, v3, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    .line 164
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    .line 157
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 135
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget v0, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    if-eq v0, p1, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iput p1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    iput p1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 137
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    .line 134
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 178
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 177
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 183
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iput-object p1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    .line 184
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/ColorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 185
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    .line 182
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 190
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iput-object p1, v0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/ColorDrawable;->mColorState:Landroid/graphics/drawable/ColorDrawable$ColorState;

    iget-object v1, v1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/ColorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 192
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    .line 189
    return-void
.end method
