.class Lcom/android/server/accounts/AccountManagerService$16;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$statusToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "this$0_1"    # Lcom/android/server/accounts/AccountManagerService;
    .param p3, "$anonymous0"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p4, "$anonymous1"    # Landroid/accounts/IAccountManagerResponse;
    .param p5, "$anonymous2"    # Ljava/lang/String;
    .param p6, "$anonymous3"    # Z
    .param p7, "$anonymous4"    # Z
    .param p8, "$anonymous5"    # Ljava/lang/String;
    .param p9, "$anonymous6"    # Z
    .param p10, "val$account"    # Landroid/accounts/Account;
    .param p11, "val$statusToken"    # Ljava/lang/String;

    .prologue
    .line 3344
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$statusToken:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 3346
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 3360
    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3361
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$16;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 3362
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-nez v1, :cond_0

    .line 3363
    return-void

    .line 3366
    :cond_0
    if-nez p1, :cond_1

    .line 3367
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3370
    const-string/jumbo v3, "null bundle"

    .line 3367
    invoke-static {v2, v1, v6, v3}, Lcom/android/server/accounts/AccountManagerService;->-wrap19(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3371
    return-void

    .line 3374
    :cond_1
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3375
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$16;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " calling onResult() on response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    :cond_2
    const-string/jumbo v2, "errorCode"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_3

    .line 3381
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3382
    const-string/jumbo v3, "errorCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3383
    const-string/jumbo v4, "errorMessage"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3381
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->-wrap19(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3384
    return-void

    .line 3386
    :cond_3
    const-string/jumbo v2, "booleanResult"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3387
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3390
    const-string/jumbo v3, "no result in response"

    .line 3387
    invoke-static {v2, v1, v6, v3}, Lcom/android/server/accounts/AccountManagerService;->-wrap19(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3391
    return-void

    .line 3393
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3394
    .local v0, "newResult":Landroid/os/Bundle;
    const-string/jumbo v2, "booleanResult"

    .line 3395
    const-string/jumbo v3, "booleanResult"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3394
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3396
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v2, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->-wrap20(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 3359
    return-void
.end method

.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3355
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$16;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$statusToken:Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 3354
    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 3349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isCredentialsUpdateSuggested"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3350
    const-string/jumbo v1, ", "

    .line 3349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3350
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    .line 3349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
