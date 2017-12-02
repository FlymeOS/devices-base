.class Landroid/accounts/AccountManager$22;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->finishSessionAsUser(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/UserHandle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appInfo:Landroid/os/Bundle;

.field final synthetic val$sessionBundle:Landroid/os/Bundle;

.field final synthetic val$userHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "this$0_1"    # Landroid/accounts/AccountManager;
    .param p3, "$anonymous0"    # Landroid/app/Activity;
    .param p4, "$anonymous1"    # Landroid/os/Handler;
    .param p6, "val$sessionBundle"    # Landroid/os/Bundle;
    .param p7, "val$activity"    # Landroid/app/Activity;
    .param p8, "val$appInfo"    # Landroid/os/Bundle;
    .param p9, "val$userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2922
    .local p5, "$anonymous2":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p2, p0, Landroid/accounts/AccountManager$22;->this$0:Landroid/accounts/AccountManager;

    iput-object p6, p0, Landroid/accounts/AccountManager$22;->val$sessionBundle:Landroid/os/Bundle;

    iput-object p7, p0, Landroid/accounts/AccountManager$22;->val$activity:Landroid/app/Activity;

    iput-object p8, p0, Landroid/accounts/AccountManager$22;->val$appInfo:Landroid/os/Bundle;

    iput-object p9, p0, Landroid/accounts/AccountManager$22;->val$userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, p1, p3, p4, p5}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2925
    iget-object v0, p0, Landroid/accounts/AccountManager$22;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-get3(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v0

    .line 2926
    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 2927
    iget-object v2, p0, Landroid/accounts/AccountManager$22;->val$sessionBundle:Landroid/os/Bundle;

    .line 2928
    iget-object v3, p0, Landroid/accounts/AccountManager$22;->val$activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 2929
    :goto_0
    iget-object v4, p0, Landroid/accounts/AccountManager$22;->val$appInfo:Landroid/os/Bundle;

    .line 2930
    iget-object v5, p0, Landroid/accounts/AccountManager$22;->val$userHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 2925
    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountManager;->finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V

    .line 2924
    return-void

    .line 2928
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
