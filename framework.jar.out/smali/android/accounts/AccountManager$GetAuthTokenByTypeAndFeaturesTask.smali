.class Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAuthTokenByTypeAndFeaturesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/AccountManager$AmsTask;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final mAccountType:Ljava/lang/String;

.field final mAddAccountOptions:Landroid/os/Bundle;

.field final mAuthTokenType:Ljava/lang/String;

.field final mFeatures:[Ljava/lang/String;

.field volatile mFuture:Landroid/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final mLoginOptions:Landroid/os/Bundle;

.field final mMyCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNumAccounts:I

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method static synthetic -set0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;I)I
    .locals 0

    iput p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    invoke-virtual {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "features"    # [Ljava/lang/String;
    .param p5, "activityForPrompting"    # Landroid/app/Activity;
    .param p6, "addAccountOptions"    # Landroid/os/Bundle;
    .param p7, "loginOptions"    # Landroid/os/Bundle;
    .param p9, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .local p8, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    .line 2225
    iput-object p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    .line 2229
    invoke-direct {p0, p1, p5, p9, p8}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    .line 2238
    iput-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    .line 2245
    const/4 v0, 0x0

    iput v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    .line 2230
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "account type is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2231
    :cond_0
    iput-object p2, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    .line 2232
    iput-object p3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    .line 2233
    iput-object p4, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    .line 2234
    iput-object p6, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAddAccountOptions:Landroid/os/Bundle;

    .line 2235
    iput-object p7, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mLoginOptions:Landroid/os/Bundle;

    .line 2236
    iput-object p0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    .line 2228
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2249
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    .line 2250
    new-instance v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;

    invoke-direct {v3, p0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;-><init>(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;)V

    .line 2344
    iget-object v4, p0, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    .line 2249
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 2248
    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2350
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    .line 2351
    .local v13, "result":Landroid/os/Bundle;
    iget v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    if-nez v0, :cond_2

    .line 2352
    const-string/jumbo v0, "authAccount"

    invoke-virtual {v13, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2353
    .local v8, "accountName":Ljava/lang/String;
    const-string/jumbo v0, "accountType"

    invoke-virtual {v13, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2354
    .local v9, "accountType":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2355
    :cond_0
    new-instance v0, Landroid/accounts/AuthenticatorException;

    const-string/jumbo v2, "account not in result"

    invoke-direct {v0, v2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    .line 2356
    return-void

    .line 2358
    :cond_1
    const-string/jumbo v0, "accountAccessId"

    invoke-virtual {v13, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2359
    .local v7, "accessId":Ljava/lang/String;
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v8, v9, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    .local v1, "account":Landroid/accounts/Account;
    const/4 v0, 0x1

    iput v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    .line 2361
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v2, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    iget-object v4, p0, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    .line 2362
    iget-object v5, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v6, p0, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    .line 2361
    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 2363
    return-void

    .line 2365
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v7    # "accessId":Ljava/lang/String;
    .end local v8    # "accountName":Ljava/lang/String;
    .end local v9    # "accountType":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v13}, Landroid/accounts/AccountManager$AmsTask;->set(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2348
    .end local v13    # "result":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 2370
    :catch_0
    move-exception v10

    .line 2371
    .local v10, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {p0, v10}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2368
    .end local v10    # "e":Landroid/accounts/AuthenticatorException;
    :catch_1
    move-exception v12

    .line 2369
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {p0, v12}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2366
    .end local v12    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 2367
    .local v11, "e":Landroid/accounts/OperationCanceledException;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_0
.end method
