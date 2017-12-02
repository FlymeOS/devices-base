.class public abstract Landroid/content/pm/PackageManagerInternal;
.super Ljava/lang/Object;
.source "PackageManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManagerInternal$PackagesProvider;,
        Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public abstract getNameForUid(I)Ljava/lang/String;
.end method

.method public abstract grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V
.end method

.method public abstract grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
.end method

.method public abstract grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V
.end method

.method public abstract isPackageDataProtected(ILjava/lang/String;)Z
.end method

.method public abstract isPermissionsReviewRequired(Ljava/lang/String;I)Z
.end method

.method public abstract setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setKeepUninstalledPackages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
.end method

.method public abstract setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract wasPackageEverLaunched(Ljava/lang/String;I)Z
.end method
