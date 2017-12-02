.class Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/webkit/WebViewUpdateServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewUpdater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    }
.end annotation


# static fields
.field private static final WAIT_TIMEOUT_MS:I = 0x3e8


# instance fields
.field private NUMBER_OF_RELROS_UNKNOWN:I

.field private mAnyWebViewInstalled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

.field private mLock:Ljava/lang/Object;

.field private mMinimumVersionCode:I

.field private mNumRelroCreationsFinished:I

.field private mNumRelroCreationsStarted:I

.field private mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field private mWebViewPackageDirty:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemInterface"    # Lcom/android/server/webkit/SystemInterface;

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    .line 227
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 228
    iput v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 230
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 233
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    .line 220
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mContext:Landroid/content/Context;

    .line 221
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 219
    return-void
.end method

.method private checkIfRelrosDoneLocked()V
    .locals 4

    .prologue
    .line 538
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v2, v3, :cond_0

    .line 539
    iget-boolean v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    if-eqz v2, :cond_1

    .line 540
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    .line 544
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 545
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v1    # "newPackage":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    goto :goto_0
.end method

.method private findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 437
    invoke-direct {p0, v4}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->getValidWebViewPackagesAndInfos(Z)[Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v1

    .line 439
    .local v1, "providers":[Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v3, v5}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "userChosenProvider":Ljava/lang/String;
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 443
    .local v0, "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-object v6, v6, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 444
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap1(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    .line 443
    if-eqz v6, :cond_0

    .line 445
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap0(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    .line 443
    if-eqz v6, :cond_0

    .line 446
    iget-object v3, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v3

    .line 442
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    :cond_1
    array-length v5, v1

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v0, v1, v3

    .line 454
    .restart local v0    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-boolean v6, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_2

    .line 455
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap1(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    .line 454
    if-eqz v6, :cond_2

    .line 456
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap0(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    .line 454
    if-eqz v6, :cond_2

    .line 457
    iget-object v3, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v3

    .line 453
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 463
    .end local v0    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    :cond_3
    array-length v5, v1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_5

    aget-object v0, v1, v3

    .line 464
    .restart local v0    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    iget-object v6, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-boolean v6, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_4

    .line 465
    iget-object v3, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v3

    .line 463
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 469
    .end local v0    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    :cond_5
    iput-boolean v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 470
    new-instance v3, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    .line 471
    const-string/jumbo v4, "Could not find a loadable WebView package"

    .line 470
    invoke-direct {v3, v4}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getMinimumVersionCode()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 606
    iget v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    if-lez v4, :cond_0

    .line 607
    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    return v3

    .line 610
    :cond_0
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v4}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v1, v4, v3

    .line 611
    .local v1, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v6, v1, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v1, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v6, :cond_2

    .line 610
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 614
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/android/server/webkit/SystemInterface;->getFactoryPackageVersion(Ljava/lang/String;)I

    move-result v2

    .line 615
    .local v2, "versionCode":I
    iget v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    if-ge v2, v6, :cond_1

    .line 616
    :cond_3
    iput v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 618
    .end local v2    # "versionCode":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 624
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_4
    iget v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mMinimumVersionCode:I

    return v3
.end method

.method private getValidWebViewPackagesAndInfos(Z)[Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    .locals 7
    .param p1, "onlyInstalled"    # Z

    .prologue
    .line 387
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v5}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 388
    .local v0, "allProviders":[Landroid/webkit/WebViewProviderInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v4, "providers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_2

    .line 392
    :try_start_0
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    aget-object v6, v0, v2

    invoke-interface {v5, v6}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 393
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_0

    invoke-static {v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap1(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 394
    :cond_0
    aget-object v5, v0, v2

    invoke-virtual {p0, v5, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v5

    .line 393
    if-eqz v5, :cond_1

    .line 395
    new-instance v5, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    aget-object v6, v0, v2

    invoke-direct {v5, v6, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;-><init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    return-object v5

    .line 397
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .locals 3
    .param p1, "newPackage"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 367
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v0, v2, :cond_0

    .line 368
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 373
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 376
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0, p1}, Lcom/android/server/webkit/SystemInterface;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 375
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 379
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->checkIfRelrosDoneLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 364
    return-void

    .line 381
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static versionCodeGE(II)Z
    .locals 3
    .param p0, "versionCode1"    # I
    .param p1, "versionCode2"    # I

    .prologue
    const v2, 0x186a0

    .line 575
    div-int v0, p0, v2

    .line 576
    .local v0, "v1":I
    div-int v1, p1, v2

    .line 578
    .local v1, "v2":I
    if-lt v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private webViewIsReadyLocked()Z
    .locals 2

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    if-nez v0, :cond_0

    .line 530
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_0

    .line 534
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "newProviderName"    # Ljava/lang/String;

    .prologue
    .line 326
    const/4 v2, 0x0

    .line 327
    .local v2, "oldPackage":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 328
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    .line 329
    .local v3, "providerChanged":Z
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 331
    .local v2, "oldPackage":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v4, v6, p1}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 335
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    .line 336
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    .line 346
    :goto_0
    if-eqz v3, :cond_0

    .line 347
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v5

    .line 351
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 352
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 357
    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v4

    .line 335
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 336
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 337
    .end local v1    # "newPackage":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :try_start_3
    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Tried to change WebView provider but failed to fetch WebView package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string/jumbo v4, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-object v4

    .line 329
    .end local v0    # "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    .end local v2    # "oldPackage":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 517
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 519
    return-object v2

    .line 520
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getValidAndInstalledWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 4

    .prologue
    .line 409
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->getValidWebViewPackagesAndInfos(Z)[Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v2

    .line 411
    .local v2, "providersAndPackageInfos":[Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;
    array-length v3, v2

    new-array v1, v3, [Landroid/webkit/WebViewProviderInfo;

    .line 412
    .local v1, "providers":[Landroid/webkit/WebViewProviderInfo;
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 413
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    aput-object v3, v1, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_0
    return-object v1
.end method

.method public isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p1, "configInfo"    # Landroid/webkit/WebViewProviderInfo;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v2, 0x0

    .line 586
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->getMinimumVersionCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->versionCodeGE(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-static {p1, p2, v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-wrap2(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 594
    const/4 v0, 0x1

    return v0

    .line 590
    :cond_1
    return v2

    .line 596
    :cond_2
    return v2
.end method

.method public notifyRelroCreationCompleted()V
    .locals 2

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_0
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 477
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->checkIfRelrosDoneLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 474
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public packageStateChanged(Ljava/lang/String;I)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changedState"    # I

    .prologue
    .line 241
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v7}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_8

    aget-object v3, v8, v7

    .line 242
    .local v3, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v6, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 244
    .local v6, "webviewPackage":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 245
    const/4 v5, 0x0

    .line 246
    .local v5, "updateWebView":Z
    const/4 v4, 0x0

    .line 247
    .local v4, "removedOrChangedOldPackage":Z
    const/4 v2, 0x0

    .line 248
    .local v2, "oldProviderName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 249
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 251
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 252
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v7, :cond_1

    .line 253
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 254
    .local v2, "oldProviderName":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 255
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 254
    if-eqz v7, :cond_0

    monitor-exit v8

    .line 259
    return-void

    .line 261
    :cond_0
    :try_start_1
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 262
    iget-wide v10, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 263
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-wide v12, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_1
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    cmp-long v7, v10, v12

    if-nez v7, :cond_1

    monitor-exit v8

    .line 265
    return-void

    .line 272
    .end local v2    # "oldProviderName":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v7, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 273
    iget-object v7, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 272
    if-nez v7, :cond_4

    .line 274
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-nez v7, :cond_5

    const/4 v5, 0x1

    .line 278
    :goto_1
    iget-object v7, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 279
    .local v4, "removedOrChangedOldPackage":Z
    if-eqz v5, :cond_2

    .line 280
    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_2
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "newPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "removedOrChangedOldPackage":Z
    :cond_2
    :goto_2
    monitor-exit v8

    .line 287
    if-eqz v5, :cond_3

    if-eqz v4, :cond_6

    .line 295
    :cond_3
    :goto_3
    return-void

    .line 272
    .restart local v1    # "newPackage":Landroid/content/pm/PackageInfo;
    .local v4, "removedOrChangedOldPackage":Z
    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    .line 274
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 282
    .end local v1    # "newPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "removedOrChangedOldPackage":Z
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :try_start_3
    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not find valid WebView package to create relro with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 249
    .end local v0    # "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 288
    :cond_6
    if-eqz v2, :cond_3

    .line 293
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v7, v2}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    goto :goto_3

    .line 241
    .end local v5    # "updateWebView":Z
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 240
    .end local v3    # "provider":Landroid/webkit/WebViewProviderInfo;
    .end local v6    # "webviewPackage":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public prepareWebViewInSystemServer()V
    .locals 5

    .prologue
    .line 302
    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 309
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mContext:Landroid/content/Context;

    .line 310
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 309
    invoke-interface {v1, v3, v4}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 300
    :goto_0
    return-void

    .line 302
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 313
    :catch_0
    move-exception v0

    .line 315
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "error preparing webview provider from system server"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 18

    .prologue
    .line 482
    const/4 v5, 0x0

    .line 483
    .local v5, "webViewPackage":Landroid/content/pm/PackageInfo;
    const-wide/32 v2, 0xf4240

    .line 484
    .local v2, "NS_PER_MS":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    add-long v8, v12, v14

    .line 485
    .local v8, "timeoutTimeMs":J
    const/4 v10, 0x0

    .line 486
    .local v10, "webViewReady":Z
    const/4 v11, 0x0

    .line 487
    .local v11, "webViewStatus":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 488
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v10

    .line 489
    .local v10, "webViewReady":Z
    :goto_0
    if-nez v10, :cond_0

    .line 490
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/32 v16, 0xf4240

    div-long v6, v14, v16

    .line 491
    .local v6, "timeNowMs":J
    cmp-long v12, v6, v8

    if-ltz v12, :cond_2

    .line 498
    .end local v6    # "timeNowMs":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    .local v5, "webViewPackage":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_3

    :goto_1
    monitor-exit v13

    .line 512
    if-nez v10, :cond_1

    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "creating relro file timed out"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_1
    new-instance v12, Landroid/webkit/WebViewProviderResponse;

    invoke-direct {v12, v5, v11}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    return-object v12

    .line 493
    .local v5, "webViewPackage":Landroid/content/pm/PackageInfo;
    .restart local v6    # "timeNowMs":J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mLock:Ljava/lang/Object;

    sub-long v14, v8, v6

    invoke-virtual {v12, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :goto_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v10

    goto :goto_0

    .line 500
    .end local v6    # "timeNowMs":J
    .local v5, "webViewPackage":Landroid/content/pm/PackageInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mAnyWebViewInstalled:Z

    if-nez v12, :cond_4

    .line 501
    const/4 v11, 0x4

    goto :goto_1

    .line 505
    :cond_4
    const/4 v11, 0x3

    .line 506
    invoke-static {}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Timed out waiting for relro creation, relros started "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 507
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 506
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 508
    const-string/jumbo v15, " relros finished "

    .line 506
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 508
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 506
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 509
    const-string/jumbo v15, " package dirty? "

    .line 506
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 509
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl$WebViewUpdater;->mWebViewPackageDirty:Z

    .line 506
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 487
    .end local v5    # "webViewPackage":Landroid/content/pm/PackageInfo;
    .end local v10    # "webViewReady":Z
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 494
    .local v5, "webViewPackage":Landroid/content/pm/PackageInfo;
    .restart local v6    # "timeNowMs":J
    .restart local v10    # "webViewReady":Z
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/InterruptedException;
    goto :goto_2
.end method
