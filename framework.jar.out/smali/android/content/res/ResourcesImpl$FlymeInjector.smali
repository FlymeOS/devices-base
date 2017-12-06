.class final Landroid/content/res/ResourcesImpl$FlymeInjector;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 1390
    iget-object v4, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1391
    .local v2, "file":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1393
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p0, p1, p2, v2}, Landroid/content/res/ResourcesImpl$FlymeInjector;->loadFlymeThemeDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1394
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1395
    invoke-virtual {p0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v5, p1, Landroid/util/TypedValue;->assetCookie:I

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 1396
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1397
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1401
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 1399
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static isFlymeThemeChange(Landroid/content/res/ResourcesImpl;)V
    .locals 3
    .param p0, "resImpl"    # Landroid/content/res/ResourcesImpl;

    .prologue
    .line 1370
    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->flymeGetFieldConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->flymeGetFieldTmpConfig()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 1371
    .local v0, "changes":I
    iput v0, p0, Landroid/content/res/ResourcesImpl;->mFlymeThemeChanges:I

    .line 1372
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_1

    .line 1373
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    if-eqz v1, :cond_1

    .line 1374
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v1}, Landroid/content/res/flymetheme/FlymeThemeResource;->reset()V

    .line 1375
    iget-boolean v1, p0, Landroid/content/res/ResourcesImpl;->mIsSystemResource:Z

    if-nez v1, :cond_0

    .line 1376
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v1}, Landroid/content/res/flymetheme/FlymeThemeResource;->load()V

    .line 1378
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/ResourcesImpl;->mIsFlymeThemeChange:Z

    .line 1369
    :cond_1
    return-void
.end method

.method static loadFlymeColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 1417
    invoke-virtual {p0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/ResourcesImpl;->getFlymeThemeColor(I)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v1

    .line 1418
    .local v1, "themeColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    if-eqz v1, :cond_0

    .line 1419
    iget-wide v2, v1, Landroid/content/res/flymetheme/ColorInfo;->mColor:J

    long-to-int v2, v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1420
    .local v0, "csl":Landroid/content/res/ColorStateList;
    return-object v0

    .line 1422
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    :cond_0
    return-object v3
.end method

.method private static loadFlymeThemeDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1405
    invoke-virtual {p0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p1}, Landroid/content/res/ResourcesImpl;->getThemeFileStream(ILjava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 1406
    .local v1, "flymeInputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 1407
    invoke-static {p0, p1, v1, p3, v3}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1408
    .local v0, "flymeDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1409
    return-object v0

    .line 1411
    .end local v0    # "flymeDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v3
.end method

.method static openFlymeThemeRawResource(Landroid/content/res/ResourcesImpl;ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 1
    .param p0, "resImpl"    # Landroid/content/res/ResourcesImpl;
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 1365
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/res/ResourcesImpl;->getThemeFileStream(ILjava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static overlayFlymeThemeColor(Landroid/content/res/Resources;Landroid/util/TypedValue;)V
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 1383
    invoke-virtual {p0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    iget v2, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/ResourcesImpl;->getFlymeThemeColor(I)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v0

    .line 1384
    .local v0, "colorInfo":Landroid/content/res/flymetheme/ColorInfo;
    if-eqz v0, :cond_0

    .line 1385
    iget-wide v2, v0, Landroid/content/res/flymetheme/ColorInfo;->mColor:J

    long-to-int v1, v2

    iput v1, p1, Landroid/util/TypedValue;->data:I

    .line 1382
    :cond_0
    return-void
.end method
