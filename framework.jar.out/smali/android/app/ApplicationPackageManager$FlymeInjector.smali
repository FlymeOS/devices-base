.class final Landroid/app/ApplicationPackageManager$FlymeInjector;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFlymeDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 2597
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2598
    const v2, #android:drawable@sym_def_app_icon#t

    .line 2597
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getThemeDefaultActivityIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static getFlymeThemeDrawable(Landroid/app/ApplicationPackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "apm"    # Landroid/app/ApplicationPackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v3, 0x0

    .line 2523
    invoke-static {p1, p2, p3}, Landroid/app/ApplicationPackageManager$FlymeInjector;->getFlymeThemeDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2524
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 2525
    const/4 v2, 0x0

    .line 2527
    .local v2, "r":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2530
    .end local v2    # "r":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 2531
    invoke-virtual {v2, p2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2532
    invoke-static {v2, v0, p3}, Landroid/app/ApplicationPackageManager$FlymeInjector;->makeFlymeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2534
    :cond_0
    invoke-static {v0}, Landroid/app/ApplicationPackageManager$FlymeInjector;->getImmutableBitmapDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2536
    :cond_1
    return-object v0

    .line 2528
    .restart local v2    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private static getFlymeThemeDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "resId"    # I
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v6, 0x0

    .line 2550
    if-eqz p2, :cond_0

    :try_start_0
    iget v3, p2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eq v3, p1, :cond_0

    .line 2551
    return-object v6

    .line 2555
    :cond_0
    const-string/jumbo v3, "com.android.calendar"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Landroid/content/res/flymetheme/FlymeThemeHelper;->MEIZU_CALENDAR_ICON:Z

    if-eqz v3, :cond_1

    .line 2556
    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCalendarIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2560
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 2558
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {p0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 2564
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 2567
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failure retrieving icon 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2568
    const-string/jumbo v5, " in package "

    .line 2567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2570
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-object v6

    .line 2561
    :catch_1
    move-exception v1

    .line 2562
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failure retrieving resources for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2563
    const-string/jumbo v5, ": "

    .line 2562
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2563
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 2562
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getImmutableBitmapDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2584
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2585
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2586
    .local v2, "mutableBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2587
    .local v0, "immutableBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2588
    .local v1, "immutablebitmapDrawble":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2589
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2591
    :cond_0
    return-object v1

    .line 2593
    .end local v0    # "immutableBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "immutablebitmapDrawble":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "mutableBitmap":Landroid/graphics/Bitmap;
    .restart local p0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object p0
.end method

.method static isFlymeCalendarPkg(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2519
    const-string/jumbo v0, "com.android.calendar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static makeFlymeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 2574
    invoke-static {p0, p1, p2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->makeThemeIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2575
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v1, "com.android.calendar"

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2576
    sget-boolean v1, Landroid/content/res/flymetheme/FlymeThemeHelper;->MEIZU_CALENDAR_ICON:Z

    .line 2575
    if-eqz v1, :cond_0

    .line 2577
    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addDateToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2578
    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addDayOfWeekToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2580
    :cond_0
    return-object v0
.end method
