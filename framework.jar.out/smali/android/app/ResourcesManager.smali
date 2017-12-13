.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesManager$FlymeInjector;,
        Landroid/app/ResourcesManager$1;,
        Landroid/app/ResourcesManager$ActivityResources;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static final sEmptyReferencePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final mActivityResourceReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ResourcesManager$ActivityResources;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mResConfiguration:Landroid/content/res/Configuration;

.field private final mResourceImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/app/ResourcesManager$1;

    invoke-direct {v0}, Landroid/app/ResourcesManager$1;-><init>()V

    .line 60
    sput-object v0, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 83
    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 103
    iput-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 109
    iput-object v0, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    .line 51
    return-void
.end method

.method private static applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 173
    iput v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 174
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 175
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 176
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 177
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 178
    .local v0, "sl":I
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    .line 179
    const/4 v1, 0x2

    iput v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 181
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 180
    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 187
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 188
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 189
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 190
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 172
    return-void

    .line 183
    :cond_0
    iput v3, p1, Landroid/content/res/Configuration;->orientation:I

    .line 185
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 184
    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method private createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 7
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .prologue
    const/4 v6, 0x0

    .line 308
    new-instance v2, Landroid/view/DisplayAdjustments;

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v2, v5}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    .line 309
    .local v2, "daj":Landroid/view/DisplayAdjustments;
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v5}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 311
    invoke-virtual {p0, p1}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;

    move-result-object v0

    .line 312
    .local v0, "assets":Landroid/content/res/AssetManager;
    if-nez v0, :cond_0

    .line 313
    return-object v6

    .line 316
    :cond_0
    iget v5, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-virtual {p0, v5, v2}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 317
    .local v3, "dm":Landroid/util/DisplayMetrics;
    invoke-direct {p0, p1, v3}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 318
    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v4, Landroid/content/res/ResourcesImpl;

    invoke-direct {v4, v0, v3, v1, v2}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    .line 322
    .local v4, "impl":Landroid/content/res/ResourcesImpl;
    return-object v4
.end method

.method private findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .locals 6
    .param p1, "resourceImpl"    # Landroid/content/res/ResourcesImpl;

    .prologue
    const/4 v5, 0x0

    .line 364
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 365
    .local v2, "refCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 366
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 367
    .local v3, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesImpl;

    move-object v1, v4

    .line 368
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    :goto_1
    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_1

    .line 369
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesKey;

    return-object v4

    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_0
    move-object v1, v5

    .line 367
    goto :goto_1

    .line 365
    .restart local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v3    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_2
    return-object v5
.end method

.method private findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 3
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .prologue
    .line 348
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 349
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    if-nez v0, :cond_0

    .line 350
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_0

    .line 352
    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_0
    return-object v0
.end method

.method private findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .prologue
    const/4 v3, 0x0

    .line 332
    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 333
    .local v1, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    move-object v0, v2

    .line 334
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    return-object v0

    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_0
    move-object v0, v3

    .line 333
    goto :goto_0

    .line 337
    .restart local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_1
    return-object v3
.end method

.method private generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;
    .locals 4
    .param p1, "key"    # Landroid/content/res/ResourcesKey;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 290
    iget v3, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-nez v3, :cond_3

    const/4 v2, 0x1

    .line 291
    .local v2, "isDefaultDisplay":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v1

    .line 292
    .local v1, "hasOverrideConfig":Z
    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    .line 293
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 294
    .local v0, "config":Landroid/content/res/Configuration;
    if-nez v2, :cond_1

    .line 295
    invoke-static {p2, v0}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 297
    :cond_1
    if-eqz v1, :cond_2

    .line 298
    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 304
    :cond_2
    :goto_1
    return-object v0

    .line 290
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "hasOverrideConfig":Z
    .end local v2    # "isDefaultDisplay":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isDefaultDisplay":Z
    goto :goto_0

    .line 302
    .restart local v1    # "hasOverrideConfig":Z
    :cond_4
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .restart local v0    # "config":Landroid/content/res/Configuration;
    goto :goto_1
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .prologue
    .line 113
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 114
    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 117
    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 397
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    .line 398
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    if-nez v0, :cond_0

    .line 399
    new-instance v0, Landroid/app/ResourcesManager$ActivityResources;

    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    invoke-direct {v0, v2}, Landroid/app/ResourcesManager$ActivityResources;-><init>(Landroid/app/ResourcesManager$ActivityResources;)V

    .line 400
    .restart local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_0
    return-object v0
