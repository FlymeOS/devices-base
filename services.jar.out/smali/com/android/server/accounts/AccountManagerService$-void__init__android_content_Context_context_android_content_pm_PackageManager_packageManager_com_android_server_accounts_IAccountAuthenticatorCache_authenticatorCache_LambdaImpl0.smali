.class final synthetic Lcom/android/server/accounts/AccountManagerService$-void__init__android_content_Context_context_android_content_pm_PackageManager_packageManager_com_android_server_accounts_IAccountAuthenticatorCache_authenticatorCache_LambdaImpl0;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__android_content_Context_context_android_content_pm_PackageManager_packageManager_com_android_server_accounts_IAccountAuthenticatorCache_authenticatorCache_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$-void__init__android_content_Context_context_android_content_pm_PackageManager_packageManager_com_android_server_accounts_IAccountAuthenticatorCache_authenticatorCache_LambdaImpl0;->val$this:Lcom/android/server/accounts/AccountManagerService;

    return-void
.end method


# virtual methods
.method public onPermissionsChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$-void__init__android_content_Context_context_android_content_pm_PackageManager_packageManager_com_android_server_accounts_IAccountAuthenticatorCache_authenticatorCache_LambdaImpl0;->val$this:Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->-com_android_server_accounts_AccountManagerService_lambda$1(I)V

    return-void
.end method
