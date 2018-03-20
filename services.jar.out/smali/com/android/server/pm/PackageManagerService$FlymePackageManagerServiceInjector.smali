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
    .line 21372
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
    .line 21382
    .local p0, "alreadyDexOpted":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "framework"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21383
    .local v0, "frameworkDir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/flyme-res/flyme-res.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 21381
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
    .line 21501
    .local p4, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 21502
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p4}, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->hasAppSupportAppLinks(Landroid/content/Intent;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21505
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v0

    .line 21503
    .restart local v0    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService;->flymeInvokeMethodFindPersistentPreferredActivityLP(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;ZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    goto :goto_0
.end method

.method static flymeSetup(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 21377
    sput-object p0, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 21376
    return-void
.end method

.method static getFlymeEmptyApplicationInfo()Landroid/content/pm/ParceledListSlice;
    .locals 2

    .prologue
    .line 21546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21547
    .local v0, "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method static getFlymeEmptyPackageInfo()Landroid/content/pm/ParceledListSlice;
    .locals 2

    .prologue
    .line 21541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21542
    .local v0, "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method static getFlymeFlags(I)I
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 21490
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21491
    or-int/lit8 p0, p0, 0x40

    .line 21495
    :cond_0
    return p0
.end method

.method static getFlymeUpgradeString(Lcom/android/server/pm/PackageManagerService;II)Ljava/lang/String;
    .locals 9
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "numberOfPackagesVisited"    # I
    .param p2, "numberOfPackagesToDexopt"    # I

    .prologue
    .line 21586
    int-to-double v4, p1

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 21587
    .local v0, "percent":D
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    double-to-int v2, v4

    .line 21588
    .local v2, "percentNum":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/flyme/internal/R$string;->dexopt_apps_apk_percent:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 21589
    const-string/jumbo v4, "flymeTrain"

    .line 21588
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 21589
    const-string/jumbo v4, "processTrain"

    .line 21588
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static getResolveInfo(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .locals 9
    .param p0, "dst"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
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
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p4, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 21451
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 21452
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v5, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 21453
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_1

    const/high16 v5, 0x10000

    and-int/2addr v5, p3

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v2, p1, p2, v5, p5}, Lcom/android/server/pm/PreferredIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v3

    .line 21454
    .local v3, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 21455
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PreferredActivity;

    .line 21456
    .local v1, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v5, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v5, v5, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v5, p3, p5}, Lcom/android/server/pm/PackageManagerService;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 21457
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 21458
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 21459
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 21460
    return-object v4

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v3    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    move v5, v6

    .line 21453
    goto :goto_0

    :cond_1
    move-object v3, v7

    goto :goto_1

    .line 21464
    .end local v2    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    :cond_2
    return-object v7
.end method

.method static grantExternalSystemPackagePermission(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/BasePermission;Z)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "bp"    # Lcom/android/server/pm/BasePermission;
    .param p2, "allowed"    # Z

    .prologue
    .line 21469
    if-nez p2, :cond_0

    iget v0, p1, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 21470
    invoke-static {p0}, Lcom/android/server/pm/ExternalSystemPackageManager;->isExternalSystemPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21471
    const/4 p2, 0x1

    .line 21474
    .end local p2    # "allowed":Z
    :cond_0
    return p2
.end method

.method static grantFlymeRuntimePermission(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PermissionsState;Lcom/android/server/pm/BasePermission;II)I
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "permissionsState"    # Lcom/android/server/pm/PermissionsState;
    .param p2, "bp"    # Lcom/android/server/pm/BasePermission;
    .param p3, "userId"    # I
    .param p4, "flags"    # I

    .prologue
    .line 21552
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21553
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    .line 21554
    or-int/lit8 p4, p4, 0x20

    .line 21556
    :cond_1
    return p4
.end method

.method static grantFlymeRuntimePermission(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PermissionsState;Lcom/android/server/pm/BasePermission;[I)[I
    .locals 5
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "permissionsState"    # Lcom/android/server/pm/PermissionsState;
    .param p2, "bp"    # Lcom/android/server/pm/BasePermission;
    .param p3, "changedRuntimePermissionUserIds"    # [I

    .prologue
    const/16 v4, 0x20

    .line 21561
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21562
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 21563
    .local v0, "currentUserIds":[I
    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 21564
    .local v1, "userId":I
    invoke-virtual {p1, p2, v1}, Lcom/android/server/pm/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    .line 21565
    invoke-virtual {p1, p2, v1, v4, v4}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    .line 21566
    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p3

    .line 21563
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21570
    .end local v0    # "currentUserIds":[I
    .end local v1    # "userId":I
    :cond_1
    return-object p3
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

    .line 21509
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 21510
    :cond_0
    return v6

    .line 21512
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 21513
    .local v0, "data":Landroid/net/Uri;
    if-nez v0, :cond_2

    .line 21514
    return v6

    .line 21516
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 21517
    .local v4, "scheme":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 21518
    return v6

    .line 21520
    :cond_3
    const-string/jumbo v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 21521
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

    .line 21522
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 21523
    .local v1, "filter":Landroid/content/IntentFilter;
    if-eqz v1, :cond_5

    .line 21526
    const-string/jumbo v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 21527
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v5

    if-lez v5, :cond_5

    .line 21528
    const/4 v5, 0x1

    return v5

    .line 21532
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
    .line 21389
    new-instance v0, Lcom/android/server/pm/PackageDefaultOpService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageDefaultOpService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFlymePackageDOS:Lcom/android/server/pm/PackageDefaultOpService;

    .line 21390
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->verifyVersion(Lcom/android/server/pm/PackageManagerService;)V

    .line 21391
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->updateVersion(Lcom/android/server/pm/PackageManagerService;)V

    .line 21393
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mFlymePackageDOS:Lcom/android/server/pm/PackageDefaultOpService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageDefaultOpService;->writeState()V

    .line 21388
    return-void
.end method

.method static isFlymePermissionGranted()Z
    .locals 1

    .prologue
    .line 21537
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

.method static isFlymeSendPackageChangedBroadcast(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z
    .locals 3
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 21575
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 21576
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "com.android.email"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.calendar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21577
    const-string/jumbo v1, "com.meizu.media.camera"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 21576
    if-nez v1, :cond_0

    .line 21577
    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 21576
    if-eqz v1, :cond_1

    .line 21578
    :cond_0
    invoke-virtual {v0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v1

    .line 21576
    if-eqz v1, :cond_1

    .line 21579
    const/4 v1, 0x1

    return v1

    .line 21582
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static replaceResolverName(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 21441
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

    .line 21442
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/internal/app/MzResolverActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21443
    .local v0, "name":Landroid/content/ComponentName;
    return-object v0

    .line 21445
    .end local v0    # "name":Landroid/content/ComponentName;
    :cond_0
    return-object p0
.end method

.method public static startFlymePackageManagerService(Landroid/content/Context;)Lcom/android/server/pm/FlymePackageManagerService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 21480
    sget-object v1, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->mPms:Lcom/android/server/pm/PackageManagerService;

    if-eqz v1, :cond_0

    .line 21481
    new-instance v0, Lcom/android/server/pm/FlymePackageManagerService;

    sget-object v1, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->mPms:Lcom/android/server/pm/PackageManagerService;

    sget-object v2, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/FlymePackageManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;)V

    .line 21482
    .local v0, "service":Lcom/android/server/pm/FlymePackageManagerService;
    return-object v0

    .line 21484
    .end local v0    # "service":Lcom/android/server/pm/FlymePackageManagerService;
    :cond_0
    return-object v2
.end method

.method private static updateVersion(Lcom/android/server/pm/PackageManagerService;)V
    .locals 8
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 21416
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

    .line 21417
    .local v1, "pkg":Lcom/android/server/pm/PackageDefaultOpService$Op;
    iget-boolean v5, v1, Lcom/android/server/pm/PackageDefaultOpService$Op;->activate:Z

    if-nez v5, :cond_0

    .line 21418
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 21419
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/server/pm/PackageDefaultOpService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 21420
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 21421
    iget v5, v1, Lcom/android/server/pm/PackageDefaultOpService$Op;->newVersion:I

    iput v5, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 21422
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 21423
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_1

    .line 21424
    iget v5, v1, Lcom/android/server/pm/PackageDefaultOpService$Op;->newVersion:I

    iput v5, v4, Lcom/android/server/pm/PackageSetting;->versionCode:I

    .line 21427
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/server/pm/PackageDefaultOpService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 21428
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_2

    .line 21429
    iget-object v3, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 21430
    .local v3, "pkgser":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_2

    .line 21431
    iget v5, v1, Lcom/android/server/pm/PackageDefaultOpService$Op;->newVersion:I

    iput v5, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "pkgser":Landroid/content/pm/PackageParser$Package;
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 21418
    .end local v0    # "p":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 21415
    .end local v1    # "pkg":Lcom/android/server/pm/PackageDefaultOpService$Op;
    :cond_3
    return-void
.end method

.method private static verifyVersion(Lcom/android/server/pm/PackageManagerService;)V
    .locals 10
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 21398
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mFlymePackageDOS:Lcom/android/server/pm/PackageDefaultOpService;

    iget-object v1, v1, Lcom/android/server/pm/PackageDefaultOpService;->mPackageList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 21399
    .local v8, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mFlymePackageDOS:Lcom/android/server/pm/PackageDefaultOpService;

    iget-object v1, v1, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 21403
    const/16 v1, 0x2000

    :try_start_0
    invoke-virtual {p0, v8, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 21404
    .local v7, "packInfo":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_0

    .line 21405
    new-instance v0, Lcom/android/server/pm/PackageDefaultOpService$Op;

    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 21406
    iget v3, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    const v4, 0x7fffffff

    const/4 v5, 0x0

    .line 21405
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageDefaultOpService$Op;-><init>(ILjava/lang/String;IIZ)V

    .line 21407
    .local v0, "op":Lcom/android/server/pm/PackageDefaultOpService$Op;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mFlymePackageDOS:Lcom/android/server/pm/PackageDefaultOpService;

    iget-object v1, v1, Lcom/android/server/pm/PackageDefaultOpService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21409
    .end local v0    # "op":Lcom/android/server/pm/PackageDefaultOpService$Op;
    .end local v7    # "packInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 21397
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_1
    return-void
.end method
