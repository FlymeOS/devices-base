.class public final Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlymePackageManagerServiceInjector"
.end annotation


# static fields
.field private static mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFlymeAlreadyDexOpted(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17224
    .local p0, "alreadyDexOpted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "framework"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17225
    .local v0, "frameworkDir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/flyme-res/flyme-res.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 17223
    return-void
.end method

.method static findFlymePersistentPreferredActivityLP(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;ZI)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "debug"    # Z
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZI)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 17406
    .local p4, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 17407
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p4}, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->hasAppSupportAppLinks(Landroid/content/Intent;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17410
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v0

    .line 17408
    .restart local v0    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService;->flymeInvokeMethodFindPersistentPreferredActivityLP(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;ZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    goto :goto_0
.end method

.method static flymeSetup(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 17217
    sput-object p0, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 17218
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    .line 17219
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessInfo:Landroid/content/pm/ResolveInfo;

    .line 17216
    return-void
.end method

.method static getAccessActivityInfo(Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p0, "dst"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 17294
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17295
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    return-object v0

    .line 17297
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static getFlymeEmptyApplicationInfo()Landroid/content/pm/ParceledListSlice;
    .locals 2

    .prologue
    .line 17451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17452
    .local v0, "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method static getFlymeEmptyPackageInfo()Landroid/content/pm/ParceledListSlice;
    .locals 2

    .prologue
    .line 17446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17447
    .local v0, "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method static getFlymeFlags(I)I
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 17395
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17396
    or-int/lit8 p0, p0, 0x40

    .line 17400
    :cond_0
    return p0
.end method

.method static getResolveInfo(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 9
    .param p0, "dst"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 17301
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17302
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v5, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 17303
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_1

    const/high16 v5, 0x10000

    and-int/2addr v5, p3

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v2, p1, p2, v5, p4}, Lcom/android/server/pm/PreferredIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v3

    .line 17304
    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 17305
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PreferredActivity;

    .line 17306
    .local v1, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v5, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v5, v5, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v5, p3, p4}, Lcom/android/server/pm/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 17307
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 17308
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 17309
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 17310
    return-object v4

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    move v5, v6

    .line 17303
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .local v3, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    goto :goto_1

    .line 17314
    .end local v2    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    .end local v3    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_2
    return-object v8
.end method

.method static grantExternalSystemPackagePermission(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/BasePermission;Z)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "bp"    # Lcom/android/server/pm/BasePermission;
    .param p2, "allowed"    # Z

    .prologue
    .line 17374
    if-nez p2, :cond_0

    iget v0, p1, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 17375
    invoke-static {p0}, Lcom/android/server/pm/ExternalSystemPackageManager;->isExternalSystemPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17376
    const/4 p2, 0x1

    .line 17379
    .end local p2    # "allowed":Z
    :cond_0
    return p2
.end method

.method private static hasAppSupportAppLinks(Landroid/content/Intent;Ljava/util/List;)Z
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 17414
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 17415
    :cond_0
    return v6

    .line 17417
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 17418
    .local v0, "data":Landroid/net/Uri;
    if-nez v0, :cond_2

    .line 17419
    return v6

    .line 17421
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 17422
    .local v4, "scheme":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 17423
    return v6

    .line 17425
    :cond_3
    const-string/jumbo v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 17426
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 17427
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 17428
    .local v1, "filter":Landroid/content/IntentFilter;
    if-eqz v1, :cond_5

    .line 17431
    const-string/jumbo v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 17432
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v5

    if-lez v5, :cond_5

    .line 17433
    const/4 v5, 0x1

    return v5

    .line 17437
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_6
    return v6
.end method

.method public static initFlymeDefaultOpService(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 17231
    new-instance v0, Lcom/android/server/pm/PackageDefaultOpService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageDefaultOpService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFlymePackageDOS:Lcom/android/server/pm/PackageDefaultOpService;

    .line 17232
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->verifyVersion(Lcom/android/server/pm/PackageManagerService;)V

    .line 17233
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->updateVersion(Lcom/android/server/pm/PackageManagerService;)V

    .line 17235
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFlymePackageDOS:Lcom/android/server/pm/PackageDefaultOpService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageDefaultOpService;->writeState()V

    .line 17230
    return-void
.end method

.method static isFlymePermissionGranted()Z
    .locals 1

    .prologue
    .line 17442
    const/16 v0, 0x38

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static performFlymeBootDexOpt(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)Z
    .locals 12
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "curr"    # I
    .param p3, "total"    # I

    .prologue
    .line 17352
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17353
    int-to-double v2, p2

    int-to-double v4, p3

    div-double v8, v2, v4

    .line 17354
    .local v8, "percent":D
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v8

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    double-to-int v10, v2

    .line 17357
    .local v10, "percentNum":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 17358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 17359
    sget v4, Lcom/flyme/internal/R$string;->dexopt_apps_apk_percent:I

    .line 17358
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 17359
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v5, v11

    .line 17358
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17359
    const-string/jumbo v3, "flymeTrain"

    .line 17358
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17359
    const-string/jumbo v3, "processTrain"

    .line 17358
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17359
    const/4 v3, 0x1

    .line 17357
    invoke-interface {v0, v2, v3}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17364
    .end local v8    # "percent":D
    .end local v10    # "percentNum":I
    :cond_0
    :goto_0
    move-object v1, p1

    .line 17365
    .local v1, "p":Landroid/content/pm/PackageParser$Package;
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11

    .line 17366
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->flymeGetFieldPackageDexOptimizer()Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v0

    const/4 v2, 0x0

    .line 17367
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 17366
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    .line 17369
    const/4 v0, 0x1

    return v0

    .line 17365
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 17361
    .end local v1    # "p":Landroid/content/pm/PackageParser$Package;
    .restart local v8    # "percent":D
    .restart local v10    # "percentNum":I
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method static replaceResolverName(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 17285
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17286
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17287
    .local v0, "name":Landroid/content/ComponentName;
    return-object v0

    .line 17289
    .end local v0    # "name":Landroid/content/ComponentName;
    :cond_0
    return-object p0
.end method

.method static scanPackageForAccessControl(Lcom/android/server/pm/PackageManagerService;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17318
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 17319
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    const-string/jumbo v1, "com.meizu.app.AccessApplication"

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 17320
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 17321
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 17322
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iput v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 17323
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    const/16 v1, 0x20

    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 17324
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iput v3, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 17325
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mFlymeActivityInfo:Landroid/content/ActivityInfoExt;

    iput-boolean v2, v0, Landroid/content/ActivityInfoExt;->needAccessControl:Z

    .line 17326
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    sget v1, Lcom/flyme/internal/R$style;->Theme_Flyme_Light_AccessControl:I

    iput v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 17327
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    const/16 v1, 0x480

    iput v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 17328
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iput-boolean v3, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 17329
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iput-boolean v3, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 17330
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 17331
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessInfo:Landroid/content/pm/ResolveInfo;

    iput v2, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 17332
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessInfo:Landroid/content/pm/ResolveInfo;

    iput v2, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 17333
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessInfo:Landroid/content/pm/ResolveInfo;

    iput v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 17334
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iput v3, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 17335
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mAccessActivity:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mAccessComponentName:Landroid/content/ComponentName;

    .line 17317
    return-void
.end method

.method static setComponentEnabledSetting(Lcom/android/server/pm/PackageManagerService;)V
    .locals 6
    .param p0, "dst"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 17341
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mz_current_power_mode"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 17342
    .local v2, "powerMode":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 17343
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.meizu.powersave"

    const-string/jumbo v4, "com.meizu.powersave.PowerSaveMode"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17344
    .local v1, "name":Landroid/content/ComponentName;
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17338
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "powerMode":I
    :cond_0
    :goto_0
    return-void

    .line 17346
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static startFlymePackageManagerService(Landroid/content/Context;)Lcom/android/server/pm/FlymePackageManagerService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 17385
    sget-object v1, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->mPms:Lcom/android/server/pm/PackageManagerService;

    if-eqz v1, :cond_0

    .line 17386
    new-instance v0, Lcom/android/server/pm/FlymePackageManagerService;

    sget-object v1, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->mPms:Lcom/android/server/pm/PackageManagerService;

    sget-object v2, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/FlymePackageManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;)V

    .line 17387
    .local v0, "service":Lcom/android/server/pm/FlymePackageManagerService;
    return-object v0

    .line 17389
    .end local v0    # "service":Lcom/android/server/pm/FlymePackageManagerService;
    :cond_0
    return-object v2
.end method

.method private static updateVersion(Lcom/android/server/pm/PackageManagerService;)V
    .locals 8
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 17260
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mFlymePackageDOS:Lcom/android/server/pm/PackageDefaultOpService;

    iget-object v5, v5, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageDefaultOpService$Op;

    .line 17261
    .local v1, "pkg":Lcom/android/server/pm/PackageDefaultOpService$Op;
    iget-boolean v5, v1, Lcom/android/server/pm/PackageDefaultOpService$Op;->activate:Z

    if-nez v5, :cond_0

    .line 17262
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 17263
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/server/pm/PackageDefaultOpService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 17264
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 17265
    iget v5, v1, Lcom/android/server/pm/PackageDefaultOpService$Op;->newVersion:I

    iput v5, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 17266
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 17267
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_1

    .line 17268
    iget v5, v1, Lcom/android/server/pm/PackageDefaultOpService$Op;->newVersion:I

    iput v5, v4, Lcom/android/server/pm/PackageSetting;->versionCode:I

    .line 17271
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/server/pm/PackageDefaultOpService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 17272
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_2

    .line 17273
    iget-object v3, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 17274
    .local v3, "pkgser":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_2

    .line 17275
    iget v5, v1, Lcom/android/server/pm/PackageDefaultOpService$Op;->newVersion:I

    iput v5, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "pkgser":Landroid/content/pm/PackageParser$Package;
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 17262
    .end local v0    # "p":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 17259
    .end local v1    # "pkg":Lcom/android/server/pm/PackageDefaultOpService$Op;
    :cond_3
    return-void
.end method

.method private static verifyVersion(Lcom/android/server/pm/PackageManagerService;)V
    .locals 10
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 17240
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mFlymePackageDOS:Lcom/android/server/pm/PackageDefaultOpService;

    iget-object v1, v1, Lcom/android/server/pm/PackageDefaultOpService;->mPackageList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 17241
    .local v8, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mFlymePackageDOS:Lcom/android/server/pm/PackageDefaultOpService;

    iget-object v1, v1, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 17245
    const/16 v1, 0x2000

    :try_start_0
    invoke-virtual {p0, v8, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 17246
    .local v7, "packInfo":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_0

    .line 17247
    new-instance v0, Lcom/android/server/pm/PackageDefaultOpService$Op;

    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 17248
    iget v3, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    const v4, 0x7fffffff

    const/4 v5, 0x0

    .line 17247
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageDefaultOpService$Op;-><init>(ILjava/lang/String;IIZ)V

    .line 17249
    .local v0, "op":Lcom/android/server/pm/PackageDefaultOpService$Op;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mFlymePackageDOS:Lcom/android/server/pm/PackageDefaultOpService;

    iget-object v1, v1, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17251
    .end local v0    # "op":Lcom/android/server/pm/PackageDefaultOpService$Op;
    .end local v7    # "packInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 17254
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not in list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 17239
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_2
    return-void
.end method
