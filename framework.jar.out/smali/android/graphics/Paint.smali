.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$NoImagePreloadHolder;,
        Landroid/graphics/Paint$Style;
    }
.end annotation


# static fields
.field public static final ANTI_ALIAS_FLAG:I = 0x1

.field public static final AUTO_HINTING_TEXT_FLAG:I = 0x800

.field public static final BIDI_DEFAULT_LTR:I = 0x2

.field public static final BIDI_DEFAULT_RTL:I = 0x3

.field private static final BIDI_FLAG_MASK:I = 0x7

.field public static final BIDI_FORCE_LTR:I = 0x4

.field public static final BIDI_FORCE_RTL:I = 0x5

.field public static final BIDI_LTR:I = 0x0

.field private static final BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final BIDI_RTL:I = 0x1

.field public static final CURSOR_AFTER:I = 0x0

.field public static final CURSOR_AT:I = 0x4

.field public static final CURSOR_AT_OR_AFTER:I = 0x1

.field public static final CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final CURSOR_BEFORE:I = 0x2

.field private static final CURSOR_OPT_MAX_VALUE:I = 0x4

.field public static final DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final DITHER_FLAG:I = 0x4

.field public static final EMBEDDED_BITMAP_TEXT_FLAG:I = 0x400

.field public static final FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final FILTER_BITMAP_FLAG:I = 0x2

.field static final HIDDEN_DEFAULT_PAINT_FLAGS:I = 0x500

.field public static final HINTING_OFF:I = 0x0

.field public static final HINTING_ON:I = 0x1

.field public static final LCD_RENDER_TEXT_FLAG:I = 0x200

.field public static final LINEAR_TEXT_FLAG:I = 0x40

.field private static final NATIVE_PAINT_SIZE:J = 0x62L

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final VERTICAL_TEXT_FLAG:I = 0x1000