.end method

.method private getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 8
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "key"    # Landroid/content/res/ResourcesKey;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v7, 0x0

    .line 547
    monitor-enter p0

    .line 554
    if-eqz p1, :cond_2

    .line 556
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 559
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 560
    sget-object v6, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    .line 559
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    .line 563
    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 564
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v6, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 570
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 571
    .local v3, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v3, :cond_3

    .line 575
    invoke-direct {p0, p1, p3, v3}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 565
    .end local v3    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    :cond_1
    :try_start_1
    new-instance v4, Landroid/content/res/Configuration;

    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v4, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 566
    .local v4, "temp":Landroid/content/res/Configuration;
    iget-object v5, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 567
    iget-object v5, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 547
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v4    # "temp":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 583
    :cond_2
    :try_start_2
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    sget-object v6, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    .line 586
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 587
    .restart local v3    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v3, :cond_3

    .line 591
    invoke-direct {p0, p3, v3}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    :cond_3
    monitor-exit p0

    .line 599
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 600
    if-nez v3, :cond_4

    .line 601
    return-object v7

    .line 604
    :cond_4
    monitor-enter p0

    .line 605
    :try_start_3
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v1

    .line 606
    .local v1, "existingResourcesImpl":Landroid/content/res/ResourcesImpl;
    if-eqz v1, :cond_5

    .line 611
    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    .line 612
    move-object v3, v1

    .line 619
    :goto_1
    if-eqz p1, :cond_6

    .line 620
    invoke-direct {p0, p1, p3, v3}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .local v2, "resources":Landroid/content/res/Resources;
    :goto_2
    monitor-exit p0

    .line 625
    return-object v2

    .line 615
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_5
    :try_start_4
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 604
    .end local v1    # "existingResourcesImpl":Landroid/content/res/ResourcesImpl;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 623
    .restart local v1    # "existingResourcesImpl":Landroid/content/res/ResourcesImpl;
    :cond_6
    :try_start_5
    invoke-direct {p0, p3, v3}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method private getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    .locals 7
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "impl"    # Landroid/content/res/ResourcesImpl;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    .line 414
    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 415
    .local v2, "refCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 416
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 417
    .local v4, "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 419
    .local v3, "resources":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 420
    invoke-virtual {v3}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v5, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 419
    if-eqz v5, :cond_0

    .line 421
    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    if-ne v5, p3, :cond_0

    .line 425
    return-object v3

    .line 415
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    new-instance v3, Landroid/content/res/Resources;

    invoke-direct {v3, p2}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 430
    .restart local v3    # "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 431
    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    return-object v3
.end method

.method private getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;)Landroid/content/res/Resources;
    .locals 6
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "impl"    # Landroid/content/res/ResourcesImpl;

    .prologue
    .line 446
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 447
    .local v1, "refCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 448
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 449
    .local v3, "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    .line 450
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 451
    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 450
    if-eqz v4, :cond_0

    .line 452
    invoke-virtual {v2}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v4

    if-ne v4, p2, :cond_0

    .line 456
    return-object v2

    .line 447
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "weakResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    .line 462
    .restart local v2    # "resources":Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 463
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    return-object v2
.end method


