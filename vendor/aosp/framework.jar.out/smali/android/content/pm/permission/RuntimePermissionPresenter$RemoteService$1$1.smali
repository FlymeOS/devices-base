.class Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1$1;
.super Ljava/lang/Object;
.source "RuntimePermissionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->onResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;

.field final synthetic val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

.field final synthetic val$reportedPermissions:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;
    .param p2, "val$callback"    # Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    .prologue
    .line 240
    .local p3, "val$reportedPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1$1;->this$2:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;

    iput-object p2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1$1;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    iput-object p3, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1$1;->val$reportedPermissions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1$1;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1$1;->val$reportedPermissions:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;->onGetAppPermissions(Ljava/util/List;)V

    .line 242
    return-void
.end method
