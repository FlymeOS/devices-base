.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field static final DEBUG_CACHE:Z = false

.field static final DEBUG_STATS:Z = true

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDefaultDisplayMetrics:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/DisplayAdjustments;",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;

.field final mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    .line 54
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mTmpConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .prologue
    .line 57
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 61
    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 138
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 13
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 254
    iget-object v10, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    if-nez v10, :cond_0

    .line 255
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 257
    :cond_0
    iget-object v10, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v10

    if-nez v10, :cond_1

    if-nez p2, :cond_1

    .line 320
    :goto_0
    return v12

    .line 262
    :cond_1
    iget-object v10, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 263
    .local v0, "changes":I
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->flushDisplayMetricsLocked()V

    .line 264
    invoke-virtual {p0, v12}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 266
    .local v1, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_3

    iget-object v10, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v10, p2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 268
    :cond_2
    iput-object p2, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 269
    or-int/lit16 v0, v0, 0xd00

    .line 275
    :cond_3
    iget-object v10, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v10, :cond_4

    .line 276
    iget-object v10, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v10}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 279
    :cond_4
    invoke-static {p1, v1, p2}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 281
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 284
    const/4 v9, 0x0

    .line 286
    .local v9, "tmpConfig":Landroid/content/res/Configuration;
    iget-object v10, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_c

    .line 287
    iget-object v10, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ResourcesKey;

    .line 288
    .local v7, "key":Landroid/content/res/ResourcesKey;
    iget-object v10, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/Resources;

    .line 289
    .local v8, "r":Landroid/content/res/Resources;
    if-eqz v8, :cond_b

    .line 292
    iget v2, v7, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 293
    .local v2, "displayId":I
    if-nez v2, :cond_9

    move v6, v11

    .line 294
    .local v6, "isDefaultDisplay":Z
    :goto_2
    move-object v3, v1

    .line 295
    .local v3, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v7}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v4

    .line 296
    .local v4, "hasOverrideConfiguration":Z
    if-eqz v6, :cond_5

    if-eqz v4, :cond_a

    .line 297
    :cond_5
    if-nez v9, :cond_6

    .line 298
    new-instance v9, Landroid/content/res/Configuration;

    .end local v9    # "tmpConfig":Landroid/content/res/Configuration;
    invoke-direct {v9}, Landroid/content/res/Configuration;-><init>()V

    .line 300
    .restart local v9    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_6
    invoke-virtual {v9, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 301
    if-nez v6, :cond_7

    .line 302
    invoke-virtual {p0, v2}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 303
    invoke-virtual {p0, v3, v9}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 305
    :cond_7
    if-eqz v4, :cond_8

    .line 306
    iget-object v10, v7, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v9, v10}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 308
    :cond_8
    invoke-virtual {v8, v9, v3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 286
    .end local v2    # "displayId":I
    .end local v3    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "hasOverrideConfiguration":Z
    .end local v6    # "isDefaultDisplay":Z
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .restart local v2    # "displayId":I
    :cond_9
    move v6, v12

    .line 293
    goto :goto_2

    .line 310
    .restart local v3    # "dm":Landroid/util/DisplayMetrics;
    .restart local v4    # "hasOverrideConfiguration":Z
    .restart local v6    # "isDefaultDisplay":Z
    :cond_a
    invoke-virtual {v8, p1, v3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_3

    .line 316
    .end local v2    # "displayId":I
    .end local v3    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "hasOverrideConfiguration":Z
    .end local v6    # "isDefaultDisplay":Z
    :cond_b
    iget-object v10, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3

    .line 320
    .end local v7    # "key":Landroid/content/res/ResourcesKey;
    .end local v8    # "r":Landroid/content/res/Resources;
    :cond_c
    if-eqz v0, :cond_d

    :goto_4
    move v12, v11

    goto/16 :goto_0

    :cond_d
    move v11, v12

    goto :goto_4
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 114
    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    .line 115
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 116
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 117
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 118
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 119
    .local v0, "sl":I
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    .line 120
    const/4 v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    .line 121
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 128
    :goto_0
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 129
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 130
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 131
    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 132
    return-void

    .line 124
    :cond_0
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    .line 125
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method public flushDisplayMetricsLocked()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 71
    return-void
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 74
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMetricsLocked(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "daj"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 78
    if-nez p1, :cond_0

    const/4 v4, 0x1

    .line 79
    .local v4, "isDefaultDisplay":Z
    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/DisplayMetrics;

    move-object v2, v5

    .line 80
    .local v2, "dm":Landroid/util/DisplayMetrics;
    :goto_1
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 109
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .local v3, "dm":Ljava/lang/Object;
    :goto_2
    return-object v3

    .line 78
    .end local v3    # "dm":Ljava/lang/Object;
    .end local v4    # "isDefaultDisplay":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 79
    .restart local v4    # "isDefaultDisplay":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 83
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    :cond_2
    new-instance v2, Landroid/util/DisplayMetrics;

    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 86
    .local v1, "displayManager":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_3

    .line 88
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    move-object v3, v2

    .line 89
    .restart local v3    # "dm":Ljava/lang/Object;
    goto :goto_2

    .line 92
    .end local v3    # "dm":Ljava/lang/Object;
    :cond_3
    if-eqz v4, :cond_4

    .line 93
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_4
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 97
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_3
    move-object v3, v2

    .line 109
    .restart local v3    # "dm":Ljava/lang/Object;
    goto :goto_2

    .line 104
    .end local v3    # "dm":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_3
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Landroid/content/res/Resources;
    .locals 23
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "token"    # Landroid/os/IBinder;

    .prologue
    .line 155
    move-object/from16 v0, p7

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 156
    .local v6, "scale":F
    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v3, p1

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FLandroid/os/IBinder;)V

    .line 158
    .local v2, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    .line 163
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/ref/WeakReference;

    .line 164
    .local v22, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v7, v3

    .line 166
    .local v7, "r":Landroid/content/res/Resources;
    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    monitor-exit p0

    move-object v14, v7

    .line 248
    :goto_1
    return-object v14

    .line 164
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 173
    .restart local v7    # "r":Landroid/content/res/Resources;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    new-instance v8, Landroid/content/res/AssetManager;

    invoke-direct {v8}, Landroid/content/res/AssetManager;-><init>()V

    .line 184
    .local v8, "assets":Landroid/content/res/AssetManager;
    if-eqz p1, :cond_2

    .line 185
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 186
    const/4 v14, 0x0

    goto :goto_1

    .line 173
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "assets":Landroid/content/res/AssetManager;
    .end local v22    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 190
    .restart local v7    # "r":Landroid/content/res/Resources;
    .restart local v8    # "assets":Landroid/content/res/AssetManager;
    .restart local v22    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_2
    if-eqz p2, :cond_4

    .line 191
    move-object/from16 v13, p2

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    aget-object v21, v13, v16

    .line 192
    .local v21, "splitResDir":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 193
    const/4 v14, 0x0

    goto :goto_1

    .line 191
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 198
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v19    # "len$":I
    .end local v21    # "splitResDir":Ljava/lang/String;
    :cond_4
    if-eqz p3, :cond_5

    .line 199
    move-object/from16 v13, p3

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v19, v0

    .restart local v19    # "len$":I
    const/16 v16, 0x0

    .restart local v16    # "i$":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    aget-object v17, v13, v16

    .line 200
    .local v17, "idmapPath":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    .line 199
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 204
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v17    # "idmapPath":Ljava/lang/String;
    .end local v19    # "len$":I
    :cond_5
    if-eqz p4, :cond_7

    .line 205
    move-object/from16 v13, p4

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v19, v0

    .restart local v19    # "len$":I
    const/16 v16, 0x0

    .restart local v16    # "i$":I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    aget-object v20, v13, v16

    .line 206
    .local v20, "libDir":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 207
    const-string v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' does not exist or contains no resources."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 214
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v19    # "len$":I
    .end local v20    # "libDir":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 216
    .local v9, "dm":Landroid/util/DisplayMetrics;
    if-nez p5, :cond_b

    const/16 v18, 0x1

    .line 217
    .local v18, "isDefaultDisplay":Z
    :goto_5
    invoke-virtual {v2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v15

    .line 218
    .local v15, "hasOverrideConfig":Z
    if-eqz v18, :cond_8

    if-eqz v15, :cond_c

    .line 219
    :cond_8
    new-instance v10, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 220
    .local v10, "config":Landroid/content/res/Configuration;
    if-nez v18, :cond_9

    .line 221
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 223
    :cond_9
    if-eqz v15, :cond_a

    .line 224
    iget-object v3, v2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 229
    :cond_a
    :goto_6
    new-instance v7, Landroid/content/res/Resources;

    .end local v7    # "r":Landroid/content/res/Resources;
    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v7 .. v12}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 236
    .restart local v7    # "r":Landroid/content/res/Resources;
    monitor-enter p0

    .line 237
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v22, Ljava/lang/ref/WeakReference;

    .line 238
    .restart local v22    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v22, :cond_d

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v14, v3

    .line 239
    .local v14, "existing":Landroid/content/res/Resources;
    :goto_7
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 242
    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    .line 243
    monitor-exit p0

    goto/16 :goto_1

    .line 249
    .end local v14    # "existing":Landroid/content/res/Resources;
    .end local v22    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 216
    .end local v10    # "config":Landroid/content/res/Configuration;
    .end local v15    # "hasOverrideConfig":Z
    .end local v18    # "isDefaultDisplay":Z
    .restart local v22    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_b
    const/16 v18, 0x0

    goto :goto_5

    .line 227
    .restart local v15    # "hasOverrideConfig":Z
    .restart local v18    # "isDefaultDisplay":Z
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .restart local v10    # "config":Landroid/content/res/Configuration;
    goto :goto_6

    .line 238
    :cond_d
    const/4 v14, 0x0

    goto :goto_7

    .line 247
    .restart local v14    # "existing":Landroid/content/res/Resources;
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v14, v7

    goto/16 :goto_1
.end method