# virtual methods
.method public appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "libAsset"    # Ljava/lang/String;

    .prologue
    .line 886
    monitor-enter p0

    .line 889
    :try_start_0
    new-instance v19, Landroid/util/ArrayMap;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArrayMap;-><init>()V

    .line 891
    .local v19, "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 892
    .local v13, "implCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v13, :cond_3

    .line 893
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/ResourcesImpl;

    .line 894
    .local v12, "impl":Landroid/content/res/ResourcesImpl;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/ResourcesKey;

    .line 895
    .local v14, "key":Landroid/content/res/ResourcesKey;
    if-eqz v12, :cond_1

    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 896
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 898
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v1, v1

    .line 897
    :goto_1
    add-int/lit8 v15, v1, 0x1

    .line 899
    .local v15, "newLibAssetCount":I
    new-array v5, v15, [Ljava/lang/String;

    .line 900
    .local v5, "newLibAssets":[Ljava/lang/String;
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v2, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 903
    :cond_0
    add-int/lit8 v1, v15, -0x1

    aput-object p2, v5, v1

    .line 905
    new-instance v1, Landroid/content/res/ResourcesKey;

    .line 906
    iget-object v2, v14, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 907
    iget-object v3, v14, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 908
    iget-object v4, v14, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    .line 910
    iget v6, v14, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 911
    iget-object v7, v14, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 912
    iget-object v8, v14, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 905
    invoke-direct/range {v1 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    .end local v5    # "newLibAssets":[Ljava/lang/String;
    .end local v15    # "newLibAssetCount":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 898
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 918
    .end local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v14    # "key":Landroid/content/res/ResourcesKey;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    monitor-exit p0

    .line 919
    return-void

    .line 923
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 924
    .local v18, "resourcesCount":I
    const/4 v11, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v11, v0, :cond_7

    .line 925
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Resources;

    .line 926
    .local v16, "r":Landroid/content/res/Resources;
    if-eqz v16, :cond_6

    .line 927
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/ResourcesKey;

    .line 928
    .restart local v14    # "key":Landroid/content/res/ResourcesKey;
    if-eqz v14, :cond_6

    .line 929
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v12

    .line 930
    .restart local v12    # "impl":Landroid/content/res/ResourcesImpl;
    if-nez v12, :cond_5

    .line 931
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    .end local v11    # "i":I
    .end local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v13    # "implCount":I
    .end local v14    # "key":Landroid/content/res/ResourcesKey;
    .end local v16    # "r":Landroid/content/res/Resources;
    .end local v18    # "resourcesCount":I
    .end local v19    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 933
    .restart local v11    # "i":I
    .restart local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .restart local v13    # "implCount":I
    .restart local v14    # "key":Landroid/content/res/ResourcesKey;
    .restart local v16    # "r":Landroid/content/res/Resources;
    .restart local v18    # "resourcesCount":I
    .restart local v19    # "updatedResourceKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesImpl;Landroid/content/res/ResourcesKey;>;"
    :cond_5
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 924
    .end local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v14    # "key":Landroid/content/res/ResourcesKey;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 939
    .end local v16    # "r":Landroid/content/res/Resources;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "activityResources$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ResourcesManager$ActivityResources;

    .line 940
    .local v9, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v1, v9, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 941
    .local v17, "resCount":I
    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v11, v0, :cond_8

    .line 942
    iget-object v1, v9, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Resources;

    .line 943
    .restart local v16    # "r":Landroid/content/res/Resources;
    if-eqz v16, :cond_a

    .line 944
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/ResourcesKey;

    .line 945
    .restart local v14    # "key":Landroid/content/res/ResourcesKey;
    if-eqz v14, :cond_a

    .line 946
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v12

    .line 947
    .restart local v12    # "impl":Landroid/content/res/ResourcesImpl;
    if-nez v12, :cond_9

    .line 948
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 950
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 941
    .end local v12    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v14    # "key":Landroid/content/res/ResourcesKey;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v9    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v16    # "r":Landroid/content/res/Resources;
    .end local v17    # "resCount":I
    :cond_b
    monitor-exit p0

    .line 885
    return-void
.end method

.method public applyCompatConfigurationLocked(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 195
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 18
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 800
    :try_start_0
    const-string/jumbo v14, "ResourcesManager#applyConfigurationToResourcesLocked"

    .line 799
    const-wide/16 v16, 0x2000

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-nez v14, :cond_0

    if-nez p2, :cond_0

    .line 805
    const/4 v14, 0x0

    .line 875
    const-wide/16 v16, 0x2000

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 805
    return v14

    .line 807
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v2

    .line 809
    .local v2, "changes":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->clear()V

    .line 810
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 812
    .local v5, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v14, :cond_7

    .line 813
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 820
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v5, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    invoke-static/range {v2 .. v2}, Landroid/app/ResourcesManager$FlymeInjector;->freeCaches(I)V

    .line 822
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 825
    const/4 v13, 0x0

    .line 827
    .local v13, "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v9, v14, -0x1

    .end local v13    # "tmpConfig":Landroid/content/res/Configuration;
    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_b

    .line 828
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/ResourcesKey;

    .line 829
    .local v11, "key":Landroid/content/res/ResourcesKey;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/ResourcesImpl;

    .line 830
    .local v12, "r":Landroid/content/res/ResourcesImpl;
    if-eqz v12, :cond_a

    .line 833
    iget v6, v11, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 834
    .local v6, "displayId":I
    if-nez v6, :cond_8

    const/4 v10, 0x1

    .line 835
    .local v10, "isDefaultDisplay":Z
    :goto_2
    move-object v7, v5

    .line 836
    .local v7, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v11}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v8

    .line 837
    .local v8, "hasOverrideConfiguration":Z
    if-eqz v10, :cond_2

    if-eqz v8, :cond_9

    .line 838
    :cond_2
    if-nez v13, :cond_3

    .line 839
    new-instance v13, Landroid/content/res/Configuration;

    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    .line 841
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 847
    invoke-virtual {v12}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    .line 848
    .local v3, "daj":Landroid/view/DisplayAdjustments;
    if-eqz p2, :cond_4

    .line 849
    new-instance v4, Landroid/view/DisplayAdjustments;

    invoke-direct {v4, v3}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    .line 850
    .end local v3    # "daj":Landroid/view/DisplayAdjustments;
    .local v4, "daj":Landroid/view/DisplayAdjustments;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    move-object v3, v4

    .line 852
    .end local v4    # "daj":Landroid/view/DisplayAdjustments;
    .restart local v3    # "daj":Landroid/view/DisplayAdjustments;
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 854
    if-nez v10, :cond_5

    .line 855
    invoke-static {v7, v13}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 858
    :cond_5
    if-eqz v8, :cond_6

    .line 859
    iget-object v14, v11, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v13, v14}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 861
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v7, v0}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 827
    .end local v3    # "daj":Landroid/view/DisplayAdjustments;
    .end local v6    # "displayId":I
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "hasOverrideConfiguration":Z
    .end local v10    # "isDefaultDisplay":Z
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 814
    .end local v9    # "i":I
    .end local v11    # "key":Landroid/content/res/ResourcesKey;
    .end local v12    # "r":Landroid/content/res/ResourcesImpl;
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 815
    or-int/lit16 v2, v2, 0xd00

    goto :goto_0

    .line 834
    .restart local v6    # "displayId":I
    .restart local v9    # "i":I
    .restart local v11    # "key":Landroid/content/res/ResourcesKey;
    .restart local v12    # "r":Landroid/content/res/ResourcesImpl;
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "isDefaultDisplay":Z
    goto :goto_2

    .line 863
    .restart local v7    # "dm":Landroid/util/DisplayMetrics;
    .restart local v8    # "hasOverrideConfiguration":Z
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v5, v1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 874
    .end local v2    # "changes":I
    .end local v5    # "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "displayId":I
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "hasOverrideConfiguration":Z
    .end local v9    # "i":I
    .end local v10    # "isDefaultDisplay":Z
    .end local v11    # "key":Landroid/content/res/ResourcesKey;
    .end local v12    # "r":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v14

    .line 875
    const-wide/16 v16, 0x2000

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 874
    throw v14

    .line 869
    .restart local v2    # "changes":I
    .restart local v5    # "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    .restart local v9    # "i":I
    .restart local v11    # "key":Landroid/content/res/ResourcesKey;
    .restart local v12    # "r":Landroid/content/res/ResourcesImpl;
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 873
    .end local v11    # "key":Landroid/content/res/ResourcesKey;
    .end local v12    # "r":Landroid/content/res/ResourcesImpl;
    :cond_b
    if-eqz v2, :cond_c

    const/4 v14, 0x1

    .line 875
    :goto_4
    const-wide/16 v16, 0x2000

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 873
    return v14

    :cond_c
    const/4 v14, 0x0

    goto :goto_4
.end method

.method protected createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;
    .locals 10
    .param p1, "key"    # Landroid/content/res/ResourcesKey;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 246
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 251
    .local v0, "assets":Landroid/content/res/AssetManager;
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 252
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 253
    const-string/jumbo v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to add asset path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v9

    .line 258
    :cond_0
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 259
    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v6, v5

    .line 260
    .local v3, "splitResDir":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 261
    const-string/jumbo v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to add split asset path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-object v9

    .line 259
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 267
    .end local v3    # "splitResDir":Ljava/lang/String;
    :cond_2
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 268
    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v1, v6, v5

    .line 269
    .local v1, "idmapPath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    .line 268
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 273
    .end local v1    # "idmapPath":Ljava/lang/String;
    :cond_3
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 274
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v6, v5

    :goto_2
    if-ge v4, v6, :cond_5

    aget-object v2, v5, v4

    .line 275
    .local v2, "libDir":Ljava/lang/String;
    const-string/jumbo v7, ".apk"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 278
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    .line 279
    const-string/jumbo v7, "ResourcesManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Asset path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 280
    const-string/jumbo v9, "\' does not exist or contains no resources."

    .line 279
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 285
    .end local v2    # "libDir":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method public createBaseActivityResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "overlayDirs"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "displayId"    # I
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p9, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 502
    :try_start_0
    const-string/jumbo v3, "ResourcesManager#createBaseActivityResources"

    .line 501
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 503
    new-instance v2, Landroid/content/res/ResourcesKey;

    .line 509
    if-eqz p7, :cond_0

    new-instance v8, Landroid/content/res/Configuration;

    move-object/from16 v0, p7

    invoke-direct {v8, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    :goto_0
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    .line 503
    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 511
    .local v2, "key":Landroid/content/res/ResourcesKey;
    if-eqz p9, :cond_1

    .line 518
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 520
    :try_start_1
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 524
    move-object/from16 v0, p7

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 527
    move-object/from16 v0, p9

    invoke-direct {p0, p1, v2, v0}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 529
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 527
    return-object v3

    .line 509
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 511
    .restart local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p9

    goto :goto_1

    .line 518
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 528
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :catchall_1
    move-exception v3

    .line 529
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 528
    throw v3
.end method

.method public getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .prologue
    const/4 v6, 0x0

    .line 211
    if-eqz p2, :cond_0

    .line 212
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    .line 214
    .local v1, "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 215
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 217
    .local v4, "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    if-eqz v4, :cond_1

    .line 218
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    monitor-exit p0

    .line 220
    return-object v0

    .line 212
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_0
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    goto :goto_0

    .line 223
    .restart local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .restart local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 224
    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v2, :cond_2

    monitor-exit p0

    .line 226
    return-object v6

    .line 228
    :cond_2
    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, p1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 229
    .restart local v0    # "display":Landroid/view/Display;
    if-eqz v0, :cond_3

    .line 230
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    .line 232
    return-object v0

    .line 215
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 153
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    .line 152
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "da"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 161
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 162
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, p1, p2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 163
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 168
    :goto_0
    return-object v1

    .line 166
    :cond_0
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_0
.end method

.method public getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "resDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "overlayDirs"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "displayId"    # I
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p9, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 666
    :try_start_0
    const-string/jumbo v3, "ResourcesManager#getResources"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 667
    new-instance v2, Landroid/content/res/ResourcesKey;

    .line 673
    if-eqz p7, :cond_0

    new-instance v8, Landroid/content/res/Configuration;

    move-object/from16 v0, p7

    invoke-direct {v8, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    :goto_0
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    .line 667
    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 675
    .local v2, "key":Landroid/content/res/ResourcesKey;
    if-eqz p9, :cond_1

    .line 676
    :goto_1
    move-object/from16 v0, p9

    invoke-direct {p0, p1, v2, v0}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 678
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 676
    return-object v3

    .line 673
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 675
    .restart local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p9

    goto :goto_1

    .line 677
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :catchall_0
    move-exception v3

    .line 678
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 677
    throw v3
.end method

.method public invalidatePath(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 127
    monitor-enter p0

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 130
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesKey;

    .line 131
    .local v2, "key":Landroid/content/res/ResourcesKey;
    invoke-virtual {v2, p1}, Landroid/content/res/ResourcesKey;->isPathReferenced(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesImpl;

    .line 133
    .local v3, "res":Landroid/content/res/ResourcesImpl;
    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v3    # "res":Landroid/content/res/ResourcesImpl;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "key":Landroid/content/res/ResourcesKey;
    :cond_2
    const-string/jumbo v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalidated "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " asset managers that referenced "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 126
    return-void

    .line 127
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 384
    monitor-enter p0

    .line 386
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :goto_0
    if-nez v0, :cond_2

    .line 388
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 386
    :cond_0
    const/4 v0, 0x0

    .local v0, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    goto :goto_0

    .line 388
    .end local v0    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 390
    :cond_2
    :try_start_1
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 20
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 695
    :try_start_0
    const-string/jumbo v3, "ResourcesManager#updateResourcesForActivity"

    .line 694
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 696
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 698
    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v11

    .line 700
    .local v11, "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 792
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 702
    return-void

    .line 707
    :cond_0
    :try_start_3
    new-instance v13, Landroid/content/res/Configuration;

    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v13, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 710
    .local v13, "oldConfig":Landroid/content/res/Configuration;
    if-eqz p2, :cond_2

    .line 711
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 729
    :goto_0
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v10, 0x0

    .line 732
    .local v10, "activityHasOverrideConfig":Z
    :goto_1
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 733
    .local v16, "refCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_9

    .line 734
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/ref/WeakReference;

    .line 736
    .local v19, "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/Resources;

    .line 737
    .local v17, "resources":Landroid/content/res/Resources;
    if-nez v17, :cond_4

    .line 733
    :cond_1
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 713
    .end local v10    # "activityHasOverrideConfig":Z
    .end local v12    # "i":I
    .end local v16    # "refCount":I
    .end local v17    # "resources":Landroid/content/res/Resources;
    .end local v19    # "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_2
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->setToDefaults()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 696
    .end local v11    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .end local v13    # "oldConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 791
    :catchall_1
    move-exception v3

    .line 792
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 791
    throw v3

    .line 729
    .restart local v11    # "activityResources":Landroid/app/ResourcesManager$ActivityResources;
    .restart local v13    # "oldConfig":Landroid/content/res/Configuration;
    :cond_3
    const/4 v10, 0x1

    .restart local v10    # "activityHasOverrideConfig":Z
    goto :goto_1

    .line 743
    .restart local v12    # "i":I
    .restart local v16    # "refCount":I
    .restart local v17    # "resources":Landroid/content/res/Resources;
    .restart local v19    # "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_4
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v14

    .line 744
    .local v14, "oldKey":Landroid/content/res/ResourcesKey;
    if-nez v14, :cond_5

    .line 745
    const-string/jumbo v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can\'t find ResourcesKey for resources impl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 746
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    .line 745
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 751
    :cond_5
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    .line 752
    .local v8, "rebasedOverrideConfig":Landroid/content/res/Configuration;
    if-eqz p2, :cond_6

    .line 753
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 756
    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {v14}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 761
    iget-object v3, v14, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 760
    invoke-static {v13, v3}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v15

    .line 762
    .local v15, "overrideOverrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {v8, v15}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 766
    .end local v15    # "overrideOverrideConfig":Landroid/content/res/Configuration;
    :cond_7
    new-instance v2, Landroid/content/res/ResourcesKey;

    iget-object v3, v14, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 767
    iget-object v4, v14, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    .line 768
    iget-object v5, v14, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    iget-object v6, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v7, v14, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 769
    iget-object v9, v14, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 766
    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 776
    .local v2, "newKey":Landroid/content/res/ResourcesKey;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v18

    .line 777
    .local v18, "resourcesImpl":Landroid/content/res/ResourcesImpl;
    if-nez v18, :cond_8

    .line 778
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v18

    .line 779
    if-eqz v18, :cond_8

    .line 780
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_8
    if-eqz v18, :cond_1

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_1

    .line 787
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .end local v2    # "newKey":Landroid/content/res/ResourcesKey;
    .end local v8    # "rebasedOverrideConfig":Landroid/content/res/Configuration;
    .end local v14    # "oldKey":Landroid/content/res/ResourcesKey;
    .end local v17    # "resources":Landroid/content/res/Resources;
    .end local v18    # "resourcesImpl":Landroid/content/res/ResourcesImpl;
    .end local v19    # "weakResRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_9
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 792
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 692
    return-void
.end method
