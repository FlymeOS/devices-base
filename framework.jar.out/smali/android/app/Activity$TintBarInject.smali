.class Landroid/app/Activity$TintBarInject;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TintBarInject"
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final STATUS_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "status_bar_height"

.field private static TAG:Ljava/lang/String;

.field public static mStatusBarHeight:I

.field private static topShift:I


# instance fields
.field private mAppSetStatusBarColor:I

.field private mDecoViewDrawFirst:Z

.field private mDecoViewDrawFlag:Z

.field private mDecoViewPostCount:I

.field private mDecorViewPaddingTop:I

.field private mDensity:F

.field private mIsActivityFirstStart:Z

.field private mIsAppDrawStatusBar:Z

.field private mIsFloating:Z

.field private mIsFlymeStatusBar:Z

.field private mIsInternalApp:Z

.field private mKeepAppStatusBar:Z

.field private mShowStatusBarColor:Z

.field private mStatusBarColor:I

.field private mStatusBarColorLock:Z

.field private mStatusBarTintEnabled:Z

.field private mThisActivity:Landroid/app/Activity;

.field private mTranslucentStatus:Z

.field private mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Landroid/app/Activity$TintBarInject;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFirst:Z

    return v0
.end method

.method static synthetic -get1(Landroid/app/Activity$TintBarInject;)I
    .locals 1

    iget v0, p0, Landroid/app/Activity$TintBarInject;->mDecoViewPostCount:I

    return v0
.end method

