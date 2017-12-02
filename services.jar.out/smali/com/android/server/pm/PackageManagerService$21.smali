.class Lcom/android/server/pm/PackageManagerService$21;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 18276
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMountMode(ILjava/lang/String;)I
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 18279
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18280
    return v1

    .line 18282
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 18283
    return v3

    .line 18285
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 18286
    return v3

    .line 18288
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 18289
    const/4 v0, 0x2

    return v0

    .line 18291
    :cond_3
    const/4 v0, 0x3

    return v0
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 18296
    const/4 v0, 0x1

    return v0
.end method
