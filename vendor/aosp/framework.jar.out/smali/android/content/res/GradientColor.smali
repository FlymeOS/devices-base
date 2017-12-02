.class public Landroid/content/res/GradientColor;
.super Landroid/content/res/ComplexColor;
.source "GradientColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/GradientColor$GradientColorFactory;
    }
.end annotation


# static fields
.field private static final DBG_GRADIENT:Z = false

.field private static final TAG:Ljava/lang/String; = "GradientColor"

.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1


# instance fields
.field private mCenterColor:I

.field private mCenterX:F

.field private mCenterY:F

.field private mChangingConfigurations:I

.field private mDefaultColor:I

.field private mEndColor:I

.field private mEndX:F

.field private mEndY:F

.field private mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

.field private mGradientRadius:F

.field private mGradientType:I

.field private mHasCenterColor:Z

.field private mItemColors:[I

.field private mItemOffsets:[F

.field private mItemsThemeAttrs:[[I

.field private mShader:Landroid/graphics/Shader;

.field private mStartColor:I

.field private mStartX:F

.field private mStartY:F

.field private mThemeAttrs:[I

.field private mTileMode:I


# direct methods
.method static synthetic -get0(Landroid/content/res/GradientColor;)I
    .locals 1

    iget v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    return v0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 97
    iput v2, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 99
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 100
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 102
    iput v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 103
    iput v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 104
    iput v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 105
    iput v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 107
    iput v2, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 108
    iput v2, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 109
    iput v2, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 110
    iput-boolean v2, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 112
    iput v2, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 114
    iput v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 124
    return-void
.end method

.method private constructor <init>(Landroid/content/res/GradientColor;)V
    .locals 3
    .param p1, "copy"    # Landroid/content/res/GradientColor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 93
    iput-object v2, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 97
    iput v1, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 99
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 100
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 102
    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 103
    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 104
    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 105
    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 107
    iput v1, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 108
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 109
    iput v1, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 110
    iput-boolean v1, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 112
    iput v1, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 114
    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 128
    if-eqz p1, :cond_3

    .line 129
    iget v0, p1, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 130
    iget v0, p1, Landroid/content/res/GradientColor;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    .line 131
    iget-object v0, p1, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 132
    iget v0, p1, Landroid/content/res/GradientColor;->mGradientType:I

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 133
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 134
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 135
    iget v0, p1, Landroid/content/res/GradientColor;->mStartX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 136
    iget v0, p1, Landroid/content/res/GradientColor;->mStartY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 137
    iget v0, p1, Landroid/content/res/GradientColor;->mEndX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 138
    iget v0, p1, Landroid/content/res/GradientColor;->mEndY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 139
    iget v0, p1, Landroid/content/res/GradientColor;->mStartColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 140
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 141
    iget v0, p1, Landroid/content/res/GradientColor;->mEndColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 142
    iget-boolean v0, p1, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 143
    iget v0, p1, Landroid/content/res/GradientColor;->mGradientRadius:F

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 144
    iget v0, p1, Landroid/content/res/GradientColor;->mTileMode:I

    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 146
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemColors:[I

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemColors:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    .line 149
    :cond_0
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemOffsets:[F

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemOffsets:[F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    .line 153
    :cond_1
    iget-object v0, p1, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p1, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 156
    :cond_2
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 127
    :cond_3
    return-void
.end method

.method private applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .locals 9
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    const/4 v8, 0x0

    .line 390
    iget-object v5, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-nez v5, :cond_0

    .line 391
    return-void

    .line 394
    :cond_0
    const/4 v2, 0x0

    .line 396
    .local v2, "hasUnresolvedAttrs":Z
    iget-object v4, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 397
    .local v4, "themeAttrsList":[[I
    array-length v0, v4

    .line 398
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 399
    aget-object v5, v4, v3

    if-eqz v5, :cond_2

    .line 400
    aget-object v5, v4, v3

    .line 401
    sget-object v6, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    .line 400
    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 406
    .local v1, "a":Landroid/content/res/TypedArray;
    aget-object v5, v4, v3

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v5

    aput-object v5, v4, v3

    .line 407
    aget-object v5, v4, v3

    if-eqz v5, :cond_1

    .line 408
    const/4 v2, 0x1

    .line 411
    :cond_1
    iget-object v5, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    iget-object v6, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    aget v6, v6, v3

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    aput v6, v5, v3

    .line 412
    iget-object v5, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    iget-object v6, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    aget v6, v6, v3

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    aput v6, v5, v3

    .line 420
    iget v5, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 422
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 398
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    :cond_3
    if-nez v2, :cond_4

    .line 427
    iput-object v8, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 389
    :cond_4
    return-void
.end method

.method private applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 570
    iget-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientColor:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 573
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 575
    invoke-direct {p0, v0}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    .line 578
    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 579
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 569
    return-void
.end method

.method private applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 560
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    .line 561
    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V

    .line 563
    :cond_0
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v0, :cond_1

    .line 564
    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V

    .line 566
    :cond_1
    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    .line 559
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 253
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 256
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "type":I
    if-eq v1, v3, :cond_1

    .line 257
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 261
    :cond_1
    if-eq v1, v3, :cond_2

    .line 262
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object v2

    return-object v2
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "gradient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": invalid gradient color tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_0
    new-instance v0, Landroid/content/res/GradientColor;

    invoke-direct {v0}, Landroid/content/res/GradientColor;-><init>()V

    .line 286
    .local v0, "gradientColor":Landroid/content/res/GradientColor;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/GradientColor;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 287
    return-object v0
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
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
    .line 296
    sget-object v1, Lcom/android/internal/R$styleable;->GradientColor:[I

    invoke-static {p1, p4, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 297
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    .line 298
    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 299
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 302
    invoke-direct {p0}, Landroid/content/res/GradientColor;->validateXmlContent()V

    .line 304
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/GradientColor;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 306
    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    .line 295
    return-void
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 21
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
    .line 319
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    add-int/lit8 v11, v18, 0x1

    .line 324
    .local v11, "innerDepth":I
    const/16 v18, 0x14

    move/from16 v0, v18

    new-array v14, v0, [F

    .line 325
    .local v14, "offsetList":[F
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v6, v0, [I

    .line 326
    .local v6, "colorList":[I
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [[I

    move-object/from16 v16, v0

    .line 328
    .local v16, "themeAttrsList":[[I
    const/4 v12, 0x0

    .line 329
    .local v12, "listSize":I
    const/4 v10, 0x0

    .line 330
    .local v10, "hasUnresolvedAttrs":Z
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .local v17, "type":I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 331
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .local v7, "depth":I
    if-ge v7, v11, :cond_1

    .line 332
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 333
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 336
    if-gt v7, v11, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "item"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 341
    sget-object v18, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    .line 340
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 342
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    .line 343
    .local v8, "hasColor":Z
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    .line 344
    .local v9, "hasOffset":Z
    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    .line 351
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v15

    .line 352
    .local v15, "themeAttrs":[I
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 353
    .local v5, "color":I
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 359
    .local v13, "offset":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    move/from16 v18, v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 360
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 362
    if-eqz v15, :cond_2

    .line 363
    const/4 v10, 0x1

    .line 366
    :cond_2
    invoke-static {v6, v12, v5}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v6

    .line 367
    invoke-static {v14, v12, v13}, Lcom/android/internal/util/GrowingArrayUtils;->append([FIF)[F

    move-result-object v14

    .line 368
    move-object/from16 v0, v16

    invoke-static {v0, v12, v15}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "themeAttrsList":[[I
    check-cast v16, [[I

    .line 369
    .restart local v16    # "themeAttrsList":[[I
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 345
    .end local v5    # "color":I
    .end local v13    # "offset":F
    .end local v15    # "themeAttrs":[I
    :cond_3
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    .line 346
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 347
    const-string/jumbo v20, ": <item> tag requires a \'color\' attribute and a \'offset\' "

    .line 346
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 348
    const-string/jumbo v20, "attribute!"

    .line 346
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 345
    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 371
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "depth":I
    .end local v8    # "hasColor":Z
    .end local v9    # "hasOffset":Z
    :cond_4
    if-lez v12, :cond_5

    .line 372
    if-eqz v10, :cond_6

    .line 373
    new-array v0, v12, [[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    :goto_1
    new-array v0, v12, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/GradientColor;->mItemColors:[I

    .line 380
    new-array v0, v12, [F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/GradientColor;->mItemOffsets:[F

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/GradientColor;->mItemColors:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v6, v0, v1, v2, v12}, Ljava/lang/System;->arraycopy([II[III)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v14, v0, v1, v2, v12}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 318
    :cond_5
    return-void

    .line 376
    :cond_6
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    goto :goto_1
.end method

.method private onColorsChange()V
    .locals 11

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 432
    const/4 v5, 0x0

    .line 433
    .local v5, "tempColors":[I
    const/4 v6, 0x0

    .line 435
    .local v6, "tempOffsets":[F
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    array-length v9, v0

    .line 437
    .local v9, "length":I
    new-array v5, v9, [I

    .line 438
    .local v5, "tempColors":[I
    new-array v6, v9, [F

    .line 440
    .local v6, "tempOffsets":[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 441
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    aget v0, v0, v8

    aput v0, v5, v8

    .line 442
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    aget v0, v0, v8

    aput v0, v6, v8

    .line 440
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 445
    .end local v8    # "i":I
    .end local v9    # "length":I
    .local v5, "tempColors":[I
    .local v6, "tempOffsets":[F
    :cond_0
    iget-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    if-eqz v0, :cond_3

    .line 446
    new-array v5, v2, [I

    .line 447
    .local v5, "tempColors":[I
    iget v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    aput v0, v5, v10

    .line 448
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    aput v0, v5, v3

    .line 449
    iget v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    aput v0, v5, v1

    .line 451
    new-array v6, v2, [F

    .line 452
    .local v6, "tempOffsets":[F
    const/4 v0, 0x0

    aput v0, v6, v10

    .line 454
    const/high16 v0, 0x3f000000    # 0.5f

    aput v0, v6, v3

    .line 455
    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v6, v1

    .line 462
    .end local v6    # "tempOffsets":[F
    :cond_1
    :goto_1
    array-length v0, v5

    if-ge v0, v1, :cond_2

    .line 463
    const-string/jumbo v0, "GradientColor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<gradient> tag requires 2 color values specified!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 464
    const-string/jumbo v2, " "

    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_2
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    if-nez v0, :cond_4

    .line 468
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    iget v2, p0, Landroid/content/res/GradientColor;->mStartY:F

    iget v3, p0, Landroid/content/res/GradientColor;->mEndX:F

    iget v4, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 469
    iget v7, p0, Landroid/content/res/GradientColor;->mTileMode:I

    invoke-static {v7}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v7

    .line 468
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 478
    :goto_2
    aget v0, v5, v10

    iput v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    .line 431
    return-void

    .line 457
    .local v5, "tempColors":[I
    .local v6, "tempOffsets":[F
    :cond_3
    new-array v5, v1, [I

    .line 458
    .local v5, "tempColors":[I
    iget v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    aput v0, v5, v10

    .line 459
    iget v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    aput v0, v5, v3

    goto :goto_1

    .line 471
    .end local v6    # "tempOffsets":[F
    :cond_4
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    if-ne v0, v3, :cond_5

    .line 472
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, p0, Landroid/content/res/GradientColor;->mCenterX:F

    iget v3, p0, Landroid/content/res/GradientColor;->mCenterY:F

    iget v4, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 473
    iget v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    invoke-static {v0}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v7

    .line 472
    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    goto :goto_2

    .line 475
    :cond_5
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    iget v2, p0, Landroid/content/res/GradientColor;->mCenterY:F

    invoke-direct {v0, v1, v2, v5, v6}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    goto :goto_2
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1
    .param p0, "tileMode"    # I

    .prologue
    .line 164
    packed-switch p0, :pswitch_data_0

    .line 172
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 166
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 168
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 170
    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateRootElementState(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x7

    .line 181
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 184
    iget v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    const/16 v1, 0x8

    .line 183
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 186
    iget v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    const/16 v1, 0x9

    .line 185
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 188
    iget v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    const/16 v1, 0xa

    .line 187
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 190
    iget v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    const/16 v1, 0xb

    .line 189
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 193
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    const/4 v1, 0x3

    .line 192
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 195
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    const/4 v1, 0x4

    .line 194
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 198
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    const/4 v1, 0x2

    .line 197
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 201
    iget v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    const/4 v1, 0x0

    .line 200
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 202
    iget-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 205
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 204
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 207
    iget v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    const/4 v1, 0x1

    .line 206
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 210
    iget v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    const/4 v1, 0x6

    .line 209
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 223
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 222
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 179
    return-void
.end method

.method private validateXmlContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 232
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 233
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 234
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 235
    const-string/jumbo v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 234
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 593
    iget-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 556
    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Landroid/content/res/GradientColor$GradientColorFactory;

    invoke-direct {v0, p0}, Landroid/content/res/GradientColor$GradientColorFactory;-><init>(Landroid/content/res/GradientColor;)V

    iput-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    .line 500
    :cond_0
    iget-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    return-object v0
.end method

.method public getDefaultColor()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public bridge synthetic obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Landroid/content/res/GradientColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object v0

    return-object v0
.end method

.method public obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 2
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 537
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/GradientColor;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    new-instance v0, Landroid/content/res/GradientColor;

    invoke-direct {v0, p0}, Landroid/content/res/GradientColor;-><init>(Landroid/content/res/GradientColor;)V

    .line 542
    .local v0, "clone":Landroid/content/res/GradientColor;
    invoke-direct {v0, p1}, Landroid/content/res/GradientColor;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 543
    return-object v0

    .line 538
    .end local v0    # "clone":Landroid/content/res/GradientColor;
    :cond_0
    return-object p0
.end method