.method static synthetic -get2(Landroid/app/Activity$TintBarInject;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    return v0
.end method

.method static synthetic -get3(Landroid/app/Activity$TintBarInject;)I
    .locals 1

    iget v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    return v0
.end method

.method static synthetic -get4(Landroid/app/Activity$TintBarInject;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/Activity$TintBarInject;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFlag:Z

    return p1
.end method

.method static synthetic -set1(Landroid/app/Activity$TintBarInject;I)I
    .locals 0

    iput p1, p0, Landroid/app/Activity$TintBarInject;->mDecoViewPostCount:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/app/Activity$TintBarInject;Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayDraw"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Activity$TintBarInject;->onDrawDecorViewInner(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/app/Activity$TintBarInject;Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Activity$TintBarInject;->onDrawDecorViewInner(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/Activity$TintBarInject;ZLandroid/view/WindowManager$LayoutParams;Z)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "winParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "change"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Activity$TintBarInject;->setDrawsSystemBarBackgrounds(ZLandroid/view/WindowManager$LayoutParams;Z)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/app/Activity$TintBarInject;I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Activity$TintBarInject;->setStatusBarColor(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6876
    const-string/jumbo v0, "STATUS_BAR_TINT"

    sput-object v0, Landroid/app/Activity$TintBarInject;->TAG:Ljava/lang/String;

    .line 6877
    sget-object v0, Landroid/app/Activity$TintBarInject;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/app/Activity$TintBarInject;->DEBUG:Z

    .line 6875
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 6901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6882
    iput v1, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    .line 6884
    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mKeepAppStatusBar:Z

    .line 6889
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsActivityFirstStart:Z

    .line 6893
    iput v1, p0, Landroid/app/Activity$TintBarInject;->mDecorViewPaddingTop:I

    .line 6897
    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFirst:Z

    .line 6898
    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFlag:Z

    .line 6899
    iput v1, p0, Landroid/app/Activity$TintBarInject;->mDecoViewPostCount:I

    .line 6902
    iput-object p1, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    .line 6901
    return-void
.end method

.method private static color2String(I)Ljava/lang/String;
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 7349
    const-string/jumbo v0, "argb(%d,%d,%d,%d)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAutomaticColor(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)I
    .locals 8
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 7240
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 7241
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    sub-int/2addr v3, p4

    int-to-float v3, v3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7242
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    .line 7243
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 7244
    iput-boolean v2, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    .line 7245
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    new-array v1, v0, [I

    .line 7246
    .local v1, "pixels":[I
    array-length v3, v1

    array-length v6, v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p3

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 7247
    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->getMainColorFromBitmap([I)I

    move-result v0

    return v0
.end method

.method private getAutomaticColor(Landroid/view/View;)Ljava/lang/Integer;
    .locals 12
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x64

    .line 7251
    if-eqz p1, :cond_4

    .line 7253
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    if-lez v7, :cond_4

    .line 7254
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-static {v7, v9, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 7255
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7256
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    .line 7257
    .local v5, "isVerify":Z
    const/4 v4, 0x0

    .line 7258
    .local v4, "color":I
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 7259
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 7260
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7261
    .local v3, "child":Landroid/view/View;
    instance-of v7, v3, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 7262
    iget v7, p0, Landroid/app/Activity$TintBarInject;->mDensity:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v3, v2, v1, v7}, Landroid/app/Activity$TintBarInject;->getAutomaticColor(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)I

    move-result v4

    .line 7263
    iget-boolean v7, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-eqz v7, :cond_3

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    if-le v7, v10, :cond_2

    const/4 v5, 0x1

    .line 7267
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "isVerify":Z
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 7268
    sget v7, Landroid/app/Activity$TintBarInject;->topShift:I

    invoke-direct {p0, p1, v2, v1, v7}, Landroid/app/Activity$TintBarInject;->getAutomaticColor(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)I

    move-result v4

    .line 7270
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 7271
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    if-le v7, v10, :cond_4

    .line 7272
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    const/16 v10, 0xff

    invoke-static {v10, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 7263
    .restart local v3    # "child":Landroid/view/View;
    .restart local v5    # "isVerify":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4}, Landroid/app/Activity$TintBarInject;->isVerifyColorEx(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .local v5, "isVerify":Z
    goto :goto_0

    .line 7275
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "color":I
    .end local v5    # "isVerify":Z
    :catch_0
    move-exception v6

    .line 7278
    :cond_4
    return-object v11
.end method

.method private getMainColorFromBitmap([I)I
    .locals 18
    .param p1, "pixels"    # [I

    .prologue
    .line 7282
    const/4 v8, 0x0

    .line 7283
    .local v8, "mainColor":I
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v11, v0

    if-lez v11, :cond_3

    .line 7284
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 7285
    .local v4, "colors":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    move-object/from16 v0, p1

    array-length v12, v0

    :goto_0
    if-ge v11, v12, :cond_0

    aget v3, p1, v11

    .line 7286
    .local v3, "color":I
    const/4 v13, 0x0

    invoke-virtual {v4, v3, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 7287
    .local v5, "count":I
    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v4, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 7285
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 7289
    .end local v3    # "color":I
    .end local v5    # "count":I
    :cond_0
    const/4 v9, 0x0

    .line 7290
    .local v9, "maxCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    .line 7291
    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    if-ge v9, v11, :cond_1

    .line 7292
    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 7293
    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 7290
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 7296
    :cond_2
    int-to-double v12, v9

    move-object/from16 v0, p1

    array-length v11, v0

    int-to-double v14, v11

    const-wide v16, 0x3fb999999999999aL    # 0.1

    mul-double v14, v14, v16

    cmpg-double v11, v12, v14

    if-gez v11, :cond_3

    .line 7297
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 7298
    .local v10, "r":I
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 7299
    .local v6, "g":I
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 7300
    .local v2, "b":I
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    add-int/lit8 v12, v10, -0x5

    const/4 v13, 0x0

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v13, v6, -0x5

    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v14, v2, -0x5

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    .line 7303
    .end local v2    # "b":I
    .end local v4    # "colors":Landroid/util/SparseIntArray;
    .end local v6    # "g":I
    .end local v7    # "i":I
    .end local v9    # "maxCount":I
    .end local v10    # "r":I
    :cond_3
    return v8
.end method

.method private isAppDrawsSystemBarBackgrounds()Z
    .locals 1

    .prologue
    .line 7316
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method private static isAppDrawsSystemBarBackgrounds(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p0, "winParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 7320
    const/high16 v0, -0x80000000

    .line 7321
    .local v0, "bits":I
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    or-int v1, v2, v3

    .line 7322
    .local v1, "flags":I
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isBlackColor(I)Z
    .locals 4
    .param p0, "color"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x32

    .line 7011
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isDarkColor(I)Z
    .locals 4
    .param p0, "color"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0xc8

    .line 7015
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    if-le v2, v3, :cond_1

    const/4 v0, 0x1

    .line 7016
    .local v0, "isDark":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    if-le v2, v3, :cond_2

    const/4 v0, 0x1

    .line 7017
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    if-le v2, v3, :cond_3

    const/4 v0, 0x1

    .line 7018
    :goto_2
    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 7015
    .end local v0    # "isDark":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isDark":Z
    goto :goto_0

    .line 7016
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 7017
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private isShowStatusBarColor(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v1, 0x0

    .line 7307
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v0, v2, v3

    .line 7308
    .local v0, "sysUiVisibility":I
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    .line 7309
    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_0

    .line 7310
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 7311
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_0

    .line 7312
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 7308
    :cond_0
    return v1
.end method

.method private static isSimilarColor(II)Z
    .locals 11
    .param p0, "color1"    # I
    .param p1, "color2"    # I

    .prologue
    const/16 v10, -0xa

    .line 6985
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-lez v8, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-lez v8, :cond_0

    const/4 v7, 0x1

    .line 6986
    .local v7, "similar":Z
    :goto_0
    if-eqz v7, :cond_8

    .line 6987
    invoke-static {p1}, Landroid/app/Activity$TintBarInject;->isBlackColor(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-lez v8, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-lez v8, :cond_1

    const/4 v7, 0x1

    .line 6988
    :goto_1
    if-nez v7, :cond_8

    .line 6989
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    sub-int v0, v8, v9

    .line 6990
    .local v0, "alpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v9

    sub-int v6, v8, v9

    .line 6991
    .local v6, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v9

    sub-int v3, v8, v9

    .line 6992
    .local v3, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    sub-int v1, v8, v9

    .line 6993
    .local v1, "blue":I
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 6994
    .local v5, "min":I
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6995
    .local v4, "max":I
    sub-int v2, v4, v5

    .line 6996
    .local v2, "diff":I
    if-nez v2, :cond_3

    .line 6997
    const/4 v8, -0x1

    if-ne p0, v8, :cond_2

    const/16 v2, 0x78

    .line 7001
    :goto_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v9, 0x64

    if-ge v8, v9, :cond_5

    if-le v6, v10, :cond_5

    if-ge v6, v2, :cond_5

    const/4 v7, 0x1

    .line 7002
    :goto_3
    if-eqz v7, :cond_6

    if-le v3, v10, :cond_6

    if-ge v3, v2, :cond_6

    const/4 v7, 0x1

    .line 7003
    :goto_4
    if-eqz v7, :cond_7

    if-le v1, v10, :cond_7

    if-ge v1, v2, :cond_7

    const/4 v7, 0x1

    .line 7004
    :goto_5
    return v7

    .line 6985
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v2    # "diff":I
    .end local v3    # "green":I
    .end local v4    # "max":I
    .end local v5    # "min":I
    .end local v6    # "red":I
    .end local v7    # "similar":Z
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "similar":Z
    goto :goto_0

    .line 6987
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 6997
    .restart local v0    # "alpha":I
    .restart local v1    # "blue":I
    .restart local v2    # "diff":I
    .restart local v3    # "green":I
    .restart local v4    # "max":I
    .restart local v5    # "min":I
    .restart local v6    # "red":I
    :cond_2
    const/16 v2, 0x64

    goto :goto_2

    .line 6999
    :cond_3
    const/16 v8, 0x1e

    if-ge v2, v8, :cond_4

    const/16 v2, 0x64

    goto :goto_2

    :cond_4
    const/16 v2, 0x46

    goto :goto_2

    .line 7001
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 7002
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 7003
    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .line 7007
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v2    # "diff":I
    .end local v3    # "green":I
    .end local v4    # "max":I
    .end local v5    # "min":I
    .end local v6    # "red":I
    :cond_8
    return v7
.end method

.method private isVerifyColor(I)Z
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 6953
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 6954
    .local v0, "isVerify":Z
    :goto_0
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-eqz v1, :cond_2

    .line 6957
    :cond_0
    return v0

    .line 6953
    .end local v0    # "isVerify":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isVerify":Z
    goto :goto_0

    .line 6954
    :cond_2
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 6955
    iget v1, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-static {p1, v1}, Landroid/app/Activity$TintBarInject;->isSimilarColor(II)Z

    move-result v1

    return v1
.end method

.method private isVerifyColor(Ljava/lang/Integer;)Z
    .locals 3
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7206
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 7207
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 7209
    :cond_2
    return v1
.end method

.method private isVerifyColorEx(I)Z
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 6961
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 6962
    .local v0, "isVerify":Z
    :goto_0
    if-eqz v0, :cond_6

    iget v1, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    if-eq v1, p1, :cond_6

    .line 6963
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    if-ge v1, v3, :cond_3

    const/4 v0, 0x1

    .line 6964
    :goto_1
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    if-ge v1, v3, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 6965
    :goto_2
    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    if-lez v1, :cond_5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    if-ge v1, v3, :cond_5

    :cond_1
    const/4 v0, 0x1

    .line 6966
    :goto_3
    return v0

    .line 6961
    .end local v0    # "isVerify":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isVerify":Z
    goto :goto_0

    .line 6963
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 6964
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 6965
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 6968
    :cond_6
    return v2
.end method

.method private onDrawDecorViewInner(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # I

    .prologue
    .line 7217
    new-instance v0, Landroid/app/Activity$TintBarInject$2;

    invoke-direct {v0, p0, p2}, Landroid/app/Activity$TintBarInject$2;-><init>(Landroid/app/Activity$TintBarInject;I)V

    .line 7236
    int-to-long v2, p2

    .line 7217
    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7216
    return-void
.end method

.method private onDrawDecorViewInner(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayDraw"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7171
    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFlag:Z

    .line 7172
    invoke-direct {p0, p1}, Landroid/app/Activity$TintBarInject;->getAutomaticColor(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    .line 7173
    .local v0, "color":Ljava/lang/Integer;
    invoke-direct {p0, v0}, Landroid/app/Activity$TintBarInject;->isVerifyColor(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->setStatusBarColor(I)V

    .line 7170
    :cond_0
    :goto_0
    return-void

    .line 7176
    :cond_1
    if-eqz p2, :cond_2

    .line 7177
    const/16 v1, 0x1f4

    invoke-direct {p0, p1, v1}, Landroid/app/Activity$TintBarInject;->onDrawDecorViewInner(Landroid/view/View;I)V

    goto :goto_0

    .line 7179
    :cond_2
    iget v1, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->isVerifyColor(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7180
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    .line 7181
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-nez v1, :cond_0

    .line 7182
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v1, :cond_5

    .line 7183
    iget v1, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v4, 0x64

    if-le v1, v4, :cond_4

    iget v1, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-static {v1}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v1

    :goto_2
    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    .line 7184
    iput-boolean v2, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    .line 7185
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    iget v2, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 7186
    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    goto :goto_0

    :cond_3
    move v1, v3

    .line 7180
    goto :goto_1

    :cond_4
    move v1, v3

    .line 7183
    goto :goto_2

    .line 7188
    :cond_5
    invoke-direct {p0, v3}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    .line 7189
    iput-boolean v2, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    .line 7190
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 7191
    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    goto :goto_0
.end method

.method private postDrawDecorViewInner()V
    .locals 2

    .prologue
    .line 7213
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/Activity$TintBarInject;->onDrawDecorViewInner(Landroid/view/View;I)V

    .line 7212
    return-void
.end method

.method private setDrawsSystemBarBackgrounds(ZLandroid/view/WindowManager$LayoutParams;Z)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "winParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "change"    # Z

    .prologue
    .line 7326
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-nez v1, :cond_0

    .line 7327
    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    .line 7329
    :cond_0
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-nez v1, :cond_2

    .line 7330
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-eq v1, p1, :cond_2

    .line 7331
    iput-boolean p1, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    .line 7332
    const/high16 v0, -0x80000000

    .line 7333
    .local v0, "bits":I
    if-eqz p1, :cond_3

    .line 7334
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7338
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    .line 7339
    if-eqz p3, :cond_1

    .line 7340
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7342
    :cond_1
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getStatusBarColor()I

    move-result v1

    invoke-static {v1}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    .line 7343
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    .line 7325
    .end local v0    # "bits":I
    :cond_2
    return-void

    .line 7336
    .restart local v0    # "bits":I
    :cond_3
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private setStatusBarColor(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6930
    invoke-direct {p0, p1}, Landroid/app/Activity$TintBarInject;->isVerifyColor(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6931
    iput p1, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    .line 6932
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-eqz v1, :cond_0

    .line 6933
    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    .line 6934
    invoke-direct {p0, p1}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(I)V

    .line 6936
    :cond_0
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mKeepAppStatusBar:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v1, :cond_4

    .line 6937
    :cond_1
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-eqz v1, :cond_3

    .line 6938
    :cond_2
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v2, v1, v2}, Landroid/app/Activity$TintBarInject;->setDrawsSystemBarBackgrounds(ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 6939
    iput-boolean v2, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    .line 6940
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    iget v2, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 6941
    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    .line 6942
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsFloating:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/app/Activity$TintBarInject;->mDecorViewPaddingTop:I

    if-nez v1, :cond_3

    .line 6943
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 6944
    .local v0, "dec":Landroid/view/View;
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sget v3, Landroid/app/Activity$TintBarInject;->mStatusBarHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 6947
    .end local v0    # "dec":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p1}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(I)V

    .line 6929
    :cond_4
    return-void
.end method

.method private setStatusBarDarkIcon(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 6914
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->isAutoStatusBarIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6915
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-eqz v1, :cond_2

    .line 6916
    :cond_0
    invoke-static {p1}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    .line 6913
    :cond_1
    :goto_0
    return-void

    .line 6918
    :cond_2
    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v1, :cond_1

    .line 6919
    :cond_3
    iget-object v1, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 6920
    .local v0, "canSet":Z
    :goto_1
    if-nez v0, :cond_5

    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds()Z

    move-result v0

    .line 6921
    .end local v0    # "canSet":Z
    :goto_2
    if-eqz v0, :cond_1

    .line 6922
    invoke-static {p1}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    goto :goto_0

    .line 6919
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "canSet":Z
    goto :goto_1

    .line 6920
    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private setStatusBarDarkIcon(Z)V
    .locals 1
    .param p1, "dark"    # Z

    .prologue
    .line 7200
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isAutoStatusBarIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7201
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarDarkIcon(Z)V

    .line 7199
    :cond_0
    return-void
.end method

.method private updateStatusBarHeight()V
    .locals 8

    .prologue
    .line 7353
    const-class v3, Landroid/app/Activity$TintBarInject;

    monitor-enter v3

    .line 7354
    :try_start_0
    sget v2, Landroid/app/Activity$TintBarInject;->mStatusBarHeight:I

    if-nez v2, :cond_0

    .line 7355
    iget-object v2, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7356
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v2, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 7357
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 7358
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Landroid/app/Activity$TintBarInject;->mStatusBarHeight:I

    .line 7359
    sget v2, Landroid/app/Activity$TintBarInject;->mStatusBarHeight:I

    int-to-float v2, v2

    iget v4, p0, Landroid/app/Activity$TintBarInject;->mDensity:F

    add-float/2addr v2, v4

    float-to-double v4, v2

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    add-double/2addr v4, v6

    double-to-int v2, v4

    sput v2, Landroid/app/Activity$TintBarInject;->topShift:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "resourceId":I
    :cond_0
    monitor-exit v3

    .line 7352
    return-void

    .line 7353
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method apply(ZLandroid/view/WindowManager$LayoutParams;Z)V
    .locals 9
    .param p1, "updateColor"    # Z
    .param p2, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "change"    # Z

    .prologue
    const/high16 v8, 0x4000000

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 7061
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7062
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 7063
    .local v1, "fullcreen":Z
    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->isFloating()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7064
    :cond_0
    return-void

    .line 7062
    .end local v1    # "fullcreen":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fullcreen":Z
    goto :goto_0

    .line 7067
    .end local v1    # "fullcreen":Z
    :cond_2
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 7068
    const-string/jumbo v7, "mz_status_bar_tint"

    .line 7067
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x1

    .line 7069
    .local v3, "statusBarTintEnabled":Z
    :goto_1
    invoke-direct {p0, p2}, Landroid/app/Activity$TintBarInject;->isShowStatusBarColor(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    .line 7070
    .local v2, "showStatusBarColor":Z
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_7

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    .line 7071
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-nez v4, :cond_3

    .line 7072
    invoke-static {p2}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    .line 7073
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    if-nez v4, :cond_3

    .line 7074
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getStatusBarColor()I

    move-result v4

    iput v4, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    .line 7077
    :cond_3
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-ne v4, v3, :cond_4

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mShowStatusBarColor:Z

    if-eq v2, v4, :cond_12

    .line 7078
    :cond_4
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-eqz v4, :cond_a

    .line 7079
    iput-boolean v2, p0, Landroid/app/Activity$TintBarInject;->mShowStatusBarColor:Z

    .line 7080
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-eq v4, v3, :cond_5

    .line 7081
    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    .line 7082
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-eqz v4, :cond_9

    .line 7083
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->isAutoStatusBarIcon()Z

    move-result v4

    if-nez v4, :cond_8

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-eqz v4, :cond_8

    .line 7060
    :cond_5
    :goto_3
    return-void

    .line 7067
    .end local v2    # "showStatusBarColor":Z
    .end local v3    # "statusBarTintEnabled":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "statusBarTintEnabled":Z
    goto :goto_1

    .restart local v2    # "showStatusBarColor":Z
    :cond_7
    move v4, v6

    .line 7070
    goto :goto_2

    .line 7084
    :cond_8
    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->postDrawDecorViewInner()V

    goto :goto_3

    .line 7087
    :cond_9
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-nez v4, :cond_5

    .line 7088
    iput-boolean v5, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    .line 7089
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    iget v5, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 7090
    iget v4, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-static {v4}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v4

    invoke-direct {p0, v4}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    .line 7091
    iput-boolean v6, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    goto :goto_3

    .line 7096
    :cond_a
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mShowStatusBarColor:Z

    if-eq v4, v2, :cond_b

    .line 7097
    iput-boolean v2, p0, Landroid/app/Activity$TintBarInject;->mShowStatusBarColor:Z

    .line 7098
    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    .line 7099
    if-eqz v3, :cond_b

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mKeepAppStatusBar:Z

    if-eqz v4, :cond_c

    .line 7105
    :cond_b
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-eq v4, v3, :cond_5

    .line 7106
    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    .line 7107
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-eqz v4, :cond_d

    .line 7108
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mShowStatusBarColor:Z

    if-eqz v4, :cond_5

    .line 7109
    invoke-direct {p0, v5, p2, p3}, Landroid/app/Activity$TintBarInject;->setDrawsSystemBarBackgrounds(ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 7110
    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->postDrawDecorViewInner()V

    goto :goto_3

    .line 7099
    :cond_c
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mShowStatusBarColor:Z

    if-eqz v4, :cond_b

    .line 7100
    invoke-direct {p0, v5, p2, p3}, Landroid/app/Activity$TintBarInject;->setDrawsSystemBarBackgrounds(ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 7101
    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->postDrawDecorViewInner()V

    .line 7102
    return-void

    .line 7113
    :cond_d
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-eqz v4, :cond_11

    .line 7114
    iget v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    iget v7, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-static {v4, v7}, Landroid/app/Activity$TintBarInject;->isSimilarColor(II)Z

    move-result v4

    if-nez v4, :cond_10

    .line 7115
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_f

    :goto_4
    iput-boolean v5, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    .line 7116
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-nez v4, :cond_e

    .line 7117
    invoke-direct {p0, v6, p2, p3}, Landroid/app/Activity$TintBarInject;->setDrawsSystemBarBackgrounds(ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 7118
    invoke-direct {p0, v6}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    .line 7125
    :cond_e
    :goto_5
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsFloating:Z

    if-eqz v4, :cond_5

    .line 7126
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 7127
    .local v0, "dec":Landroid/view/View;
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Landroid/app/Activity$TintBarInject;->mDecorViewPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .end local v0    # "dec":Landroid/view/View;
    :cond_f
    move v5, v6

    .line 7115
    goto :goto_4

    .line 7121
    :cond_10
    iput-boolean v5, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    .line 7122
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    iget v5, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 7123
    iput-boolean v6, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    goto :goto_5

    .line 7130
    :cond_11
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-nez v4, :cond_5

    .line 7131
    iput-boolean v5, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    .line 7132
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    iget v5, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 7133
    iput-boolean v6, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    .line 7134
    iget v4, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    invoke-static {v4}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v4

    invoke-direct {p0, v4}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    goto/16 :goto_3

    .line 7141
    :cond_12
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    if-eqz v4, :cond_13

    .line 7142
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->isAutoStatusBarIcon()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    .line 7143
    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->postDrawDecorViewInner()V

    goto/16 :goto_3

    .line 7146
    :cond_13
    if-eqz p1, :cond_5

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    if-nez v4, :cond_14

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-eqz v4, :cond_5

    .line 7147
    :cond_14
    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->postDrawDecorViewInner()V

    goto/16 :goto_3
.end method

.method public drawStatusBarBackground(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 7022
    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 7023
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFirst:Z

    .line 7024
    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mDecoViewDrawFlag:Z

    if-eqz v0, :cond_0

    .line 7025
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/Activity$TintBarInject;->onDrawDecorViewInner(Landroid/view/View;Z)V

    .line 7026
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 7021
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    .line 7165
    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsActivityFirstStart:Z

    if-nez v0, :cond_0

    .line 7166
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v1}, Landroid/app/Activity$TintBarInject;->apply(ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 7164
    :cond_0
    return-void
.end method

.method onCreate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 6906
    iget-object v2, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    .line 6907
    iget-object v2, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroid/app/Activity$TintBarInject;->mDensity:F

    .line 6908
    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->updateStatusBarHeight()V

    .line 6909
    iget-object v2, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6910
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Landroid/app/Activity$TintBarInject;->mIsInternalApp:Z

    .line 6905
    return-void
.end method

.method onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7154
    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsActivityFirstStart:Z

    if-eqz v0, :cond_0

    .line 7155
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mThisActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    .line 7156
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isFloating()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsFloating:Z

    .line 7157
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Landroid/app/Activity$TintBarInject;->mDecorViewPaddingTop:I

    .line 7158
    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsAppDrawStatusBar:Z

    .line 7160
    :cond_0
    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v1}, Landroid/app/Activity$TintBarInject;->apply(ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 7161
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mIsActivityFirstStart:Z

    .line 7153
    return-void
.end method

.method public onStatusBarColorChange(I)I
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 6972
    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 6973
    iput p1, p0, Landroid/app/Activity$TintBarInject;->mAppSetStatusBarColor:I

    .line 6974
    iget v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    invoke-direct {p0, v0}, Landroid/app/Activity$TintBarInject;->isVerifyColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarTintEnabled:Z

    if-eqz v0, :cond_0

    .line 6975
    iget v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    invoke-static {v0, p1}, Landroid/app/Activity$TintBarInject;->isSimilarColor(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6976
    iget v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    invoke-static {v0}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    .line 6977
    iget v0, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    return v0

    .line 6980
    :cond_0
    invoke-static {p1}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Activity$TintBarInject;->setStatusBarDarkIcon(Z)V

    .line 6982
    :cond_1
    return p1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 8
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/high16 v6, -0x80000000

    const/4 v3, 0x0

    .line 7032
    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColorLock:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/app/Activity$TintBarInject;->mIsActivityFirstStart:Z

    if-eqz v4, :cond_1

    .line 7057
    :cond_0
    :goto_0
    return-object p1

    .line 7033
    :cond_1
    invoke-virtual {p0, v3, p1, v3}, Landroid/app/Activity$TintBarInject;->apply(ZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 7034
    iget-object v4, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    .line 7035
    iget-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mIsFlymeStatusBar:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroid/app/Activity$TintBarInject;->isAppDrawsSystemBarBackgrounds()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7039
    :cond_3
    :goto_1
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/app/Activity$TintBarInject;->mTranslucentStatus:Z

    if-nez v3, :cond_0

    .line 7040
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v3, v3, 0x2000

    if-lez v3, :cond_5

    const/4 v2, 0x1

    .line 7041
    .local v2, "isVisibilityDark":Z
    :goto_2
    iget v3, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    invoke-static {v3}, Landroid/app/Activity$TintBarInject;->isDarkColor(I)Z

    move-result v1

    .line 7042
    .local v1, "isColorDark":Z
    if-eq v2, v1, :cond_0

    iget-object v3, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getStatusBarColor()I

    move-result v3

    iget v4, p0, Landroid/app/Activity$TintBarInject;->mStatusBarColor:I

    if-ne v3, v4, :cond_0

    .line 7043
    if-eqz v1, :cond_6

    .line 7044
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 7048
    :goto_3
    iget-object v3, p0, Landroid/app/Activity$TintBarInject;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/app/Activity$TintBarInject$1;

    invoke-direct {v4, p0}, Landroid/app/Activity$TintBarInject$1;-><init>(Landroid/app/Activity$TintBarInject;)V

    .line 7053
    const-wide/16 v6, 0xa

    .line 7048
    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7036
    .end local v1    # "isColorDark":Z
    .end local v2    # "isVisibilityDark":Z
    :cond_4
    const/high16 v0, -0x80000000

    .line 7037
    .local v0, "bits":I
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v6

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 7040
    .end local v0    # "bits":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isVisibilityDark":Z
    goto :goto_2

    .line 7046
    .restart local v1    # "isColorDark":Z
    :cond_6
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    goto :goto_3
.end method
