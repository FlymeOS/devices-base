.class public Landroid/content/res/ColorStateList;
.super Landroid/content/res/ComplexColor;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ColorStateList$1;,
        Landroid/content/res/ColorStateList$ColorStateListFactory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_COLOR:I = -0x10000

.field private static final EMPTY:[[I

.field private static final TAG:Ljava/lang/String; = "ColorStateList"

.field private static final sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mChangingConfigurations:I

.field private mColors:[I

.field private mDefaultColor:I

.field private mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

.field private mIsOpaque:Z

.field private mStateSpecs:[[I

.field private mThemeAttrs:[[I


# direct methods
.method static synthetic -get0(Landroid/content/res/ColorStateList;)I
    .locals 1

    iget v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 710
    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    .line 709
    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 125
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget v0, p1, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 203
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 204
    iget v0, p1, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 205
    iget-boolean v0, p1, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    iput-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    .line 208
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 209
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 200
    :cond_0
    return-void
.end method

.method public constructor <init>([[I[I)V
    .locals 0
    .param p1, "states"    # [[I
    .param p2, "colors"    # [I

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 154
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 155
    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 157
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 153
    return-void
.end method

.method private applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 12
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 412
    iget-object v8, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-nez v8, :cond_0

    .line 413
    return-void

    .line 416
    :cond_0
    const/4 v5, 0x0

    .line 418
    .local v5, "hasUnresolvedAttrs":Z
    iget-object v7, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 419
    .local v7, "themeAttrsList":[[I
    array-length v0, v7

    .line 420
    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_4

    .line 421
    aget-object v8, v7, v6

    if-eqz v8, :cond_2

    .line 422
    aget-object v8, v7, v6

    .line 423
    sget-object v9, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    .line 422
    invoke-virtual {p1, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 426
    .local v1, "a":Landroid/content/res/TypedArray;
    aget-object v8, v7, v6

    aget v8, v8, v11

    if-eqz v8, :cond_3

    .line 431
    iget-object v8, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v8, v8, v6

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v4, v8, v9

    .line 442
    .local v4, "defaultAlphaMod":F
    :goto_1
    aget-object v8, v7, v6

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v8

    aput-object v8, v7, v6

    .line 443
    aget-object v8, v7, v6

    if-eqz v8, :cond_1

    .line 444
    const/4 v5, 0x1

    .line 448
    :cond_1
    iget-object v8, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v8, v8, v6

    .line 447
    invoke-virtual {v1, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 450
    .local v3, "baseColor":I
    const/4 v8, 0x1

    .line 449
    invoke-virtual {v1, v8, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 451
    .local v2, "alphaMod":F
    iget-object v8, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-direct {p0, v3, v2}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    move-result v9

    aput v9, v8, v6

    .line 454
    iget v8, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 456
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 420
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "alphaMod":F
    .end local v3    # "baseColor":I
    .end local v4    # "defaultAlphaMod":F
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 436
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "defaultAlphaMod":F
    goto :goto_1

    .line 460
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "defaultAlphaMod":F
    :cond_4
    if-nez v5, :cond_5

    .line 461
    iput-object v10, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 464
    :cond_5
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 411
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 242
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 245
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    if-eq v1, v3, :cond_1

    .line 246
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 250
    :cond_1
    if-eq v1, v3, :cond_2

    .line 251
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
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
    .line 268
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "selector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": invalid color state list tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    :cond_0
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0}, Landroid/content/res/ColorStateList;-><init>()V

    .line 275
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 276
    return-object v0
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 29
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
    .line 303
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v26

    add-int/lit8 v15, v26, 0x1

    .line 307
    .local v15, "innerDepth":I
    const/4 v8, 0x0

    .line 308
    .local v8, "changingConfigurations":I
    const/high16 v11, -0x10000

    .line 310
    .local v11, "defaultColor":I
    const/4 v13, 0x0

    .line 312
    .local v13, "hasUnresolvedAttrs":Z
    const-class v26, [I

    const/16 v27, 0x14

    invoke-static/range {v26 .. v27}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[I

    .line 313
    .local v22, "stateSpecList":[[I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [[I

    move-object/from16 v24, v0

    .line 314
    .local v24, "themeAttrsList":[[I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v10, v0, [I

    .line 315
    .local v10, "colorList":[I
    const/16 v18, 0x0

    .line 317
    .local v18, "listSize":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v25

    .local v25, "type":I
    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 318
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .local v12, "depth":I
    if-ge v12, v15, :cond_1

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 319
    :cond_1
    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    if-gt v12, v15, :cond_0

    .line 320
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "item"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 325
    sget-object v26, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    .line 324
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 326
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v23

    .line 327
    .local v23, "themeAttrs":[I
    const/16 v26, 0x0

    const v27, -0xff01

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 328
    .local v7, "baseColor":I
    const/16 v26, 0x1

    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 330
    .local v6, "alphaMod":F
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v26

    or-int v8, v8, v26

    .line 332
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 335
    const/16 v16, 0x0

    .line 336
    .local v16, "j":I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v19

    .line 337
    .local v19, "numAttrs":I
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 338
    .local v21, "stateSpec":[I
    const/4 v14, 0x0

    .local v14, "i":I
    move/from16 v17, v16

    .end local v16    # "j":I
    .local v17, "j":I
    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_3

    .line 339
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v20

    .line 340
    .local v20, "stateResId":I
    sparse-switch v20, :sswitch_data_0

    .line 346
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "j":I
    .restart local v16    # "j":I
    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v26

    if-eqz v26, :cond_2

    .end local v20    # "stateResId":I
    :goto_2
    aput v20, v21, v17

    .line 338
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v17, v16

    .end local v16    # "j":I
    .restart local v17    # "j":I
    goto :goto_1

    .restart local v20    # "stateResId":I
    :sswitch_0
    move/from16 v16, v17

    .line 344
    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_3

    .line 347
    :cond_2
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    goto :goto_2

    .line 350
    .end local v16    # "j":I
    .end local v20    # "stateResId":I
    .restart local v17    # "j":I
    :cond_3
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v21

    .line 355
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    move-result v9

    .line 356
    .local v9, "color":I
    if-eqz v18, :cond_4

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_5

    .line 357
    :cond_4
    move v11, v9

    .line 360
    :cond_5
    if-eqz v23, :cond_6

    .line 361
    const/4 v13, 0x1

    .line 364
    :cond_6
    move/from16 v0, v18

    invoke-static {v10, v0, v9}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v10

    .line 365
    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "themeAttrsList":[[I
    check-cast v24, [[I

    .line 366
    .restart local v24    # "themeAttrsList":[[I
    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "stateSpecList":[[I
    check-cast v22, [[I

    .line 367
    .restart local v22    # "stateSpecList":[[I
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 370
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "alphaMod":F
    .end local v7    # "baseColor":I
    .end local v9    # "color":I
    .end local v12    # "depth":I
    .end local v14    # "i":I
    .end local v17    # "j":I
    .end local v19    # "numAttrs":I
    .end local v21    # "stateSpec":[I
    .end local v23    # "themeAttrs":[I
    :cond_7
    move-object/from16 v0, p0

    iput v8, v0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 371
    move-object/from16 v0, p0

    iput v11, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 373
    if-eqz v13, :cond_8

    .line 374
    move/from16 v0, v18

    new-array v0, v0, [[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move-object/from16 v2, v26

    move/from16 v3, v28

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    :goto_4
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mColors:[I

    .line 381
    move/from16 v0, v18

    new-array v0, v0, [[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mColors:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v18

    invoke-static {v10, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    move-object/from16 v2, v26

    move/from16 v3, v28

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    invoke-direct/range {p0 .. p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 302
    return-void

    .line 377
    :cond_8
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    goto :goto_4

    .line 340
    :sswitch_data_0
    .sparse-switch
        0x10101a5 -> :sswitch_0
        0x101031f -> :sswitch_0
    .end sparse-switch
.end method

.method private modulateColorAlpha(IF)I
    .locals 5
    .param p1, "baseColor"    # I
    .param p2, "alphaMod"    # F

    .prologue
    .line 501
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    .line 502
    return p1

    .line 505
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 506
    .local v1, "baseAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 507
    .local v0, "alpha":I
    const v2, 0xffffff

    and-int/2addr v2, p1

    shl-int/lit8 v3, v0, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method private onColorsChanged()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 629
    const/high16 v2, -0x10000

    .line 630
    .local v2, "defaultColor":I
    const/4 v4, 0x1

    .line 632
    .local v4, "isOpaque":Z
    iget-object v5, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 633
    .local v5, "states":[[I
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 634
    .local v1, "colors":[I
    array-length v0, v5

    .line 635
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 636
    aget v2, v1, v6

    .line 638
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 639
    aget-object v6, v5, v3

    array-length v6, v6

    if-nez v6, :cond_2

    .line 640
    aget v2, v1, v3

    .line 645
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 646
    aget v6, v1, v3

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_3

    .line 647
    const/4 v4, 0x0

    .line 653
    .end local v3    # "i":I
    :cond_1
    iput v2, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 654
    iput-boolean v4, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    .line 628
    return-void

    .line 638
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 645
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static valueOf(I)Landroid/content/res/ColorStateList;
    .locals 9
    .param p0, "color"    # I

    .prologue
    .line 165
    sget-object v6, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v6

    .line 166
    :try_start_0
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 167
    .local v4, "index":I
    if-ltz v4, :cond_1

    .line 168
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .local v1, "cached":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    monitor-exit v6

    .line 170
    return-object v1

    .line 174
    :cond_0
    :try_start_1
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 178
    .end local v1    # "cached":Landroid/content/res/ColorStateList;
    :cond_1
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 179
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 180
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 181
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 179
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 185
    :cond_3
    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v5, Landroid/content/res/ColorStateList;->EMPTY:[[I

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput p0, v7, v8

    invoke-direct {v2, v5, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 186
    .local v2, "csl":Landroid/content/res/ColorStateList;
    sget-object v5, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 187
    return-object v2

    .line 165
    .end local v0    # "N":I
    .end local v2    # "csl":Landroid/content/res/ColorStateList;
    .end local v3    # "i":I
    .end local v4    # "index":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 497
    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorForState([II)I
    .locals 4
    .param p1, "stateSet"    # [I
    .param p2, "defaultColor"    # I

    .prologue
    .line 546
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v3

    .line 547
    .local v1, "setLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 548
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v3, v0

    .line 549
    .local v2, "stateSpec":[I
    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 550
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v0

    return v3

    .line 547
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    .end local v2    # "stateSpec":[I
    :cond_1
    return p2
.end method

.method public getColors()[I
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    return-object v0
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
    .line 662
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Landroid/content/res/ColorStateList$ColorStateListFactory;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;-><init>(Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    .line 665
    :cond_0
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    return-object v0
.end method

.method public getDefaultColor()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method public getStates()[[I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    return-object v0
.end method

.method public hasState(I)Z
    .locals 8
    .param p1, "state"    # I

    .prologue
    .line 601
    iget-object v4, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 602
    .local v4, "stateSpecs":[[I
    array-length v0, v4

    .line 603
    .local v0, "specCount":I
    const/4 v1, 0x0

    .local v1, "specIndex":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 604
    aget-object v5, v4, v1

    .line 605
    .local v5, "states":[I
    array-length v2, v5

    .line 606
    .local v2, "stateCount":I
    const/4 v3, 0x0

    .local v3, "stateIndex":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 607
    aget v6, v5, v3

    if-eq v6, p1, :cond_0

    aget v6, v5, v3

    not-int v7, p1

    if-ne v6, v7, :cond_1

    .line 608
    :cond_0
    const/4 v6, 0x1

    return v6

    .line 606
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 603
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 612
    .end local v2    # "stateCount":I
    .end local v3    # "stateIndex":I
    .end local v5    # "states":[I
    :cond_3
    const/4 v6, 0x0

    return v6
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 531
    iget-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return v0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 520
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 478
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList;-><init>(Landroid/content/res/ColorStateList;)V

    .line 483
    .local v0, "clone":Landroid/content/res/ColorStateList;
    invoke-direct {v0, p1}, Landroid/content/res/ColorStateList;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 484
    return-object v0

    .line 479
    .end local v0    # "clone":Landroid/content/res/ColorStateList;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ColorStateList{mThemeAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 618
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 619
    const-string/jumbo v1, "mChangingConfigurations="

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 619
    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 620
    const-string/jumbo v1, "mStateSpecs="

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 620
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    const-string/jumbo v1, "mColors="

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 622
    const-string/jumbo v1, "mDefaultColor="

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 622
    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 622
    const/16 v1, 0x7d

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAlpha(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "alpha"    # I

    .prologue
    .line 288
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v3, v3

    new-array v0, v3, [I

    .line 289
    .local v0, "colors":[I
    array-length v2, v0

    .line 290
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 291
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v1

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v1

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_0
    new-instance v3, Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v3, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 698
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    const-string/jumbo v2, "ColorStateList"

    const-string/jumbo v3, "Wrote partially-resolved ColorStateList to parcel!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v2

    .line 702
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 704
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    :cond_1
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 697
    return-void
.end method