.field static final sAlignArray:[Landroid/graphics/Paint$Align;

.field private static final sCacheLock:Ljava/lang/Object;

.field static final sCapArray:[Landroid/graphics/Paint$Cap;

.field static final sJoinArray:[Landroid/graphics/Paint$Join;

.field private static final sMinikinLangListIdCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public mBidiFlags:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mFontFeatureSettings:Ljava/lang/String;

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mLocales:Landroid/os/LocaleList;

.field private mMaskFilter:Landroid/graphics/MaskFilter;

.field private mNativePaint:J

.field private mNativeShader:J

.field public mNativeTypeface:J

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mRasterizer:Landroid/graphics/Rasterizer;

.field private mShader:Landroid/graphics/Shader;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static synthetic -wrap0()J
    .locals 2

    invoke-static {}, Landroid/graphics/Paint;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    .line 88
    new-array v0, v5, [Landroid/graphics/Paint$Style;

    .line 89
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v4

    .line 88
    sput-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    .line 91
    new-array v0, v5, [Landroid/graphics/Paint$Cap;

    .line 92
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v4

    .line 91
    sput-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 94
    new-array v0, v5, [Landroid/graphics/Paint$Join;

    .line 95
    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v4

    .line 94
    sput-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    .line 97
    new-array v0, v5, [Landroid/graphics/Paint$Align;

    .line 98
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    .line 97
    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 446
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 457
    invoke-static {}, Landroid/graphics/Paint;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 458
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 459
    or-int/lit16 v0, p1, 0x500

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 464
    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 465
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 456
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 476
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nInitWithPaint(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 477
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 478
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 475
    return-void
.end method

.method private native nAscent(JJ)F
.end method

.method private static native nBreakText(JJLjava/lang/String;ZFI[F)I
.end method

.method private static native nBreakText(JJ[CIIFI[F)I
.end method

.method private native nDescent(JJ)F
.end method

.method private native nGetAlpha(J)I
.end method

.method private static native nGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V
.end method

.method private native nGetColor(J)I
.end method

.method private static native nGetFillPath(JJJ)Z
.end method

.method private native nGetFlags(J)I
.end method

.method private native nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F
.end method

.method private native nGetFontMetricsInt(JJLandroid/graphics/Paint$FontMetricsInt;)I
.end method

.method private native nGetHinting(J)I
.end method

.method private static native nGetHyphenEdit(J)I
.end method

.method private static native nGetLetterSpacing(J)F
.end method

.method private static native nGetNativeFinalizer()J
.end method

.method private static native nGetOffsetForAdvance(JJ[CIIIIZF)I
.end method

.method private static native nGetRunAdvance(JJ[CIIIIZI)F
.end method

.method private static native nGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private static native nGetStrokeCap(J)I
.end method

.method private static native nGetStrokeJoin(J)I
.end method

.method private native nGetStrokeMiter(J)F
.end method

.method private native nGetStrokeWidth(J)F
.end method

.method private static native nGetStyle(J)I
.end method

.method private static native nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F
.end method

.method private static native nGetTextAdvances(JJ[CIIIII[FI)F
.end method

.method private static native nGetTextAlign(J)I
.end method

.method private static native nGetTextPath(JJILjava/lang/String;IIFFJ)V
.end method

.method private static native nGetTextPath(JJI[CIIFFJ)V
.end method

.method private native nGetTextRunCursor(JLjava/lang/String;IIIII)I
.end method

.method private native nGetTextRunCursor(J[CIIIII)I
.end method

.method private native nGetTextScaleX(J)F
.end method

.method private native nGetTextSize(J)F
.end method

.method private native nGetTextSkewX(J)F
.end method

.method private static native nHasGlyph(JJILjava/lang/String;)Z
.end method

.method private static native nHasShadowLayer(J)Z
.end method

.method private static native nInit()J
.end method

.method private static native nInitWithPaint(J)J
.end method

.method private native nIsElegantTextHeight(J)Z
.end method

.method private static native nReset(J)V
.end method

.method private static native nSet(JJ)V
.end method

.method private native nSetAlpha(JI)V
.end method

.method private native nSetAntiAlias(JZ)V
.end method

.method private native nSetColor(JI)V
.end method

.method private static native nSetColorFilter(JJ)J
.end method

.method private native nSetDither(JZ)V
.end method

.method private native nSetElegantTextHeight(JZ)V
.end method

.method private native nSetFakeBoldText(JZ)V
.end method

.method private native nSetFilterBitmap(JZ)V
.end method

.method private native nSetFlags(JI)V
.end method

.method private static native nSetFontFeatureSettings(JLjava/lang/String;)V
.end method

.method private native nSetHinting(JI)V
.end method

.method private static native nSetHyphenEdit(JI)V
.end method

.method private static native nSetLetterSpacing(JF)V
.end method

.method private native nSetLinearText(JZ)V
.end method

.method private static native nSetMaskFilter(JJ)J
.end method

.method private static native nSetPathEffect(JJ)J
.end method

.method private static native nSetRasterizer(JJ)J
.end method

.method private static native nSetShader(JJ)J
.end method

.method private static native nSetShadowLayer(JFFFI)V
.end method

.method private native nSetStrikeThruText(JZ)V
.end method

.method private static native nSetStrokeCap(JI)V
.end method

.method private static native nSetStrokeJoin(JI)V
.end method

.method private native nSetStrokeMiter(JF)V
.end method

.method private native nSetStrokeWidth(JF)V
.end method

.method private static native nSetStyle(JI)V
.end method

.method private native nSetSubpixelText(JZ)V
.end method

.method private static native nSetTextAlign(JI)V
.end method

.method private static native nSetTextLocales(JLjava/lang/String;)I
.end method

.method private static native nSetTextLocalesByMinikinLangListId(JI)V
.end method

.method private native nSetTextScaleX(JF)V
.end method

.method private native nSetTextSize(JF)V
.end method

.method private native nSetTextSkewX(JF)V
.end method

.method private static native nSetTypeface(JJ)J
.end method

.method private native nSetUnderlineText(JZ)V
.end method

.method private static native nSetXfermode(JJ)J
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 529
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 530
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 531
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 532
    iget-object v0, p1, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    iput-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 533
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 534
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeShader:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 535
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 536
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeTypeface:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 537
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 539
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 540
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 541
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 543
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 544
    iget-object v0, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 545
    iget-object v0, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 528
    return-void
.end method

.method private syncTextLocalesWithMinikin()V
    .locals 8

    .prologue
    .line 1367
    iget-object v3, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 1369
    .local v0, "languageTags":Ljava/lang/String;
    sget-object v4, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1370
    :try_start_0
    sget-object v3, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1371
    .local v1, "minikinLangListId":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 1372
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v6, v7, v0}, Landroid/graphics/Paint;->nSetTextLocales(JLjava/lang/String;)I

    move-result v2

    .line 1373
    .local v2, "newID":I
    sget-object v3, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1374
    return-void

    .end local v2    # "newID":I
    :cond_0
    monitor-exit v4

    .line 1377
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v5, v3}, Landroid/graphics/Paint;->nSetTextLocalesByMinikinLangListId(JI)V

    .line 1366
    return-void

    .line 1369
    .end local v1    # "minikinLangListId":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public ascent()F
    .locals 4

    .prologue
    .line 1564
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/Paint;->nAscent(JJ)F

    move-result v0

    return v0
.end method

.method public breakText(Ljava/lang/CharSequence;IIZF[F)I
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "measureForwards"    # Z
    .param p5, "maxWidth"    # F
    .param p6, "measuredWidth"    # [F

    .prologue
    const/4 v2, 0x0

    .line 1868
    if-nez p1, :cond_0

    .line 1869
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1871
    :cond_0
    or-int v0, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v0, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v0, v3

    if-gez v0, :cond_1

    .line 1872
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1875
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, p3, :cond_3

    .line 1876
    :cond_2
    return v2

    .line 1878
    :cond_3
    if-nez p2, :cond_4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_4

    .line 1879
    check-cast p1, Ljava/lang/String;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    return v0

    .line 1883
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_4
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 1886
    .local v1, "buf":[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1888
    if-eqz p4, :cond_5

    .line 1889
    sub-int v3, p3, p2

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    .line 1894
    .local v6, "result":I
    :goto_0
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 1895
    return v6

    .line 1891
    .end local v6    # "result":I
    :cond_5
    sub-int v0, p3, p2

    neg-int v3, v0

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    .restart local v6    # "result":I
    goto :goto_0
.end method

.method public breakText(Ljava/lang/String;ZF[F)I
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "measureForwards"    # Z
    .param p3, "maxWidth"    # F
    .param p4, "measuredWidth"    # [F

    .prologue
    .line 1916
    if-nez p1, :cond_0

    .line 1917
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1920
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1921
    const/4 v0, 0x0

    return v0

    .line 1923
    :cond_1
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_2

    .line 1924
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1925
    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .line 1924
    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nBreakText(JJLjava/lang/String;ZFI[F)I

    move-result v0

    return v0

    .line 1928
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    .line 1929
    .local v9, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v9

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1930
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1931
    iget v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v6, p3, v4

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move-object v8, p4

    .line 1930
    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nBreakText(JJLjava/lang/String;ZFI[F)I

    move-result v10

    .line 1932
    .local v10, "res":I
    invoke-virtual {p0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1933
    if-eqz p4, :cond_3

    const/4 v0, 0x0

    aget v1, p4, v0

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p4, v0

    .line 1934
    :cond_3
    return v10
.end method

.method public breakText([CIIF[F)I
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "maxWidth"    # F
    .param p5, "measuredWidth"    # [F

    .prologue
    .line 1821
    if-nez p1, :cond_0

    .line 1822
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1824
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1825
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1828
    :cond_2
    array-length v0, p1

    if-eqz v0, :cond_3

    if-nez p3, :cond_4

    .line 1829
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 1831
    :cond_4
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_5

    .line 1832
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1833
    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    .line 1832
    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nBreakText(JJ[CIIFI[F)I

    move-result v0

    return v0

    .line 1836
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    .line 1837
    .local v10, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v10

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1838
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1839
    iget v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v7, p4, v4

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v9, p5

    .line 1838
    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nBreakText(JJ[CIIFI[F)I

    move-result v11

    .line 1840
    .local v11, "res":I
    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1841
    if-eqz p5, :cond_6

    const/4 v0, 0x0

    aget v1, p5, v0

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p5, v0

    .line 1842
    :cond_6
    return v11
.end method

.method public clearShadowLayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1253
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1252
    return-void
.end method

.method public descent()F
    .locals 4

    .prologue
    .line 1577
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/Paint;->nDescent(JJ)F

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 887
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetAlpha(J)I

    move-result v0

    return v0
.end method

.method public getBidiFlags()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 860
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetColor(J)I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .locals 6
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dst"    # Landroid/graphics/Path;

    .prologue
    .line 1024
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nGetFillPath(JJJ)Z

    move-result v0

    return v0
.end method

.method public getFlags()I
    .locals 2

    .prologue
    .line 604
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetFlags(J)I

    move-result v0

    return v0
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
    .locals 7
    .param p1, "metrics"    # Landroid/graphics/Paint$FontMetrics;

    .prologue
    .line 1623
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/graphics/Paint;->nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .prologue
    .line 1634
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 1635
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 1636
    return-object v0
.end method

.method public getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 7
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 1668
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/graphics/Paint;->nGetFontMetricsInt(JJLandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    return v0
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .prologue
    .line 1675
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 1676
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1677
    return-object v0
.end method

.method public getFontSpacing()F
    .locals 1

    .prologue
    .line 1688
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getHinting()I
    .locals 2

    .prologue
    .line 625
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetHinting(J)I

    move-result v0

    return v0
.end method

.method public getHyphenEdit()I
    .locals 2

    .prologue
    .line 1541
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public getLetterSpacing()F
    .locals 2

    .prologue
    .line 1482
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public getNativeInstance()J
    .locals 6

    .prologue
    .line 567
    iget-object v2, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    .line 568
    .local v0, "newNativeShader":J
    :goto_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeShader:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 569
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 570
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeShader:J

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 572
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    return-wide v2

    .line 567
    .end local v0    # "newNativeShader":J
    :cond_1
    iget-object v2, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v0

    .restart local v0    # "newNativeShader":J
    goto :goto_0
.end method

.method public getOffsetForAdvance(Ljava/lang/CharSequence;IIIIZF)I
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    .prologue
    .line 2628
    if-nez p1, :cond_0

    .line 2629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2631
    :cond_0
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    .line 2632
    sub-int v2, p2, p4

    .line 2631
    or-int/2addr v0, v2

    .line 2632
    sub-int v2, p3, p2

    .line 2631
    or-int/2addr v0, v2

    .line 2632
    sub-int v2, p5, p3

    .line 2631
    or-int/2addr v0, v2

    .line 2633
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p5

    .line 2631
    or-int/2addr v0, v2

    if-gez v0, :cond_1

    .line 2634
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2637
    :cond_1
    sub-int v0, p5, p4

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 2638
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-static {p1, p4, p5, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2639
    sub-int v2, p2, p4

    sub-int v3, p3, p4

    .line 2640
    sub-int v5, p5, p4

    .line 2639
    const/4 v4, 0x0

    move-object v0, p0

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Paint;->getOffsetForAdvance([CIIIIZF)I

    move-result v0

    add-int v8, v0, p4

    .line 2641
    .local v8, "result":I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2642
    return v8
.end method

.method public getOffsetForAdvance([CIIIIZF)I
    .locals 11
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    .prologue
    .line 2601
    if-nez p1, :cond_0

    .line 2602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2604
    :cond_0
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int v0, v0, p5

    .line 2605
    sub-int v1, p2, p4

    .line 2604
    or-int/2addr v0, v1

    .line 2605
    sub-int v1, p3, p2

    .line 2604
    or-int/2addr v0, v1

    .line 2605
    sub-int v1, p5, p3

    .line 2604
    or-int/2addr v0, v1

    .line 2606
    array-length v1, p1

    sub-int v1, v1, p5

    .line 2604
    or-int/2addr v0, v1

    if-gez v0, :cond_1

    .line 2607
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2610
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Landroid/graphics/Paint;->nGetOffsetForAdvance(JJ[CIIIIZF)I

    move-result v0

    return v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1207
    iget-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    return-object v0
.end method

.method public getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    .prologue
    .line 2551
    if-nez p1, :cond_0

    .line 2552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2554
    :cond_0
    or-int v0, p4, p2

    or-int v0, v0, p7

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    .line 2555
    sub-int v2, p2, p4

    .line 2554
    or-int/2addr v0, v2

    .line 2555
    sub-int v2, p7, p2

    .line 2554
    or-int/2addr v0, v2

    .line 2555
    sub-int v2, p3, p7

    .line 2554
    or-int/2addr v0, v2

    .line 2556
    sub-int v2, p5, p3

    .line 2554
    or-int/2addr v0, v2

    .line 2556
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p5

    .line 2554
    or-int/2addr v0, v2

    if-gez v0, :cond_1

    .line 2557
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2559
    :cond_1
    if-ne p3, p2, :cond_2

    .line 2560
    const/4 v0, 0x0

    return v0

    .line 2563
    :cond_2
    sub-int v0, p5, p4

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 2564
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-static {p1, p4, p5, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2565
    sub-int v2, p2, p4

    sub-int v3, p3, p4

    .line 2566
    sub-int v5, p5, p4

    sub-int v7, p7, p4

    .line 2565
    const/4 v4, 0x0

    move-object v0, p0

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Paint;->getRunAdvance([CIIIIZI)F

    move-result v8

    .line 2567
    .local v8, "result":F
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2568
    return v8
.end method

.method public getRunAdvance([CIIIIZI)F
    .locals 11
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    .prologue
    .line 2521
    if-nez p1, :cond_0

    .line 2522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2524
    :cond_0
    or-int v0, p4, p2

    or-int v0, v0, p7

    or-int/2addr v0, p3

    or-int v0, v0, p5

    .line 2525
    sub-int v1, p2, p4

    .line 2524
    or-int/2addr v0, v1

    .line 2525
    sub-int v1, p7, p2

    .line 2524
    or-int/2addr v0, v1

    .line 2525
    sub-int v1, p3, p7

    .line 2524
    or-int/2addr v0, v1

    .line 2526
    sub-int v1, p5, p3

    .line 2524
    or-int/2addr v0, v1

    .line 2526
    array-length v1, p1

    sub-int v1, v1, p5

    .line 2524
    or-int/2addr v0, v1

    if-gez v0, :cond_1

    .line 2527
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2529
    :cond_1
    if-ne p3, p2, :cond_2

    .line 2530
    const/4 v0, 0x0

    return v0

    .line 2533
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Landroid/graphics/Paint;->nGetRunAdvance(JJ[CIIIIZI)F

    move-result v0

    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 4

    .prologue
    .line 980
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetStrokeCap(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeJoin()Landroid/graphics/Paint$Join;
    .locals 4

    .prologue
    .line 999
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetStrokeJoin(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeMiter()F
    .locals 2

    .prologue
    .line 954
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetStrokeMiter(J)F

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 2

    .prologue
    .line 927
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetStrokeWidth(J)F

    move-result v0

    return v0
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .locals 4

    .prologue
    .line 836
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetStyle(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 4

    .prologue
    .line 1275
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetTextAlign(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2433
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2434
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2436
    :cond_0
    if-nez p4, :cond_1

    .line 2437
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2439
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V

    .line 2432
    return-void
.end method

.method public getTextBounds([CIILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2453
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 2454
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2456
    :cond_1
    if-nez p4, :cond_2

    .line 2457
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2459
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V

    .line 2452
    return-void
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 1298
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextLocales()Landroid/os/LocaleList;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    .prologue
    .line 2415
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2416
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2418
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 2419
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v10

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 2418
    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextPath(JJILjava/lang/String;IIFFJ)V

    .line 2414
    return-void
.end method

.method public getTextPath([CIIFFLandroid/graphics/Path;)V
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    .prologue
    .line 2393
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 2394
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2396
    :cond_1
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 2397
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v10

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 2396
    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextPath(JJI[CIIFFJ)V

    .line 2392
    return-void
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIIZ[FI)F
    .locals 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    .prologue
    .line 2135
    if-nez p1, :cond_0

    .line 2136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2138
    :cond_0
    or-int v1, p2, p3

    or-int/2addr v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v3, p3, p2

    or-int/2addr v1, v3

    .line 2139
    sub-int v3, p2, p4

    .line 2138
    or-int/2addr v1, v3

    .line 2139
    sub-int v3, p5, p3

    .line 2138
    or-int/2addr v1, v3

    .line 2140
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v3, v3, p5

    .line 2138
    or-int/2addr v3, v1

    .line 2141
    if-nez p7, :cond_1

    const/4 v1, 0x0

    .line 2138
    :goto_0
    or-int/2addr v1, v3

    if-gez v1, :cond_2

    .line 2143
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2142
    :cond_1
    move-object/from16 v0, p7

    array-length v1, v0

    sub-int v1, v1, p8

    sub-int v5, p3, p2

    sub-int/2addr v1, v5

    goto :goto_0

    .line 2146
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v2, p1

    .line 2147
    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    move-result v1

    return v1

    .line 2150
    :cond_3
    instance-of v1, p1, Landroid/text/SpannedString;

    if-nez v1, :cond_4

    .line 2151
    instance-of v1, p1, Landroid/text/SpannableString;

    .line 2150
    if-eqz v1, :cond_5

    .line 2152
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    move-result v1

    return v1

    .line 2155
    :cond_5
    instance-of v1, p1, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_6

    move-object v1, p1

    .line 2156
    check-cast v1, Landroid/text/GraphicsOperations;

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object v9, p0

    invoke-interface/range {v1 .. v9}, Landroid/text/GraphicsOperations;->getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F

    move-result v1

    return v1

    .line 2159
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_7

    if-ne p3, p2, :cond_8

    .line 2160
    :cond_7
    const/4 v1, 0x0

    return v1

    .line 2163
    :cond_8
    sub-int v6, p5, p4

    .line 2164
    .local v6, "contextLen":I
    sub-int v4, p3, p2

    .line 2165
    .local v4, "len":I
    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 2166
    .local v2, "buf":[C
    const/4 v1, 0x0

    move/from16 v0, p5

    invoke-static {p1, p4, v0, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2167
    sub-int v3, p2, p4

    .line 2168
    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 2167
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v10

    .line 2169
    .local v10, "result":F
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2170
    return v10
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F
    .locals 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    .prologue
    .line 2216
    if-nez p1, :cond_0

    .line 2217
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2219
    :cond_0
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    .line 2220
    sub-int v3, p2, p4

    .line 2219
    or-int/2addr v2, v3

    .line 2220
    sub-int v3, p5, p3

    .line 2219
    or-int/2addr v2, v3

    .line 2221
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p5

    .line 2219
    or-int/2addr v3, v2

    .line 2222
    if-nez p7, :cond_1

    const/4 v2, 0x0

    .line 2219
    :goto_0
    or-int/2addr v2, v3

    if-gez v2, :cond_2

    .line 2224
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2223
    :cond_1
    move-object/from16 v0, p7

    array-length v2, v0

    sub-int v2, v2, p8

    sub-int v4, p3, p2

    sub-int/2addr v2, v4

    goto :goto_0

    .line 2227
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 2228
    :cond_3
    const/4 v2, 0x0

    return v2

    .line 2231
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_6

    .line 2232
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 2233
    if-eqz p6, :cond_5

    const/4 v11, 0x5

    :goto_1
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    .line 2232
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v2

    return v2

    .line 2233
    :cond_5
    const/4 v11, 0x4

    goto :goto_1

    .line 2237
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    .line 2238
    .local v16, "oldSize":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2239
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 2240
    if-eqz p6, :cond_7

    const/4 v11, 0x5

    :goto_2
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    .line 2239
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v17

    .line 2242
    .local v17, "totalAdvance":F
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2244
    if-eqz p7, :cond_8

    .line 2245
    move/from16 v15, p8

    .local v15, "i":I
    sub-int v2, p3, p2

    add-int v14, p8, v2

    .local v14, "e":I
    :goto_3
    if-ge v15, v14, :cond_8

    .line 2246
    aget v2, p7, v15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p7, v15

    .line 2245
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 2240
    .end local v14    # "e":I
    .end local v15    # "i":I
    .end local v17    # "totalAdvance":F
    :cond_7
    const/4 v11, 0x4

    goto :goto_2

    .line 2249
    .restart local v17    # "totalAdvance":F
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float v2, v2, v17

    return v2
.end method

.method public getTextRunAdvances([CIIIIZ[FI)F
    .locals 18
    .param p1, "chars"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    .prologue
    .line 2089
    if-nez p1, :cond_0

    .line 2090
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2092
    :cond_0
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    .line 2093
    sub-int v3, p2, p4

    .line 2092
    or-int/2addr v2, v3

    .line 2093
    sub-int v3, p5, p3

    .line 2092
    or-int/2addr v2, v3

    .line 2094
    add-int v3, p4, p5

    add-int v4, p2, p3

    sub-int/2addr v3, v4

    .line 2092
    or-int/2addr v2, v3

    .line 2095
    move-object/from16 v0, p1

    array-length v3, v0

    add-int v4, p4, p5

    sub-int/2addr v3, v4

    .line 2092
    or-int/2addr v3, v2

    .line 2096
    if-nez p7, :cond_1

    const/4 v2, 0x0

    .line 2092
    :goto_0
    or-int/2addr v2, v3

    if-gez v2, :cond_2

    .line 2098
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2097
    :cond_1
    move-object/from16 v0, p7

    array-length v2, v0

    add-int v4, p8, p3

    sub-int/2addr v2, v4

    goto :goto_0

    .line 2101
    :cond_2
    move-object/from16 v0, p1

    array-length v2, v0

    if-eqz v2, :cond_3

    if-nez p3, :cond_4

    .line 2102
    :cond_3
    const/4 v2, 0x0

    return v2

    .line 2104
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_6

    .line 2105
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 2106
    if-eqz p6, :cond_5

    const/4 v11, 0x5

    :goto_1
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    .line 2105
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v2

    return v2

    .line 2106
    :cond_5
    const/4 v11, 0x4

    goto :goto_1

    .line 2110
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    .line 2111
    .local v16, "oldSize":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2112
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 2113
    if-eqz p6, :cond_7

    const/4 v11, 0x5

    :goto_2
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    .line 2112
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v17

    .line 2115
    .local v17, "res":F
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2117
    if-eqz p7, :cond_8

    .line 2118
    move/from16 v15, p8

    .local v15, "i":I
    add-int v14, p8, p3

    .local v14, "e":I
    :goto_3
    if-ge v15, v14, :cond_8

    .line 2119
    aget v2, p7, v15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p7, v15

    .line 2118
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 2113
    .end local v14    # "e":I
    .end local v15    # "i":I
    .end local v17    # "res":F
    :cond_7
    const/4 v11, 0x4

    goto :goto_2

    .line 2122
    .restart local v17    # "res":F
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float v2, v2, v17

    return v2
.end method

.method public getTextRunCursor(Ljava/lang/CharSequence;IIIII)I
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "dir"    # I
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 2321
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    .line 2322
    instance-of v0, p1, Landroid/text/SpannableString;

    .line 2321
    if-eqz v0, :cond_1

    .line 2323
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIIII)I

    move-result v0

    return v0

    .line 2326
    :cond_1
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 2327
    check-cast v0, Landroid/text/GraphicsOperations;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIIIILandroid/graphics/Paint;)I

    move-result v0

    return v0

    .line 2331
    :cond_2
    sub-int v3, p3, p2

    .line 2332
    .local v3, "contextLen":I
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 2333
    .local v1, "buf":[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2334
    sub-int v5, p5, p2

    move-object v0, p0

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    .line 2335
    .local v7, "relPos":I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2336
    if-ne v7, v8, :cond_3

    move v0, v8

    :goto_0
    return v0

    :cond_3
    add-int v0, v7, p2

    goto :goto_0
.end method

.method public getTextRunCursor(Ljava/lang/String;IIIII)I
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "dir"    # I
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .prologue
    .line 2367
    or-int v2, p2, p3

    or-int v2, v2, p5

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    .line 2368
    sub-int v3, p5, p2

    .line 2367
    or-int/2addr v2, v3

    .line 2368
    sub-int v3, p3, p5

    .line 2367
    or-int/2addr v2, v3

    .line 2369
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p3

    .line 2367
    or-int/2addr v2, v3

    or-int v2, v2, p6

    if-ltz v2, :cond_0

    .line 2370
    const/4 v2, 0x4

    move/from16 v0, p6

    if-le v0, v2, :cond_1

    .line 2371
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2374
    :cond_1
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Landroid/graphics/Paint;->nGetTextRunCursor(JLjava/lang/String;IIIII)I

    move-result v2

    return v2
.end method

.method public getTextRunCursor([CIIIII)I
    .locals 12
    .param p1, "text"    # [C
    .param p2, "contextStart"    # I
    .param p3, "contextLength"    # I
    .param p4, "dir"    # I
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .prologue
    .line 2280
    add-int v2, p2, p3

    .line 2281
    .local v2, "contextEnd":I
    or-int v3, p2, v2

    or-int v3, v3, p5

    sub-int v4, v2, p2

    or-int/2addr v3, v4

    .line 2282
    sub-int v4, p5, p2

    .line 2281
    or-int/2addr v3, v4

    .line 2282
    sub-int v4, v2, p5

    .line 2281
    or-int/2addr v3, v4

    .line 2283
    array-length v4, p1

    sub-int/2addr v4, v2

    .line 2281
    or-int/2addr v3, v4

    or-int v3, v3, p6

    if-ltz v3, :cond_0

    .line 2284
    const/4 v3, 0x4

    move/from16 v0, p6

    if-le v0, v3, :cond_1

    .line 2285
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 2288
    :cond_1
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Landroid/graphics/Paint;->nGetTextRunCursor(J[CIIIII)I

    move-result v3

    return v3
.end method

.method public getTextScaleX()F
    .locals 2

    .prologue
    .line 1433
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetTextScaleX(J)F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 2

    .prologue
    .line 1410
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetTextSize(J)F

    move-result v0

    return v0
.end method

.method public getTextSkewX()F
    .locals 2

    .prologue
    .line 1458
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nGetTextSkewX(J)F

    move-result v0

    return v0
.end method

.method public getTextWidths(Ljava/lang/CharSequence;II[F)I
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .prologue
    const/4 v4, 0x0

    .line 1993
    if-nez p1, :cond_0

    .line 1994
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1996
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1997
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1999
    :cond_1
    sub-int v2, p3, p2

    array-length v3, p4

    if-le v2, v3, :cond_2

    .line 2000
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2003
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    if-ne p2, p3, :cond_4

    .line 2004
    :cond_3
    return v4

    .line 2006
    :cond_4
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2007
    check-cast p1, Ljava/lang/String;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v2

    return v2

    .line 2009
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_5
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_6

    .line 2010
    instance-of v2, p1, Landroid/text/SpannableString;

    .line 2009
    if-eqz v2, :cond_7

    .line 2011
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v2

    return v2

    .line 2013
    :cond_7
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_8

    .line 2014
    check-cast p1, Landroid/text/GraphicsOperations;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-interface {p1, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result v2

    return v2

    .line 2018
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_8
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2019
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2020
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v4, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 2021
    .local v1, "result":I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2022
    return v1
.end method

.method public getTextWidths(Ljava/lang/String;II[F)I
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .prologue
    .line 2036
    if-nez p1, :cond_0

    .line 2037
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2039
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 2040
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2042
    :cond_1
    sub-int v2, p3, p2

    move-object/from16 v0, p4

    array-length v3, v0

    if-le v2, v3, :cond_2

    .line 2043
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2046
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 2047
    :cond_3
    const/4 v2, 0x0

    return v2

    .line 2049
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_5

    .line 2050
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 2051
    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    .line 2050
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    .line 2052
    sub-int v2, p3, p2

    return v2

    .line 2055
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v15

    .line 2056
    .local v15, "oldSize":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2057
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 2058
    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    .line 2057
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    .line 2059
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2060
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    sub-int v2, p3, p2

    if-ge v14, v2, :cond_6

    .line 2061
    aget v2, p4, v14

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p4, v14

    .line 2060
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2063
    :cond_6
    sub-int v2, p3, p2

    return v2
.end method

.method public getTextWidths(Ljava/lang/String;[F)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "widths"    # [F

    .prologue
    .line 2075
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0
.end method

.method public getTextWidths([CII[F)I
    .locals 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "widths"    # [F

    .prologue
    .line 1953
    if-nez p1, :cond_0

    .line 1954
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1956
    :cond_0
    or-int v2, p2, p3

    if-ltz v2, :cond_1

    add-int v2, p2, p3

    move-object/from16 v0, p1

    array-length v3, v0

    if-le v2, v3, :cond_2

    .line 1958
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1957
    :cond_2
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, p3

    if-gt v0, v2, :cond_1

    .line 1961
    move-object/from16 v0, p1

    array-length v2, v0

    if-eqz v2, :cond_3

    if-nez p3, :cond_4

    .line 1962
    :cond_3
    const/4 v2, 0x0

    return v2

    .line 1964
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_5

    .line 1965
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1966
    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    .line 1965
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    .line 1967
    return p3

    .line 1970
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v15

    .line 1971
    .local v15, "oldSize":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1972
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1973
    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    .line 1972
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    .line 1974
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1975
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v14, v0, :cond_6

    .line 1976
    aget v2, p4, v14

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p4, v14

    .line 1975
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1978
    :cond_6
    return p3
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2480
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nHasGlyph(JJILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasShadowLayer()Z
    .locals 2

    .prologue
    .line 1263
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nHasShadowLayer(J)Z

    move-result v0

    return v0
.end method

.method public final isAntiAlias()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 649
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isDither()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 677
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isElegantTextHeight()Z
    .locals 2

    .prologue
    .line 1386
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1}, Landroid/graphics/Paint;->nIsElegantTextHeight(J)Z

    move-result v0

    return v0
.end method

.method public final isFakeBoldText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 786
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isFilterBitmap()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 810
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isLinearText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 702
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isStrikeThruText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 765
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isSubpixelText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 723
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isUnderlineText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 744
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public measureText(Ljava/lang/CharSequence;II)F
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 1776
    if-nez p1, :cond_0

    .line 1777
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1779
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1780
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1783
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_2

    if-ne p2, p3, :cond_3

    .line 1784
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 1786
    :cond_3
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1787
    check-cast p1, Ljava/lang/String;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    return v2

    .line 1789
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_4
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_5

    .line 1790
    instance-of v2, p1, Landroid/text/SpannableString;

    .line 1789
    if-eqz v2, :cond_6

    .line 1791
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    return v2

    .line 1793
    :cond_6
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_7

    .line 1794
    check-cast p1, Landroid/text/GraphicsOperations;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-interface {p1, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result v2

    return v2

    .line 1797
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_7
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 1798
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1799
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v4, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1800
    .local v1, "result":F
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 1801
    return v1
.end method

.method public measureText(Ljava/lang/String;)F
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1761
    if-nez p1, :cond_0

    .line 1762
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1764
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0
.end method

.method public measureText(Ljava/lang/String;II)F
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1732
    if-nez p1, :cond_0

    .line 1733
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1735
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1736
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1739
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_3

    .line 1740
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 1742
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_4

    .line 1743
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1744
    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    .line 1743
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2

    .line 1746
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    .line 1747
    .local v14, "oldSize":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1748
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1749
    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    .line 1748
    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v15

    .line 1750
    .local v15, "w":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1751
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v15

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public measureText([CII)F
    .locals 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I

    .prologue
    .line 1700
    if-nez p1, :cond_0

    .line 1701
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1703
    :cond_0
    or-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 1704
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1707
    :cond_2
    array-length v0, p1

    if-eqz v0, :cond_3

    if-nez p3, :cond_4

    .line 1708
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 1710
    :cond_4
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_5

    .line 1711
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1712
    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1711
    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 1715
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    .line 1716
    .local v12, "oldSize":F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v12

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1717
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1718
    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1717
    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v13

    .line 1719
    .local v13, "w":F
    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1720
    iget v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v0, v13

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public reset()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 483
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nReset(J)V

    .line 484
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 491
    iput-object v2, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 492
    iput-object v2, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 493
    iput-object v2, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 494
    iput-object v2, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 495
    iput-object v2, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 496
    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 497
    iput-object v2, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 498
    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 499
    iput-object v2, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 501
    iput-boolean v4, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 502
    iput v3, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 503
    iput v3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 505
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 506
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 507
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setElegantTextHeight(Z)V

    .line 508
    iput-object v2, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Paint;

    .prologue
    .line 517
    if-eq p0, p1, :cond_0

    .line 519
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSet(JJ)V

    .line 520
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 516
    :cond_0
    return-void
.end method

.method public setARGB(IIII)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    .line 914
    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 913
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "a"    # I

    .prologue
    .line 900
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetAlpha(JI)V

    .line 899
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 2
    .param p1, "aa"    # Z

    .prologue
    .line 661
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetAntiAlias(JZ)V

    .line 660
    return-void
.end method

.method public setBidiFlags(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 591
    and-int/lit8 p1, p1, 0x7

    .line 592
    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_0
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 589
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 874
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetColor(JI)V

    .line 873
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 4
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1072
    const-wide/16 v0, 0x0

    .line 1073
    .local v0, "filterNative":J
    if-eqz p1, :cond_0

    .line 1074
    iget-wide v0, p1, Landroid/graphics/ColorFilter;->native_instance:J

    .line 1075
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetColorFilter(JJ)J

    .line 1076
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1077
    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .locals 5
    .param p1, "factor"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 550
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 552
    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 549
    :goto_0
    return-void

    .line 554
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 555
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 556
    div-float v0, v4, p1

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    goto :goto_0
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    .prologue
    .line 691
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetDither(JZ)V

    .line 690
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 2
    .param p1, "elegant"    # Z

    .prologue
    .line 1399
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetElegantTextHeight(JZ)V

    .line 1398
    return-void
.end method

.method public setFakeBoldText(Z)V
    .locals 2
    .param p1, "fakeBoldText"    # Z

    .prologue
    .line 796
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetFakeBoldText(JZ)V

    .line 795
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 2
    .param p1, "filter"    # Z

    .prologue
    .line 823
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetFilterBitmap(JZ)V

    .line 822
    return-void
.end method

.method public setFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 615
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetFlags(JI)V

    .line 614
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 2
    .param p1, "settings"    # Ljava/lang/String;

    .prologue
    .line 1522
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    const/4 p1, 0x0

    .line 1525
    .end local p1    # "settings":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1527
    :cond_1
    return-void

    .line 1526
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1525
    if-nez v0, :cond_1

    .line 1529
    :cond_3
    iput-object p1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 1530
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFontFeatureSettings(JLjava/lang/String;)V

    .line 1521
    return-void
.end method

.method public setHinting(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 635
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetHinting(JI)V

    .line 634
    return-void
.end method

.method public setHyphenEdit(I)V
    .locals 2
    .param p1, "hyphen"    # I

    .prologue
    .line 1553
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHyphenEdit(JI)V

    .line 1552
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 2
    .param p1, "letterSpacing"    # F

    .prologue
    .line 1493
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLetterSpacing(JF)V

    .line 1492
    return-void
.end method

.method public setLinearText(Z)V
    .locals 2
    .param p1, "linearText"    # Z

    .prologue
    .line 712
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetLinearText(JZ)V

    .line 711
    return-void
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .locals 4
    .param p1, "maskfilter"    # Landroid/graphics/MaskFilter;

    .prologue
    .line 1155
    const-wide/16 v0, 0x0

    .line 1156
    .local v0, "maskfilterNative":J
    if-eqz p1, :cond_0

    .line 1157
    iget-wide v0, p1, Landroid/graphics/MaskFilter;->native_instance:J

    .line 1159
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetMaskFilter(JJ)J

    .line 1160
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 1161
    return-object p1
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 4
    .param p1, "effect"    # Landroid/graphics/PathEffect;

    .prologue
    .line 1126
    const-wide/16 v0, 0x0

    .line 1127
    .local v0, "effectNative":J
    if-eqz p1, :cond_0

    .line 1128
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    .line 1130
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetPathEffect(JJ)J

    .line 1131
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 1132
    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .locals 4
    .param p1, "rasterizer"    # Landroid/graphics/Rasterizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1224
    const-wide/16 v0, 0x0

    .line 1225
    .local v0, "rasterizerNative":J
    if-eqz p1, :cond_0

    .line 1226
    iget-wide v0, p1, Landroid/graphics/Rasterizer;->native_instance:J

    .line 1228
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetRasterizer(JJ)J

    .line 1229
    iput-object p1, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 1230
    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 2
    .param p1, "shader"    # Landroid/graphics/Shader;

    .prologue
    .line 1048
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-eq v0, p1, :cond_0

    .line 1049
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 1052
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 1053
    return-object p1
.end method

.method public setShadowLayer(FFFI)V
    .locals 6
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "shadowColor"    # I

    .prologue
    .line 1246
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nSetShadowLayer(JFFFI)V

    .line 1245
    return-void
.end method

.method public setStrikeThruText(Z)V
    .locals 2
    .param p1, "strikeThruText"    # Z

    .prologue
    .line 775
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetStrikeThruText(JZ)V

    .line 774
    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 3
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;

    .prologue
    .line 990
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeCap(JI)V

    .line 989
    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 3
    .param p1, "join"    # Landroid/graphics/Paint$Join;

    .prologue
    .line 1009
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeJoin(JI)V

    .line 1008
    return-void
.end method

.method public setStrokeMiter(F)V
    .locals 2
    .param p1, "miter"    # F

    .prologue
    .line 967
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeMiter(JF)V

    .line 966
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 941
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeWidth(JF)V

    .line 940
    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 3
    .param p1, "style"    # Landroid/graphics/Paint$Style;

    .prologue
    .line 847
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStyle(JI)V

    .line 846
    return-void
.end method

.method public setSubpixelText(Z)V
    .locals 2
    .param p1, "subpixelText"    # Z

    .prologue
    .line 733
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetSubpixelText(JZ)V

    .line 732
    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 3
    .param p1, "align"    # Landroid/graphics/Paint$Align;

    .prologue
    .line 1287
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetTextAlign(JI)V

    .line 1286
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1320
    if-nez p1, :cond_0

    .line 1321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locale cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :cond_0
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1324
    return-void

    .line 1326
    :cond_1
    new-instance v0, Landroid/os/LocaleList;

    new-array v1, v1, [Ljava/util/Locale;

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1327
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1319
    return-void
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .locals 2
    .param p1, "locales"    # Landroid/os/LocaleList;

    .prologue
    .line 1358
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locales cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1361
    :cond_1
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1362
    :cond_2
    iput-object p1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1363
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1357
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 2
    .param p1, "scaleX"    # F

    .prologue
    .line 1446
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetTextScaleX(JF)V

    .line 1445
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .prologue
    .line 1421
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSize(JF)V

    .line 1420
    return-void
.end method

.method public setTextSkewX(F)V
    .locals 2
    .param p1, "skewX"    # F

    .prologue
    .line 1470
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSkewX(JF)V

    .line 1469
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 1186
    const-wide/16 v0, 0x0

    .line 1187
    .local v0, "typefaceNative":J
    if-eqz p1, :cond_0

    .line 1188
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    .line 1190
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetTypeface(JJ)J

    .line 1191
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 1192
    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    .line 1193
    return-object p1
.end method

.method public setUnderlineText(Z)V
    .locals 2
    .param p1, "underlineText"    # Z

    .prologue
    .line 754
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/Paint;->nSetUnderlineText(JZ)V

    .line 753
    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 4
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    .prologue
    .line 1099
    const-wide/16 v0, 0x0

    .line 1100
    .local v0, "xfermodeNative":J
    if-eqz p1, :cond_0

    .line 1101
    iget-wide v0, p1, Landroid/graphics/Xfermode;->native_instance:J

    .line 1102
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetXfermode(JJ)J

    .line 1103
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 1104
    return-object p1
.end method
