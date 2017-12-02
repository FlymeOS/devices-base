.class abstract Lcom/android/server/accounts/AccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Session"
.end annotation


# instance fields
.field final mAccountName:Ljava/lang/String;

.field final mAccountType:Ljava/lang/String;

.field protected final mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field final mAuthDetailsRequired:Z

.field mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field final mCreationTime:J

.field final mExpectActivityLaunch:Z

.field private mNumErrors:I

.field private mNumRequestContinued:I

.field public mNumResults:I

.field mResponse:Landroid/accounts/IAccountManagerResponse;

.field private final mStripAuthTokenFromResult:Z

.field final mUpdateLastAuthenticatedTime:Z

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "stripAuthTokenFromResult"    # Z
    .param p7, "accountName"    # Ljava/lang/String;
    .param p8, "authDetailsRequired"    # Z

    .prologue
    .line 4134
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 4133
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 4132
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "stripAuthTokenFromResult"    # Z
    .param p7, "accountName"    # Ljava/lang/String;
    .param p8, "authDetailsRequired"    # Z
    .param p9, "updateLastAuthenticatedTime"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 4137
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 4140
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 4121
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 4122
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 4123
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 4125
    iput-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4142
    if-nez p4, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4143
    :cond_0
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 4144
    iput-boolean p6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 4145
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4146
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 4147
    iput-boolean p5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 4148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    .line 4149
    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 4150
    iput-boolean p8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 4151
    iput-boolean p9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    .line 4153
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->-get4(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v2

    monitor-enter v2

    .line 4154
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->-get4(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 4156
    if-eqz p3, :cond_1

    .line 4158
    :try_start_1
    invoke-interface {p3}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4139
    :cond_1
    :goto_0
    return-void

    .line 4153
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 4159
    :catch_0
    move-exception v0

    .line 4160
    .local v0, "e":Landroid/os/RemoteException;
    iput-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4161
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->binderDied()V

    goto :goto_0
.end method

.method private bindToAuthenticator(Ljava/lang/String;)Z
    .locals 8
    .param p1, "authenticatorType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 4439
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->-get2(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v2

    .line 4440
    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    .line 4439
    invoke-interface {v2, v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    .line 4441
    .local v0, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez v0, :cond_1

    .line 4442
    const-string/jumbo v2, "AccountManagerService"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4443
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "there is no authenticator for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4444
    const-string/jumbo v4, ", bailing out"

    .line 4443
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    :cond_0
    return v5

    .line 4449
    :cond_1
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->-wrap4(Lcom/android/server/accounts/AccountManagerService;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4450
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    iget-boolean v2, v2, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    if-eqz v2, :cond_5

    .line 4456
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4457
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4458
    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4459
    const-string/jumbo v2, "AccountManagerService"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4460
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performing bindService to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4462
    :cond_3
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 4463
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 4462
    invoke-virtual {v2, v1, p0, v7, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 4464
    const-string/jumbo v2, "AccountManagerService"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4465
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bindService to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    :cond_4
    return v5

    .line 4451
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Blocking binding to authenticator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4452
    const-string/jumbo v4, " which isn\'t encryption aware"

    .line 4451
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4453
    return v5

    .line 4470
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_6
    return v7
.end method

.method private close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4207
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get4(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 4208
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-get4(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 4210
    return-void

    :cond_0
    monitor-exit v1

    .line 4213
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_1

    .line 4215
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4218
    iput-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4220
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->cancelTimeout()V

    .line 4221
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->unbind()V

    .line 4206
    return-void

    .line 4207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4253
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    .line 4254
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4255
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4252
    :cond_0
    return-void
.end method


# virtual methods
.method bind()V
    .locals 3

    .prologue
    .line 4243
    const-string/jumbo v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4244
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initiating bind to authenticator type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4246
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bindToAuthenticator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4247
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bind attempt failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    const-string/jumbo v0, "bind failure"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 4242
    :cond_1
    return-void
.end method

.method public binderDied()V
    .locals 1

    .prologue
    .line 4226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4227
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 4225
    return-void
.end method

.method public cancelTimeout()V
    .locals 2

    .prologue
    .line 4260
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4259
    return-void
.end method

.method protected checkKeyIntent(ILandroid/content/Intent;)V
    .locals 13
    .param p1, "authUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4189
    .local v2, "bid":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v9, v9, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 4190
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-static {v9}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v4, p2, v10, v9}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 4191
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4192
    .local v6, "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4193
    .local v7, "targetUid":I
    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v9

    if-eqz v9, :cond_0

    .line 4194
    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4195
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4196
    .local v0, "activityName":Ljava/lang/String;
    const-string/jumbo v8, "KEY_INTENT resolved to an Activity (%s) in a package (%s) that does not share a signature with the supplying authenticator (%s)."

    .line 4198
    .local v8, "tmpl":Ljava/lang/String;
    new-instance v9, Ljava/lang/SecurityException;

    .line 4199
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    iget-object v11, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 4198
    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4201
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "targetUid":I
    .end local v8    # "tmpl":Ljava/lang/String;
    :catchall_0
    move-exception v9

    .line 4202
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4201
    throw v9

    .line 4202
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "targetActivityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "targetUid":I
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4186
    return-void
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4167
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-nez v1, :cond_0

    .line 4169
    return-object v2

    .line 4171
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4172
    .local v0, "response":Landroid/accounts/IAccountManagerResponse;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 4173
    return-object v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    .line 4412
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 4413
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 4414
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_2

    .line 4415
    const-string/jumbo v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4416
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4417
    const-string/jumbo v4, " calling onError() on response "

    .line 4416
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4411
    :cond_1
    :goto_0
    return-void

    .line 4421
    :catch_0
    move-exception v0

    .line 4422
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4423
    const-string/jumbo v2, "AccountManagerService"

    const-string/jumbo v3, "Session.onError: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4427
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4428
    const-string/jumbo v2, "AccountManagerService"

    const-string/jumbo v3, "Session.onError: already closed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRequestContinued()V
    .locals 1

    .prologue
    .line 4407
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 4406
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 4310
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 4311
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 4312
    const/4 v7, 0x0

    .line 4313
    .local v7, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_3

    .line 4315
    const-string/jumbo v14, "booleanResult"

    const/4 v15, 0x0

    .line 4314
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 4317
    .local v8, "isSuccessfulConfirmCreds":Z
    const-string/jumbo v14, "authAccount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 4318
    const-string/jumbo v14, "accountType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    .line 4322
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    if-eqz v14, :cond_a

    .line 4323
    if-nez v8, :cond_9

    move v12, v9

    .line 4324
    .local v12, "needUpdate":Z
    :goto_1
    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v14, :cond_3

    .line 4325
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/android/server/accounts/AccountManagerService;->-wrap3(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 4326
    .local v4, "accountPresent":Z
    if-eqz v12, :cond_1

    if-eqz v4, :cond_1

    .line 4327
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    new-instance v15, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->-wrap7(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z

    .line 4329
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    if-eqz v14, :cond_3

    .line 4330
    const-wide/16 v10, -0x1

    .line 4331
    .local v10, "lastAuthenticatedTime":J
    if-eqz v4, :cond_2

    .line 4333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v14, v14, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v14}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 4334
    const-string/jumbo v15, "SELECT last_password_entry_time_millis_epoch FROM accounts WHERE name=? AND type=?"

    .line 4338
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 4339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v17, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aput-object v17, v16, v18

    .line 4332
    invoke-static/range {v14 .. v16}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v10

    .line 4342
    :cond_2
    const-string/jumbo v14, "lastAuthenticatedTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4347
    .end local v4    # "accountPresent":Z
    .end local v8    # "isSuccessfulConfirmCreds":Z
    .end local v10    # "lastAuthenticatedTime":J
    .end local v12    # "needUpdate":Z
    :cond_3
    if-eqz p1, :cond_4

    .line 4348
    const-string/jumbo v14, "intent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    .end local v7    # "intent":Landroid/content/Intent;
    check-cast v7, Landroid/content/Intent;

    .local v7, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_4

    .line 4350
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 4349
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/content/Intent;)V

    .line 4353
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_4
    if-eqz p1, :cond_5

    .line 4354
    const-string/jumbo v14, "authtoken"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 4364
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    if-eqz v14, :cond_c

    if-eqz p1, :cond_c

    .line 4365
    const-string/jumbo v14, "intent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    .line 4364
    if-eqz v14, :cond_c

    .line 4366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4370
    .local v13, "response":Landroid/accounts/IAccountManagerResponse;
    :goto_3
    if-eqz v13, :cond_7

    .line 4372
    if-nez p1, :cond_d

    .line 4373
    :try_start_0
    const-string/jumbo v14, "AccountManagerService"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 4374
    const-string/jumbo v14, "AccountManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4375
    const-string/jumbo v16, " calling onError() on response "

    .line 4374
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4378
    :cond_6
    const-string/jumbo v14, "null bundle returned"

    .line 4377
    const/4 v15, 0x5

    invoke-interface {v13, v15, v14}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4309
    :cond_7
    :goto_4
    return-void

    .line 4317
    .end local v13    # "response":Landroid/accounts/IAccountManagerResponse;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v8    # "isSuccessfulConfirmCreds":Z
    :cond_8
    const/4 v9, 0x0

    .local v9, "isSuccessfulUpdateCredsOrAddAccount":Z
    goto/16 :goto_0

    .line 4323
    .end local v9    # "isSuccessfulUpdateCredsOrAddAccount":Z
    :cond_9
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 4322
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 4355
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "isSuccessfulConfirmCreds":Z
    :cond_b
    const-string/jumbo v14, "authAccount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4356
    .local v3, "accountName":Ljava/lang/String;
    const-string/jumbo v14, "accountType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4357
    .local v5, "accountType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 4358
    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v3, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4359
    .local v2, "account":Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->-wrap9(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 4360
    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v17

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    .line 4359
    invoke-virtual/range {v14 .. v16}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 4368
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v5    # "accountType":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v13

    .restart local v13    # "response":Landroid/accounts/IAccountManagerResponse;
    goto/16 :goto_3

    .line 4380
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    if-eqz v14, :cond_e

    .line 4381
    const-string/jumbo v14, "authtoken"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4383
    :cond_e
    const-string/jumbo v14, "AccountManagerService"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 4384
    const-string/jumbo v14, "AccountManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4385
    const-string/jumbo v16, " calling onResult() on response "

    .line 4384
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    :cond_f
    const-string/jumbo v14, "errorCode"

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    if-lez v14, :cond_10

    .line 4388
    if-nez v7, :cond_10

    .line 4390
    const-string/jumbo v14, "errorCode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 4391
    const-string/jumbo v15, "errorMessage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4390
    invoke-interface {v13, v14, v15}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 4396
    :catch_0
    move-exception v6

    .line 4398
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "AccountManagerService"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 4399
    const-string/jumbo v14, "AccountManagerService"

    const-string/jumbo v15, "failure while notifying response"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 4393
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_10
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 4265
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4267
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4264
    :goto_0
    return-void

    .line 4268
    :catch_0
    move-exception v0

    .line 4270
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "remote exception"

    .line 4269
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 4276
    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 4277
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 4278
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    .line 4281
    :try_start_0
    const-string/jumbo v2, "disconnected"

    .line 4280
    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4275
    :cond_0
    :goto_0
    return-void

    .line 4282
    :catch_0
    move-exception v0

    .line 4283
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4284
    const-string/jumbo v2, "AccountManagerService"

    const-string/jumbo v3, "Session.onServiceDisconnected: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onTimedOut()V
    .locals 4

    .prologue
    .line 4294
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 4295
    .local v1, "response":Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    .line 4298
    :try_start_0
    const-string/jumbo v2, "timeout"

    .line 4297
    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4293
    :cond_0
    :goto_0
    return-void

    .line 4299
    :catch_0
    move-exception v0

    .line 4300
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4301
    const-string/jumbo v2, "AccountManagerService"

    const-string/jumbo v3, "Session.onTimedOut: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected toDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 4235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Session: expectLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4236
    const-string/jumbo v1, ", connected "

    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4236
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4235
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4237
    const-string/jumbo v1, ", stats ("

    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4237
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4237
    const-string/jumbo v1, "/"

    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4237
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4238
    const-string/jumbo v1, "/"

    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4238
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4238
    const-string/jumbo v1, ")"

    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4239
    const-string/jumbo v1, ", lifetime "

    .line 4235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4239
    iget-wide v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 4235
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
