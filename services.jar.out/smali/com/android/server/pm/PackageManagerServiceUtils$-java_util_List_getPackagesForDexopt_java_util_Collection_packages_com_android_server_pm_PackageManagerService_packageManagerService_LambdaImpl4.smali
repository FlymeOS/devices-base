.class final synthetic Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl4;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl4"
.end annotation


# instance fields
.field private synthetic val$cutoffTime:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl4;->val$cutoffTime:J

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-wide v0, p0, Lcom/android/server/pm/PackageManagerServiceUtils$-java_util_List_getPackagesForDexopt_java_util_Collection_packages_com_android_server_pm_PackageManagerService_packageManagerService_LambdaImpl4;->val$cutoffTime:J

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->-com_android_server_pm_PackageManagerServiceUtils_lambda$6(JLandroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method
