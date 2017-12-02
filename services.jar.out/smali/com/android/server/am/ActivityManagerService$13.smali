.class Lcom/android/server/am/ActivityManagerService$13;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$userHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p3, "val$userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 11063
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$13;->val$userHandle:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 11066
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$13;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$13;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$13;->val$userHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 11065
    return-void
.end method
