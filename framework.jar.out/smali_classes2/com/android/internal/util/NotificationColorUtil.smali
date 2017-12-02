.class public Lcom/android/internal/util/NotificationColorUtil;
.super Ljava/lang/Object;
.source "NotificationColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationColorUtil"

.field private static sInstance:Lcom/android/internal/util/NotificationColorUtil;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mGrayscaleBitmapCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGrayscaleIconMaxSize:I

.field private final mImageUtils:Lcom/android/internal/util/ImageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/internal/util/ImageUtils;

    invoke-direct {v0}, Lcom/android/internal/util/ImageUtils;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    .line 58
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    const v1, 0x1050005

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    .line 71
    return-void
.end method

.method private static contrastChange(III)Ljava/lang/String;
    .locals 4
    .param p0, "colorOld"    # I
    .param p1, "colorNew"    # I
    .param p2, "bg"    # I

    .prologue
    .line 295
    const-string/jumbo v0, "from %.2f:1 to %.2f:1"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 296
    invoke-static {p0, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 297
    invoke-static {p1, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 295
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ensureLargeTextContrast(II)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "bg"    # I

    .prologue
    .line 275
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    const/4 v2, 0x1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    return v0
.end method

.method public static ensureTextBackgroundColor(III)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "textColor"    # I
    .param p2, "hintColor"    # I

    .prologue
    const/4 v2, 0x0

    .line 290
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {p0, p2, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result p0

    .line 291
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    return v0
.end method

.method private static ensureTextContrast(II)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "bg"    # I

    .prologue
    .line 283
    const/4 v0, 0x1

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    return v0
.end method

.method private static findContrastColor(IIZD)I
    .locals 21
    .param p0, "color"    # I
    .param p1, "other"    # I
    .param p2, "findFg"    # Z
    .param p3, "minRatio"    # D

    .prologue
    .line 243
    if-eqz p2, :cond_0

    move/from16 v15, p0

    .line 244
    .local v15, "fg":I
    :goto_0
    if-eqz p2, :cond_1

    move/from16 v14, p1

    .line 245
    .local v14, "bg":I
    :goto_1
    invoke-static {v15, v14}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p3

    if-ltz v10, :cond_2

    .line 246
    return p0

    .line 243
    .end local v14    # "bg":I
    .end local v15    # "fg":I
    :cond_0
    move/from16 v15, p1

    .restart local v15    # "fg":I
    goto :goto_0

    :cond_1
    move/from16 v14, p0

    .line 244
    goto :goto_1

    .line 249
    .restart local v14    # "bg":I
    :cond_2
    const/4 v10, 0x3

    new-array v0, v10, [D

    move-object/from16 v19, v0

    .line 250
    .local v19, "lab":[D
    if-eqz p2, :cond_3

    move v10, v15

    :goto_2
    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 252
    const-wide/16 v8, 0x0

    .local v8, "low":D
    const/4 v10, 0x0

    aget-wide v16, v19, v10

    .line 253
    .local v16, "high":D
    const/4 v10, 0x1

    aget-wide v4, v19, v10

    .local v4, "a":D
    const/4 v10, 0x2

    aget-wide v6, v19, v10

    .line 254
    .local v6, "b":D
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    const/16 v10, 0xf

    move/from16 v0, v18

    if-ge v0, v10, :cond_6

    sub-double v10, v16, v8

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-lez v10, :cond_6

    .line 255
    add-double v10, v8, v16

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v2, v10, v12

    .line 256
    .local v2, "l":D
    if-eqz p2, :cond_4

    .line 257
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v15

    .line 261
    :goto_4
    invoke-static {v15, v14}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p3

    if-lez v10, :cond_5

    .line 262
    move-wide v8, v2

    .line 254
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .end local v2    # "l":D
    .end local v4    # "a":D
    .end local v6    # "b":D
    .end local v8    # "low":D
    .end local v16    # "high":D
    .end local v18    # "i":I
    :cond_3
    move v10, v14

    .line 250
    goto :goto_2

    .line 259
    .restart local v2    # "l":D
    .restart local v4    # "a":D
    .restart local v6    # "b":D
    .restart local v8    # "low":D
    .restart local v16    # "high":D
    .restart local v18    # "i":I
    :cond_4
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v14

    goto :goto_4

    .line 264
    :cond_5
    move-wide/from16 v16, v2

    goto :goto_5

    .end local v2    # "l":D
    :cond_6
    move-wide v10, v4

    move-wide v12, v6

    .line 267
    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v10

    return v10
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-object v1, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/internal/util/NotificationColorUtil;

    invoke-direct {v0, p0}, Lcom/android/internal/util/NotificationColorUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    .line 67
    :cond_0
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static lightenColor(II)I
    .locals 8
    .param p0, "baseColor"    # I
    .param p1, "amount"    # I

    .prologue
    const/4 v7, 0x0

    .line 351
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v6

    .line 352
    .local v6, "result":[D
    invoke-static {p0, v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 353
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    aget-wide v2, v6, v7

    int-to-double v4, p1

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    aput-wide v0, v6, v7

    .line 354
    aget-wide v0, v6, v7

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    const/4 v4, 0x2

    aget-wide v4, v6, v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v0

    return v0
.end method

.method private processColor(I)I
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 226
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 227
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    .line 228
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    .line 229
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    .line 226
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;
    .locals 10
    .param p1, "span"    # Landroid/text/style/TextAppearanceSpan;

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 200
    .local v7, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v7, :cond_3

    .line 201
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v8

    .line 202
    .local v8, "colors":[I
    const/4 v6, 0x0

    .line 203
    .local v6, "changed":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_2

    .line 204
    aget v0, v8, v9

    invoke-static {v0}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    if-nez v6, :cond_0

    .line 209
    array-length v0, v8

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    .line 211
    :cond_0
    aget v0, v8, v9

    invoke-direct {p0, v0}, Lcom/android/internal/util/NotificationColorUtil;->processColor(I)I

    move-result v0

    aput v0, v8, v9

    .line 212
    const/4 v6, 0x1

    .line 203
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 215
    :cond_2
    if-eqz v6, :cond_3

    .line 216
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    .line 217
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    .line 218
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v5

    invoke-direct {v4, v5, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 219
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 216
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0

    .line 222
    .end local v6    # "changed":Z
    .end local v8    # "colors":[I
    .end local v9    # "i":I
    :cond_3
    return-object p1
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    const v0, 0x1060052

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    .line 307
    :cond_0
    return p1
.end method

.method public static resolveContrastColor(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I

    .prologue
    .line 318
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v3

    .line 321
    .local v3, "resolvedColor":I
    const v4, 0x1060054

    .line 320
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 323
    .local v0, "actionBg":I
    const v4, 0x1060050

    .line 322
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 325
    .local v2, "notiBg":I
    move v1, v3

    .line 326
    .local v1, "color":I
    invoke-static {v3, v0}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(II)I

    move-result v1

    .line 327
    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextContrast(II)I

    move-result v1

    .line 329
    if-eq v1, v3, :cond_0

    .line 340
    :cond_0
    return v1
.end method


# virtual methods
.method public invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 181
    instance-of v6, p1, Landroid/text/Spanned;

    if-eqz v6, :cond_2

    move-object v4, p1

    .line 182
    check-cast v4, Landroid/text/Spanned;

    .line 183
    .local v4, "ss":Landroid/text/Spanned;
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 184
    .local v3, "spans":[Ljava/lang/Object;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {v4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 185
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    array-length v7, v3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v2, v3, v6

    .line 186
    .local v2, "span":Ljava/lang/Object;
    move-object v1, v2

    .line 187
    .local v1, "resultSpan":Ljava/lang/Object;
    instance-of v5, v2, Landroid/text/style/TextAppearanceSpan;

    if-eqz v5, :cond_0

    move-object v5, v2

    .line 188
    check-cast v5, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {p0, v5}, Lcom/android/internal/util/NotificationColorUtil;->processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v1

    .line 190
    :cond_0
    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 191
    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 190
    invoke-virtual {v0, v1, v5, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 185
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 193
    .end local v1    # "resultSpan":Ljava/lang/Object;
    .end local v2    # "span":Ljava/lang/Object;
    :cond_1
    return-object v0

    .line 195
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v3    # "spans":[Ljava/lang/Object;
    .end local v4    # "ss":Landroid/text/Spanned;
    :cond_2
    return-object p1
.end method

.method public isGrayscaleIcon(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableResId"    # I

    .prologue
    const/4 v4, 0x0

    .line 161
    if-eqz p2, :cond_0

    .line 163
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v1, "NotificationColorUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Drawable not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v4

    .line 169
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    return v4
.end method

.method public isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    const/4 v1, 0x0

    .line 140
    if-nez p2, :cond_0

    .line 141
    return v1

    .line 143
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    return v1

    .line 145
    :pswitch_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    .line 147
    :pswitch_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isGrayscaleIcon(Landroid/graphics/Bitmap;)Z
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    if-gt v3, v4, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    if-le v3, v4, :cond_1

    .line 87
    :cond_0
    const/4 v3, 0x0

    return v3

    .line 90
    :cond_1
    sget-object v4, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 92
    .local v0, "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    .line 93
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 94
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :cond_2
    monitor-exit v4

    .line 100
    iget-object v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    monitor-enter v4

    .line 101
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/util/ImageUtils;->isGrayscale(Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 106
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .local v1, "generationId":I
    monitor-exit v4

    .line 108
    sget-object v4, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 109
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v4

    .line 111
    return v2

    .line 90
    .end local v0    # "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .end local v1    # "generationId":I
    .end local v2    # "result":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 100
    .restart local v0    # "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 108
    .restart local v1    # "generationId":I
    .restart local v2    # "result":Z
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 122
    if-nez p1, :cond_0

    .line 123
    return v3

    .line 124
    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 125
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 126
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v3

    :cond_1
    return v3

    .line 127
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    instance-of v4, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_4

    move-object v0, p1

    .line 128
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 129
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    .line 130
    .local v2, "count":I
    if-lez v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    :cond_3
    return v3

    .line 131
    .end local v0    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "count":I
    :cond_4
    instance-of v4, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v4, :cond_5

    .line 133
    const/4 v3, 0x1

    return v3

    .line 135
    :cond_5
    return v3
.end method
