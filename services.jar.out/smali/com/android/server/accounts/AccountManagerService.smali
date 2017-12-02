.class public Lcom/android/server/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;,
        Lcom/android/server/accounts/AccountManagerService$-void__init__android_content_Context_context_android_content_pm_PackageManager_packageManager_com_android_server_accounts_IAccountAuthenticatorCache_authenticatorCache_LambdaImpl0;,
        Lcom/android/server/accounts/AccountManagerService$-void_grantAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;,
        Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;,
        Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;,
        Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;,
        Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;,
        Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;,
        Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Lcom/android/server/accounts/AccountManagerService$Lifecycle;,
        Lcom/android/server/accounts/AccountManagerService$MessageHandler;,
        Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;,
        Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$Session;,
        Lcom/android/server/accounts/AccountManagerService$StartAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;,
        Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/IAccountManager$Stub;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field static final ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field private static final ACCOUNTS_LAST_AUTHENTICATE_TIME_EPOCH_MILLIS:Ljava/lang/String; = "last_password_entry_time_millis_epoch"

.field static final ACCOUNTS_NAME:Ljava/lang/String; = "name"

.field private static final ACCOUNTS_PASSWORD:Ljava/lang/String; = "password"

.field private static final ACCOUNTS_PREVIOUS_NAME:Ljava/lang/String; = "previous_name"

.field private static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field private static final ACCOUNTS_TYPE_COUNT:Ljava/lang/String; = "count(type)"

.field private static final ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final AUTHTOKENS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final AUTHTOKENS_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field private static final AUTHTOKENS_ID:Ljava/lang/String; = "_id"

.field private static final AUTHTOKENS_TYPE:Ljava/lang/String; = "type"

.field private static final CE_DATABASE_NAME:Ljava/lang/String; = "accounts_ce.db"

.field private static final CE_DATABASE_VERSION:I = 0xa

.field private static final CE_DB_PREFIX:Ljava/lang/String; = "ceDb."

.field private static final CE_TABLE_ACCOUNTS:Ljava/lang/String; = "ceDb.accounts"

.field private static final CE_TABLE_AUTHTOKENS:Ljava/lang/String; = "ceDb.authtokens"

.field private static final CE_TABLE_EXTRAS:Ljava/lang/String; = "ceDb.extras"

.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

.field private static final COUNT_OF_MATCHING_GRANTS:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

.field private static final COUNT_OF_MATCHING_GRANTS_ANY_TOKEN:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND name=? AND type=?"

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final DE_DATABASE_NAME:Ljava/lang/String; = "accounts_de.db"

.field private static final DE_DATABASE_VERSION:I = 0x1

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field private static final EXTRAS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final EXTRAS_ID:Ljava/lang/String; = "_id"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "key"

.field private static final EXTRAS_VALUE:Ljava/lang/String; = "value"

.field static final GRANTS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final GRANTS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field static final GRANTS_GRANTEE_UID:Ljava/lang/String; = "uid"

.field private static final MAX_DEBUG_DB_SIZE:I = 0x40

.field private static final MESSAGE_COPY_SHARED_ACCOUNT:I = 0x4

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final META_KEY:Ljava/lang/String; = "key"

.field private static final META_KEY_DELIMITER:Ljava/lang/String; = ":"

.field private static final META_KEY_FOR_AUTHENTICATOR_UID_FOR_TYPE_PREFIX:Ljava/lang/String; = "auth_uid_for_type:"

.field private static final META_VALUE:Ljava/lang/String; = "value"

.field private static final PRE_N_DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final PRE_N_DATABASE_VERSION:I = 0x9

.field private static final SELECTION_AUTHTOKENS_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SELECTION_META_BY_AUTHENTICATOR_TYPE:Ljava/lang/String; = "key LIKE ?"

.field private static final SELECTION_USERDATA_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SHARED_ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_AUTHTOKENS:Ljava/lang/String; = "authtokens"

.field private static final TABLE_EXTRAS:Ljava/lang/String; = "extras"

.field static final TABLE_GRANTS:Ljava/lang/String; = "grants"

.field private static final TABLE_META:Ljava/lang/String; = "meta"

.field private static final TABLE_SHARED_ACCOUNTS:Ljava/lang/String; = "shared_accounts"

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/server/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

.field final mContext:Landroid/content/Context;

.field private final mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

.field final mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

.field private final mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_accounts_AccountManagerService_lambda$3(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .locals 0
    .param p0, "listener"    # Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .prologue
    .line 5656
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    .line 0
    return-void
.end method

.method static synthetic -com_android_server_accounts_AccountManagerService_lambda$4(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .locals 0
    .param p0, "listener"    # Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .prologue
    .line 5698
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    .line 0
    return-void
.end method

.method static synthetic -get0(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p5, "authTokenType"    # Ljava/lang/String;
    .param p6, "startInNewTask"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/accounts/AccountManagerService;IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "checkAccess"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(IZ)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "checkAccess"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 0
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountCredentials"    # Landroid/os/Bundle;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "targetUser"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p5, "parentUserId"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    return-void
.end method

.method static synthetic -wrap14(Ljava/io/File;)V
    .locals 0
    .param p0, "dbFile"    # Ljava/io/File;

    .prologue
    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrantsAll()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "callerSigDigest"    # [B
    .param p5, "tokenType"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "expiryMillis"    # J

    .prologue
    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService;->saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 0
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/accounts/AccountManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callingUid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v2

    const-string/jumbo v1, "count(type)"

    aput-object v1, v0, v3

    .line 230
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 236
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v2

    .line 258
    const-string/jumbo v1, "authtoken"

    aput-object v1, v0, v3

    .line 257
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    .line 262
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "key"

    aput-object v1, v0, v2

    const-string/jumbo v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    .line 325
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 326
    new-array v0, v2, [Landroid/accounts/Account;

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/accounts/AccountAuthenticatorCache;

    invoke-direct {v1, p1}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accounts/IAccountAuthenticatorCache;)V

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accounts/IAccountAuthenticatorCache;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "authenticatorCache"    # Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 342
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    .line 269
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 270
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 320
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 321
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 323
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 344
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 345
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 346
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 348
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 350
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .line 351
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p0, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 353
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 355
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 356
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/accounts/AccountManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 385
    .local v3, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/accounts/AccountManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$2;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 394
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 386
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 396
    const-class v0, Landroid/accounts/AccountManagerInternal;

    new-instance v1, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 399
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountManagerService$3;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 411
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 399
    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/android/server/accounts/AccountManagerService$3;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 414
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 415
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$4;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 414
    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v4, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 438
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 439
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$-void__init__android_content_Context_context_android_content_pm_PackageManager_packageManager_com_android_server_accounts_IAccountAuthenticatorCache_authenticatorCache_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$-void__init__android_content_Context_context_android_content_pm_PackageManager_packageManager_com_android_server_accounts_IAccountAuthenticatorCache_authenticatorCache_LambdaImpl0;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 438
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 343
    return-void
.end method

.method private accountExistsCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x0

    .line 2196
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2197
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 2198
    .local v0, "acc":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2199
    const/4 v1, 0x1

    return v1

    .line 2197
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2203
    .end local v0    # "acc":Landroid/accounts/Account;
    :cond_1
    return v3
.end method

.method private addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 21
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "callingUid"    # I

    .prologue
    .line 1290
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1291
    if-nez p2, :cond_0

    .line 1292
    const/4 v2, 0x0

    return v2

    .line 1294
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1295
    const-string/jumbo v2, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Account "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " cannot be added - user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1296
    const-string/jumbo v9, " is locked. callingUid="

    .line 1295
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/4 v2, 0x0

    return v2

    .line 1299
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1300
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1301
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1304
    :try_start_1
    const-string/jumbo v2, "select count(*) from ceDb.accounts WHERE name=? AND type=?"

    .line 1306
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 1303
    invoke-static {v3, v2, v8}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v18

    .line 1307
    .local v18, "numMatches":J
    const-wide/16 v8, 0x0

    cmp-long v2, v18, v8

    if-lez v2, :cond_2

    .line 1308
    const-string/jumbo v2, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertAccountIntoDatabase: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1309
    const-string/jumbo v9, ", skipping since the account already exists"

    .line 1308
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1351
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1310
    const/4 v2, 0x0

    monitor-exit v20

    return v2

    .line 1312
    :cond_2
    :try_start_3
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1313
    .local v17, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string/jumbo v2, "type"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string/jumbo v2, "password"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string/jumbo v2, "ceDb.accounts"

    const-string/jumbo v8, "name"

    move-object/from16 v0, v17

    invoke-virtual {v3, v2, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1317
    .local v4, "accountId":J
    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-gez v2, :cond_3

    .line 1318
    const-string/jumbo v2, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertAccountIntoDatabase: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1319
    const-string/jumbo v9, ", skipping the DB insert failed"

    .line 1318
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1351
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1320
    const/4 v2, 0x0

    monitor-exit v20

    return v2

    .line 1323
    :cond_3
    :try_start_5
    new-instance v17, Landroid/content/ContentValues;

    .end local v17    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1324
    .restart local v17    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1325
    const-string/jumbo v2, "name"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const-string/jumbo v2, "type"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    const-string/jumbo v2, "last_password_entry_time_millis_epoch"

    .line 1328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1327
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1329
    const-string/jumbo v2, "accounts"

    const-string/jumbo v8, "name"

    move-object/from16 v0, v17

    invoke-virtual {v3, v2, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-gez v2, :cond_4

    .line 1330
    const-string/jumbo v2, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertAccountIntoDatabase: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1331
    const-string/jumbo v9, ", skipping the DB insert failed"

    .line 1330
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1351
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1332
    const/4 v2, 0x0

    monitor-exit v20

    return v2

    .line 1334
    :cond_4
    if-eqz p4, :cond_6

    .line 1335
    :try_start_7
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "key$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1336
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "value":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 1337
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-gez v2, :cond_5

    .line 1338
    const-string/jumbo v2, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertAccountIntoDatabase: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1339
    const-string/jumbo v9, ", skipping since insertExtra failed for key "

    .line 1338
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1351
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1340
    const/4 v2, 0x0

    monitor-exit v20

    return v2

    .line 1344
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v16    # "key$iterator":Ljava/util/Iterator;
    :cond_6
    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1346
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get0()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "accounts"

    move-object/from16 v8, p0

    move-object v9, v3

    move-wide v12, v4

    move-object/from16 v14, p1

    move/from16 v15, p5

    invoke-direct/range {v8 .. v15}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1349
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1351
    :try_start_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit v20

    .line 1354
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1355
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V

    .line 1359
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1360
    const/4 v2, 0x1

    return v2

    .line 1350
    .end local v4    # "accountId":J
    .end local v17    # "values":Landroid/content/ContentValues;
    .end local v18    # "numMatches":J
    :catchall_0
    move-exception v2

    .line 1351
    :try_start_b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1350
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1299
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    monitor-exit v20

    throw v2
.end method

.method private addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "parentUserId"    # I

    .prologue
    .line 1376
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 1377
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1378
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne p2, v3, :cond_0

    .line 1379
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    .line 1380
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1381
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 1382
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x4

    .line 1381
    invoke-virtual {v4, v6, p2, v5, p1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1375
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3863
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 3864
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 3865
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3866
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3867
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3868
    const-string/jumbo v0, "type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3869
    const-string/jumbo v0, "shared_accounts"

    const-string/jumbo v2, "name=? AND type=?"

    .line 3870
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v3, v9

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v8, v3, v10

    .line 3869
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3871
    const-string/jumbo v0, "shared_accounts"

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v0, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3872
    .local v4, "accountId":J
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 3873
    const-string/jumbo v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3874
    const-string/jumbo v3, ", skipping the DB insert failed"

    .line 3873
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3875
    return v9

    .line 3877
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shared_accounts"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 3878
    return v10
.end method

.method private calculatePackageSignatureDigest(Ljava/lang/String;)[B
    .locals 10
    .param p1, "callerPkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2535
    :try_start_0
    const-string/jumbo v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2536
    .local v0, "digester":Ljava/security/MessageDigest;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2537
    const/16 v7, 0x40

    .line 2536
    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2538
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v3, v7, v6

    .line 2539
    .local v3, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2538
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2544
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 2545
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not find packageinfo for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    const/4 v0, 0x0

    .line 2548
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    :goto_2
    return-object v5

    .line 2541
    :catch_1
    move-exception v4

    .line 2542
    .local v4, "x":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "AccountManagerService"

    const-string/jumbo v7, "SHA-256 should be available"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2543
    const/4 v0, 0x0

    .local v0, "digester":Ljava/security/MessageDigest;
    goto :goto_1

    .line 2548
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .end local v4    # "x":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    goto :goto_2
.end method

.method private canHaveProfile(I)Z
    .locals 2
    .param p1, "parentUserId"    # I

    .prologue
    .line 1608
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1609
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private canUserModifyAccounts(II)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "callingUid"    # I

    .prologue
    const/4 v2, 0x1

    .line 5566
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5567
    return v2

    .line 5569
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 5570
    const-string/jumbo v1, "no_modify_accounts"

    .line 5569
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5571
    const/4 v0, 0x0

    return v0

    .line 5573
    :cond_1
    return v2
.end method

.method private canUserModifyAccountsForType(ILjava/lang/String;I)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 5578
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5579
    return v7

    .line 5581
    :cond_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 5582
    const-string/jumbo v5, "device_policy"

    .line 5581
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 5583
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v2

    .line 5584
    .local v2, "typesArray":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 5585
    return v7

    .line 5587
    :cond_1
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v1, v2, v3

    .line 5588
    .local v1, "forbiddenType":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5589
    return v4

    .line 5587
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5592
    .end local v1    # "forbiddenType":Ljava/lang/String;
    :cond_3
    return v7
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "checkAccess"    # Z

    .prologue
    .line 474
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string/jumbo v3, "android"

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 475
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 476
    .local v0, "account":Landroid/accounts/Account;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "checkAccess"    # Z

    .prologue
    .line 501
    if-eqz p4, :cond_0

    .line 502
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 501
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    :cond_0
    const-string/jumbo v0, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 503
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 505
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 503
    invoke-virtual {p0, v0, p3, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILjava/lang/String;Landroid/os/UserHandle;)V

    .line 500
    :cond_1
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I
    .param p3, "checkAccess"    # Z

    .prologue
    .line 490
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 492
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 493
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "checkAccess"    # Z

    .prologue
    .line 482
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string/jumbo v3, "android"

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 483
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 484
    .local v0, "account":Landroid/accounts/Account;
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method private static checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 5478
    const-string/jumbo v0, "android.permission.MANAGE_USERS"

    .line 5479
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5478
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5480
    const-string/jumbo v0, "android.permission.CREATE_USERS"

    .line 5481
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5480
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5482
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5477
    :cond_0
    return-void
.end method

.method private static checkManageUsersPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 5471
    const-string/jumbo v0, "android.permission.MANAGE_USERS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 5470
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5473
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5469
    :cond_0
    return-void
.end method

.method private checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 5554
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5556
    const-string/jumbo v1, "caller uid %s cannot access %s accounts"

    .line 5555
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 5557
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 5558
    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 5555
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5559
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5560
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5553
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkUidPermission(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3492
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3494
    .local v2, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 3495
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v4, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 3504
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3496
    return v6

    .line 3498
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 3499
    .local v1, "opCode":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v7, v1, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 3504
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3499
    return v5

    :cond_2
    move v5, v6

    goto :goto_0

    .line 3501
    .end local v1    # "opCode":I
    .end local v4    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 3504
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3506
    return v6

    .line 3503
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 3504
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3503
    throw v5
.end method

.method private compileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 4645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "INSERT OR REPLACE INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4646
    const-string/jumbo v2, " VALUES (?,?,?,?,?,?)"

    .line 4645
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4647
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;

    .line 4644
    return-void
.end method

.method private completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 18
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountCredentials"    # Landroid/os/Bundle;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "targetUser"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p5, "parentUserId"    # I

    .prologue
    .line 1238
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1239
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 1241
    .local v16, "id":J
    :try_start_0
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$6;

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1242
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1241
    const/4 v8, 0x0

    .line 1242
    const/4 v9, 0x0

    .line 1243
    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move-object/from16 v12, p3

    move/from16 v13, p5

    move-object/from16 v14, p2

    .line 1241
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$6;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$6;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1237
    return-void

    .line 1283
    :catchall_0
    move-exception v2

    .line 1284
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1283
    throw v2
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 17
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 2554
    const-string/jumbo v2, "uid"

    const/4 v3, -0x1

    .line 2553
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 2556
    .local v15, "uid":I
    const-string/jumbo v2, "authTokenType"

    .line 2555
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2558
    .local v8, "authTokenType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 2559
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2558
    const v4, 0x104047b

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2560
    .local v14, "titleAndSubtitle":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 2561
    .local v10, "index":I
    move-object v13, v14

    .line 2562
    .local v13, "title":Ljava/lang/String;
    const-string/jumbo v12, ""

    .line 2563
    .local v12, "subtitle":Ljava/lang/String;
    if-lez v10, :cond_0

    .line 2564
    const/4 v2, 0x0

    invoke-virtual {v14, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 2565
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2567
    :cond_0
    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, p4

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 2568
    .local v7, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    .line 2569
    .local v9, "contextForUser":Landroid/content/Context;
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2570
    const v3, 0x108008a

    .line 2569
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 2571
    const-wide/16 v4, 0x0

    .line 2569
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 2573
    const v3, 0x106005b

    .line 2572
    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 2569
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 2576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    .line 2577
    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    move-object/from16 v4, p2

    .line 2576
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2569
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 2579
    .local v11, "n":Landroid/app/Notification;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v15}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2580
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 2579
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v11, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Ljava/lang/String;I)V

    .line 2552
    return-void
.end method

.method private static deleteDbFileWarnIfFailed(Ljava/io/File;)V
    .locals 3
    .param p0, "dbFile"    # Ljava/io/File;

    .prologue
    .line 857
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Database at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not deleted successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_0
    return-void
.end method

.method private doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 19
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .prologue
    .line 5242
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v14

    .line 5244
    .local v14, "identityToken":J
    :try_start_0
    const-string/jumbo v6, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5245
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "doNotification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " intent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5248
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5249
    const-class v6, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 5250
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 5249
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 5248
    if-eqz v6, :cond_1

    .line 5251
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5273
    :goto_0
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5241
    return-void

    .line 5253
    :cond_1
    :try_start_1
    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, p6

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v12

    .line 5254
    .local v12, "contextForUser":Landroid/content/Context;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v16

    .line 5255
    .local v16, "notificationId":Ljava/lang/Integer;
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5258
    const v6, 0x104010e

    invoke-virtual {v12, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 5259
    .local v17, "notificationTitleFormat":Ljava/lang/String;
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 5260
    const-wide/16 v8, 0x0

    .line 5259
    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 5261
    const v7, 0x108008a

    .line 5259
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 5263
    const v7, 0x106005b

    .line 5262
    invoke-virtual {v12, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 5259
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 5264
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 5259
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 5267
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 5268
    new-instance v11, Landroid/os/UserHandle;

    move/from16 v0, p6

    invoke-direct {v11, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 5267
    const/4 v7, 0x0

    const/high16 v9, 0x10000000

    .line 5268
    const/4 v10, 0x0

    move-object/from16 v8, p4

    .line 5266
    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 5259
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    .line 5270
    .local v13, "n":Landroid/app/Notification;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v6, v13, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 5272
    .end local v12    # "contextForUser":Landroid/content/Context;
    .end local v13    # "n":Landroid/app/Notification;
    .end local v16    # "notificationId":Ljava/lang/Integer;
    .end local v17    # "notificationTitleFormat":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 5273
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5272
    throw v6
.end method

.method private dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 20
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "fout"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "isCheckinRequest"    # Z

    .prologue
    .line 5183
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 5184
    :try_start_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 5186
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_3

    .line 5188
    const-string/jumbo v5, "accounts"

    sget-object v6, Lcom/android/server/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 5189
    const-string/jumbo v9, "type"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 5188
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    .line 5191
    .local v14, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5195
    :catchall_0
    move-exception v5

    .line 5196
    if-eqz v14, :cond_0

    .line 5197
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 5195
    :cond_0
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5183
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v14    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    monitor-exit v19

    throw v5

    .line 5196
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v14, :cond_2

    .line 5197
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_1
    monitor-exit v19

    .line 5182
    return-void

    .line 5202
    .end local v14    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 5201
    const/4 v6, 0x0

    .line 5202
    const/4 v7, 0x0

    .line 5201
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v5, v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v13

    .line 5203
    .local v13, "accounts":[Landroid/accounts/Account;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Accounts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5204
    const/4 v5, 0x0

    array-length v6, v13

    :goto_2
    if-ge v5, v6, :cond_4

    aget-object v12, v13, v5

    .line 5205
    .local v12, "account":Landroid/accounts/Account;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5204
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5209
    .end local v12    # "account":Landroid/accounts/Account;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5210
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    move-result-object v5

    .line 5211
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get17()Ljava/lang/String;

    move-result-object v11

    .line 5210
    const/4 v6, 0x0

    .line 5211
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 5210
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 5212
    .restart local v14    # "cursor":Landroid/database/Cursor;
    const-string/jumbo v5, "AccountId, Action_Type, timestamp, UID, TableName, Key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5213
    const-string/jumbo v5, "Accounts History"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5215
    :goto_3
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5218
    const/4 v6, 0x2

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5218
    const-string/jumbo v6, ","

    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5218
    const/4 v6, 0x3

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5218
    const-string/jumbo v6, ","

    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5219
    const/4 v6, 0x4

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5219
    const-string/jumbo v6, ","

    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5219
    const/4 v6, 0x5

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 5221
    :catchall_2
    move-exception v5

    .line 5222
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 5221
    throw v5

    .line 5222
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 5225
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5226
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5227
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 5228
    .local v16, "now":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Active Sessions: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "session$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/accounts/AccountManagerService$Session;

    .line 5230
    .local v15, "session":Lcom/android/server/accounts/AccountManagerService$Session;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    .line 5226
    .end local v15    # "session":Lcom/android/server/accounts/AccountManagerService$Session;
    .end local v16    # "now":J
    .end local v18    # "session$iterator":Ljava/util/Iterator;
    :catchall_3
    move-exception v5

    :try_start_8
    monitor-exit v6

    throw v5

    .restart local v16    # "now":J
    .restart local v18    # "session$iterator":Ljava/util/Iterator;
    :cond_6
    monitor-exit v6

    .line 5234
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5235
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v5, v0, v1, v2, v6}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1
.end method

.method private filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 20
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "unfiltered"    # [Landroid/accounts/Account;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 5750
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v15

    if-eqz v15, :cond_0

    if-nez p1, :cond_1

    .line 5752
    :cond_0
    return-object p2

    .line 5750
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v15

    if-ltz v15, :cond_0

    .line 5751
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v15

    move/from16 v0, p3

    if-eq v0, v15, :cond_0

    .line 5754
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v13

    .line 5755
    .local v13, "user":Landroid/content/pm/UserInfo;
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 5756
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 5760
    .local v8, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 5761
    const v16, 0x1040064

    .line 5760
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5762
    .local v14, "whiteList":Ljava/lang/String;
    const/4 v15, 0x0

    array-length v0, v8

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    aget-object v7, v8, v15

    .line 5763
    .local v7, "packageName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 5764
    return-object p2

    .line 5762
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 5767
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5768
    .local v3, "allowed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v12

    .line 5769
    .local v12, "sharedAccounts":[Landroid/accounts/Account;
    if-eqz v12, :cond_4

    array-length v15, v12

    if-nez v15, :cond_5

    :cond_4
    return-object p2

    .line 5770
    :cond_5
    const-string/jumbo v10, ""

    .line 5774
    .local v10, "requiredAccountType":Ljava/lang/String;
    if-eqz p4, :cond_8

    .line 5775
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v16, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 5776
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_6

    iget-object v15, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v15, :cond_6

    .line 5777
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5791
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    :cond_6
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v16, v15

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    aget-object v2, p2, v16

    .line 5792
    .local v2, "account":Landroid/accounts/Account;
    iget-object v15, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 5793
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5791
    :cond_7
    :goto_3
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto :goto_2

    .line 5781
    .end local v2    # "account":Landroid/accounts/Account;
    :cond_8
    const/4 v15, 0x0

    :try_start_1
    array-length v0, v8

    move/from16 v16, v0

    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    aget-object v7, v8, v15

    .line 5782
    .restart local v7    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 5783
    .restart local v9    # "pi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_9

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 5784
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5781
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 5795
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v2    # "account":Landroid/accounts/Account;
    :cond_a
    const/4 v5, 0x0

    .line 5796
    .local v5, "found":Z
    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v18, v0

    :goto_5
    move/from16 v0, v18

    if-ge v15, v0, :cond_b

    aget-object v11, v12, v15

    .line 5797
    .local v11, "shared":Landroid/accounts/Account;
    invoke-virtual {v11, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 5798
    const/4 v5, 0x1

    .line 5802
    .end local v11    # "shared":Landroid/accounts/Account;
    :cond_b
    if-nez v5, :cond_7

    .line 5803
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5796
    .restart local v11    # "shared":Landroid/accounts/Account;
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 5807
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v5    # "found":Z
    .end local v11    # "shared":Landroid/accounts/Account;
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v4, v15, [Landroid/accounts/Account;

    .line 5808
    .local v4, "filtered":[Landroid/accounts/Account;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5809
    return-object v4

    .line 5811
    .end local v3    # "allowed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v4    # "filtered":[Landroid/accounts/Account;
    .end local v8    # "packages":[Ljava/lang/String;
    .end local v10    # "requiredAccountType":Ljava/lang/String;
    .end local v12    # "sharedAccounts":[Landroid/accounts/Account;
    .end local v14    # "whiteList":Ljava/lang/String;
    :cond_e
    return-object p2

    .line 5789
    .restart local v3    # "allowed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .restart local v8    # "packages":[Ljava/lang/String;
    .restart local v10    # "requiredAccountType":Ljava/lang/String;
    .restart local v12    # "sharedAccounts":[Landroid/accounts/Account;
    .restart local v14    # "whiteList":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4043
    const-string/jumbo v1, "shared_accounts"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    .line 4044
    const-string/jumbo v3, "name=? AND type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 4043
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4046
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4047
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 4051
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4047
    return-wide v0

    .line 4049
    :cond_0
    const-wide/16 v0, -0x1

    .line 4051
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4049
    return-wide v0

    .line 4050
    :catchall_0
    move-exception v0

    .line 4051
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4050
    throw v0
.end method

.method private getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4056
    const-string/jumbo v1, "accounts"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    .line 4057
    const-string/jumbo v3, "name=? AND type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 4056
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4059
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4060
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 4064
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4060
    return-wide v0

    .line 4062
    :cond_0
    const-wide/16 v0, -0x1

    .line 4064
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4062
    return-wide v0

    .line 4063
    :catchall_0
    move-exception v0

    .line 4064
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4063
    throw v0
.end method

.method private getAccounts([I)[Landroid/accounts/AccountAndUser;
    .locals 12
    .param p1, "userIds"    # [I

    .prologue
    .line 3752
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 3753
    .local v3, "runningAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/AccountAndUser;>;"
    const/4 v6, 0x0

    array-length v7, p1

    :goto_0
    if-ge v6, v7, :cond_2

    aget v5, p1, v6

    .line 3754
    .local v5, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 3755
    .local v4, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-nez v4, :cond_0

    .line 3753
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3756
    :cond_0
    iget-object v8, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3758
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3757
    const/4 v10, 0x0

    .line 3758
    const/4 v11, 0x0

    .line 3757
    invoke-virtual {p0, v4, v10, v9, v11}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 3759
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    array-length v9, v1

    if-ge v0, v9, :cond_1

    .line 3760
    new-instance v9, Landroid/accounts/AccountAndUser;

    aget-object v10, v1, v0

    invoke-direct {v9, v10, v5}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3759
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    monitor-exit v8

    goto :goto_1

    .line 3756
    .end local v0    # "a":I
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6

    .line 3765
    .end local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v5    # "userId":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [Landroid/accounts/AccountAndUser;

    .line 3766
    .local v2, "accountsArray":[Landroid/accounts/AccountAndUser;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/accounts/AccountAndUser;

    return-object v6
.end method

.method private getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "packageUid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 3782
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3784
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    if-eq p2, v5, :cond_0

    .line 3785
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-eq v1, v5, :cond_0

    .line 3786
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 3787
    const-string/jumbo v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 3786
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 3789
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "User "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3790
    const-string/jumbo v7, " trying to get account for "

    .line 3789
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3793
    :cond_0
    const-string/jumbo v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3794
    const-string/jumbo v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAccounts: accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3795
    const-string/jumbo v7, ", caller\'s uid "

    .line 3794
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3795
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3794
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3796
    const-string/jumbo v7, ", pid "

    .line 3794
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3796
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 3794
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    :cond_1
    const/4 v5, -0x1

    if-eq p4, v5, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v1, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3801
    move v1, p4

    .line 3802
    move-object p5, p3

    .line 3805
    :cond_2
    invoke-direct {p0, v1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3807
    .local v4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 3808
    if-eqz p1, :cond_3

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3810
    :cond_3
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3812
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3813
    .restart local v4    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3817
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 3819
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3820
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, v1, p3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 3826
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3820
    return-object v5

    .line 3809
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "identityToken":J
    :cond_5
    new-array v5, v8, [Landroid/accounts/Account;

    return-object v5

    .line 3825
    .restart local v2    # "identityToken":J
    :catchall_0
    move-exception v5

    .line 3826
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3825
    throw v5
.end method

.method private getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    .locals 8
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroid/accounts/Account;"
        }
    .end annotation

    .prologue
    .line 3836
    .local p4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3837
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3838
    .local v3, "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "visibleType$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3839
    .local v4, "visibleType":Ljava/lang/String;
    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 3841
    .local v0, "accountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 3842
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3836
    .end local v0    # "accountsForType":[Landroid/accounts/Account;
    .end local v3    # "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v4    # "visibleType":Ljava/lang/String;
    .end local v5    # "visibleType$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 3845
    .restart local v3    # "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .restart local v5    # "visibleType$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [Landroid/accounts/Account;

    .line 3846
    .local v2, "result":[Landroid/accounts/Account;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 3847
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    aput-object v6, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3846
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v7

    .line 3849
    return-object v2
.end method

.method private static getAuthenticatorTypeAndUIDForUser(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    .line 728
    .local v0, "authCache":Lcom/android/server/accounts/AccountAuthenticatorCache;
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method

.method private static getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;
    .locals 5
    .param p0, "authCache"    # Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/IAccountAuthenticatorCache;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 735
    .local v0, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 737
    .local v1, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 739
    .end local v1    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_0
    return-object v0
.end method

.method private getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1063
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v5, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->updateServices(I)V

    .line 1065
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v5, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v2

    .line 1067
    .local v2, "authenticatorCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Landroid/accounts/AuthenticatorDescription;

    .line 1068
    .local v4, "types":[Landroid/accounts/AuthenticatorDescription;
    const/4 v3, 0x0

    .line 1069
    .local v3, "i":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "authenticator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1071
    .local v0, "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/accounts/AuthenticatorDescription;

    aput-object v5, v4, v3

    .line 1072
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1074
    .end local v0    # "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_0
    return-object v4
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 5956
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 5957
    :catch_0
    move-exception v0

    .line 5959
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 2608
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2609
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 2611
    :try_start_0
    new-instance v2, Landroid/util/Pair;

    .line 2612
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2611
    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2613
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2614
    .local v1, "id":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 2615
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2616
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 2619
    return-object v1

    .line 2609
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getDebugTableInsertionPoint(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4663
    const-string/jumbo v2, "SELECT "

    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4663
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get14()Ljava/lang/String;

    move-result-object v2

    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4664
    const-string/jumbo v2, " FROM "

    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4664
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    move-result-object v2

    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4665
    const-string/jumbo v2, " ORDER BY "

    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4666
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get17()Ljava/lang/String;

    move-result-object v2

    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4666
    const-string/jumbo v2, ","

    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4666
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get14()Ljava/lang/String;

    move-result-object v2

    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4667
    const-string/jumbo v2, " LIMIT 1"

    .line 4662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4669
    .local v0, "queryCountDebugDbRows":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private getDebugTableRowCount(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT COUNT(*) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4652
    .local v0, "queryCountDebugDbRows":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "accountId"    # J
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4069
    const-string/jumbo v1, "ceDb.extras"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    .line 4070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "accounts_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "key"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4071
    new-array v4, v4, [Ljava/lang/String;

    aput-object p4, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 4069
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4073
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4074
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 4078
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4074
    return-wide v0

    .line 4076
    :cond_0
    const-wide/16 v0, -0x1

    .line 4078
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4076
    return-wide v0

    .line 4077
    :catchall_0
    move-exception v0

    .line 4078
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4077
    throw v0
.end method

.method private getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 3
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 2624
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get5(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 2625
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get5(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2626
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2627
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2628
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get5(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 2631
    return-object v0

    .line 2624
    .end local v0    # "id":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getSingleton()Lcom/android/server/accounts/AccountManagerService;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    return-object v0
.end method

.method private getTypesForCaller(IIZ)Ljava/util/List;
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "isOtherwisePermitted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5440
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5441
    .local v2, "managedAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5444
    .local v0, "identityToken":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v7, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 5446
    .local v5, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5448
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 5450
    .local v3, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v8, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v7, v8, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v6

    .line 5451
    .local v6, "sigChk":I
    if-nez p3, :cond_1

    if-nez v6, :cond_0

    .line 5452
    :cond_1
    iget-object v7, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v7, Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5445
    .end local v3    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v4    # "serviceInfo$iterator":Ljava/util/Iterator;
    .end local v5    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v6    # "sigChk":I
    :catchall_0
    move-exception v7

    .line 5446
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5445
    throw v7

    .line 5455
    .restart local v4    # "serviceInfo$iterator":Ljava/util/Iterator;
    .restart local v5    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    :cond_2
    return-object v2
.end method

.method private getTypesManagedByCaller(II)Ljava/util/List;
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5435
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5429
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.GET_ACCOUNTS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5430
    const-string/jumbo v2, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 5429
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    .line 5431
    .local v0, "isPermitted":Z
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 712
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 713
    const/16 v5, 0x2000

    .line 712
    invoke-virtual {v4, v5, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v3

    .line 714
    .local v3, "pkgsWithData":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 715
    .local v0, "knownUids":Landroid/util/SparseBooleanArray;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkgInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 716
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 717
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 718
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 721
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v0
.end method

.method private getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 1

    .prologue
    .line 743
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private handleIncomingUser(I)I
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 5335
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5336
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v6, ""

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v3, p1

    .line 5335
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 5337
    :catch_0
    move-exception v8

    .line 5340
    .local v8, "re":Landroid/os/RemoteException;
    return p1
.end method

.method private hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3470
    if-nez p2, :cond_1

    .line 3471
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 3472
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3473
    return v3

    .line 3477
    :cond_0
    aget-object p2, v0, v3

    .line 3482
    .end local v0    # "packageNames":[Ljava/lang/String;
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, p1, v4, p3, v2}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3483
    return v1

    .line 3487
    :cond_2
    const-string/jumbo v2, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-direct {p0, v2, p3, p2}, Lcom/android/server/accounts/AccountManagerService;->checkUidPermission(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3488
    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    invoke-direct {p0, v1, p3, p2}, Lcom/android/server/accounts/AccountManagerService;->checkUidPermission(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 3487
    :cond_3
    return v1
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 5489
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_0

    .line 5490
    return v5

    .line 5492
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 5493
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5494
    :try_start_0
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 5499
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p2, :cond_2

    .line 5500
    const-string/jumbo v4, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    .line 5501
    .local v4, "query":Ljava/lang/String;
    const/4 v7, 0x4

    new-array v1, v7, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v1, v8

    const/4 v7, 0x1

    aput-object p2, v1, v7

    .line 5502
    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v1, v8

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v7, v1, v8

    .line 5508
    .local v1, "args":[Ljava/lang/String;
    :goto_0
    invoke-static {v2, v4, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    move v3, v5

    .line 5509
    .local v3, "permissionGranted":Z
    :cond_1
    if-nez v3, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5512
    const-string/jumbo v7, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "no credentials permission for usage of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5513
    const-string/jumbo v9, " by uid "

    .line 5512
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5514
    const-string/jumbo v9, " but ignoring since device is in test harness."

    .line 5512
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 5515
    return v5

    .line 5504
    .end local v1    # "args":[Ljava/lang/String;
    .end local v3    # "permissionGranted":Z
    .end local v4    # "query":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND name=? AND type=?"

    .line 5505
    .restart local v4    # "query":Ljava/lang/String;
    const/4 v7, 0x3

    new-array v1, v7, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v1, v8

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v1, v8

    .line 5506
    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v1, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5505
    .restart local v1    # "args":[Ljava/lang/String;
    goto :goto_0

    .restart local v3    # "permissionGranted":Z
    :cond_3
    monitor-exit v6

    .line 5517
    return v3

    .line 5493
    .end local v1    # "args":[Ljava/lang/String;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "permissionGranted":Z
    .end local v4    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private initializeDebugDbSizeAndCompileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 4634
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDebugTableRowCount(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 4635
    .local v0, "size":I
    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    .line 4637
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDebugTableInsertionPoint(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {p2, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    .line 4641
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->compileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 4632
    return-void

    .line 4639
    :cond_0
    invoke-static {p2, v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    goto :goto_0
.end method

.method private insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v4, 0x0

    .line 5735
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 5736
    .local v0, "accountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_1

    array-length v2, v0

    .line 5737
    .local v2, "oldLength":I
    :goto_0
    add-int/lit8 v5, v2, 0x1

    new-array v1, v5, [Landroid/accounts/Account;

    .line 5738
    .local v1, "newAccountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 5739
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5741
    :cond_0
    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v3

    .line 5743
    .local v3, "token":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, p2, v3}, Landroid/accounts/Account;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 5744
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5745
    aget-object v4, v1, v2

    return-object v4

    .end local v1    # "newAccountsForType":[Landroid/accounts/Account;
    .end local v2    # "oldLength":I
    .end local v3    # "token":Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 5736
    goto :goto_0

    .line 5742
    .restart local v1    # "newAccountsForType":[Landroid/accounts/Account;
    .restart local v2    # "oldLength":I
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "token":Ljava/lang/String;
    goto :goto_1
.end method

.method private insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "accountId"    # J
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 1389
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1390
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string/jumbo v1, "accounts_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1392
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string/jumbo v1, "ceDb.extras"

    const-string/jumbo v2, "key"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method private installNotification(ILandroid/app/Notification;Ljava/lang/String;I)V
    .locals 12
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 5285
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v10

    .line 5287
    .local v10, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5290
    .local v0, "notificationManager":Landroid/app/INotificationManager;
    const/4 v1, 0x1

    :try_start_1
    new-array v6, v1, [I

    .line 5289
    const/4 v3, 0x0

    move-object v1, p3

    move-object v2, p3

    move v4, p1

    move-object v5, p2

    move/from16 v7, p4

    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5295
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5284
    return-void

    .line 5294
    .end local v0    # "notificationManager":Landroid/app/INotificationManager;
    :catchall_0
    move-exception v1

    .line 5295
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5294
    throw v1

    .line 5291
    .restart local v0    # "notificationManager":Landroid/app/INotificationManager;
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1916
    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 1917
    :cond_0
    return-void

    .line 1920
    :cond_1
    const-string/jumbo v0, "SELECT ceDb.authtokens._id, ceDb.accounts.name, ceDb.authtokens.type FROM ceDb.accounts JOIN ceDb.authtokens ON ceDb.accounts._id = ceDb.authtokens.accounts_id WHERE ceDb.authtokens.authtoken = ? AND ceDb.accounts.type = ?"

    .line 1929
    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v2

    aput-object p3, v1, v3

    .line 1919
    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1931
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1932
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1933
    .local v8, "authTokenId":J
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1934
    .local v6, "accountName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1935
    .local v4, "authTokenType":Ljava/lang/String;
    const-string/jumbo v0, "ceDb.authtokens"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1939
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v6, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1936
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1943
    .end local v4    # "authTokenType":Ljava/lang/String;
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v8    # "authTokenId":J
    :catchall_0
    move-exception v0

    .line 1944
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1943
    throw v0

    .line 1944
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1915
    return-void
.end method

.method private invalidateCustomTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .prologue
    .line 1907
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 1908
    :cond_0
    return-void

    .line 1911
    :cond_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    return-void
.end method

.method private isAccountManagedByCaller(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .prologue
    .line 5419
    if-nez p1, :cond_0

    .line 5420
    const/4 v0, 0x0

    return v0

    .line 5422
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 5459
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5460
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 5461
    .local v0, "account":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5462
    const/4 v1, 0x1

    return v1

    .line 5460
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5466
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    return v3
.end method

.method private isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 5410
    if-nez p1, :cond_0

    .line 5411
    const/4 v0, 0x0

    return v0

    .line 5413
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCrossUser(II)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1078
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p2, v1, :cond_0

    .line 1079
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 1081
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1080
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1078
    :cond_0
    return v0
.end method

.method private isLocalUnlockedUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1364
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1365
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1364
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private varargs isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 8
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 5318
    array-length v4, p3

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v1, p3, v2

    .line 5319
    .local v1, "perm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 5320
    const-string/jumbo v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5321
    const-string/jumbo v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  caller uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5323
    :cond_0
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 5324
    .local v0, "opCode":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v5, v0, p2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 5326
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 5318
    .end local v0    # "opCode":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5330
    .end local v1    # "perm":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method private isPrivileged(I)Z
    .locals 11
    .param p1, "callingUid"    # I

    .prologue
    const/4 v7, 0x0

    .line 5344
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5348
    .local v0, "callingUserId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 5349
    const-string/jumbo v8, "android"

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v10, 0x0

    .line 5348
    invoke-virtual {v6, v8, v10, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 5354
    .local v5, "userPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 5355
    .local v4, "packages":[Ljava/lang/String;
    array-length v8, v4

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v2, v4, v6

    .line 5357
    .local v2, "name":Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v5, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 5358
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 5359
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_0

    .line 5361
    const/4 v6, 0x1

    return v6

    .line 5350
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v5    # "userPackageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 5351
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7

    .line 5363
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "packages":[Ljava/lang/String;
    .restart local v5    # "userPackageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v1

    .line 5364
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7

    .line 5355
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5367
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return v7
.end method

.method private isProfileOwner(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 5597
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 5598
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_0

    .line 5599
    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v1

    .line 5598
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSystemUid(I)Z
    .locals 13
    .param p1, "callingUid"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 5522
    const/4 v5, 0x0

    .line 5523
    .local v5, "packages":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5525
    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 5527
    .local v5, "packages":[Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5529
    if-eqz v5, :cond_1

    .line 5530
    array-length v8, v5

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v1, v5, v6

    .line 5532
    .local v1, "name":Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 5533
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    .line 5534
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    .line 5536
    return v12

    .line 5526
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v5, "packages":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 5527
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5526
    throw v6

    .line 5538
    .restart local v1    # "name":Ljava/lang/String;
    .local v5, "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 5539
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v9, "AccountManagerService"

    const-string/jumbo v10, "Could not find package [%s]"

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v1, v11, v7

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5530
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5543
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No known packages with uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5545
    :cond_2
    return v7
.end method

.method private logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "accountId"    # J
    .param p6, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 4606
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4605
    return-void
.end method

.method private logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "accountId"    # J
    .param p6, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p7, "callingUid"    # I

    .prologue
    .line 4614
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4615
    .local v0, "logStatement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4616
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 4617
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get18()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 4618
    int-to-long v2, p7

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4619
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 4620
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4621
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4622
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 4623
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x40

    invoke-static {p6, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    .line 4613
    return-void
.end method

.method private logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;

    .prologue
    .line 4592
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4593
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 4591
    return-void
.end method

.method private logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 4597
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4598
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4596
    return-void
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p5, "authTokenType"    # Ljava/lang/String;
    .param p6, "startInNewTask"    # Z

    .prologue
    .line 2587
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2589
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p6, :cond_0

    .line 2593
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2595
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p5, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2596
    if-eqz p2, :cond_1

    .line 2595
    .end local p2    # "packageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2597
    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2598
    const-string/jumbo v1, "authTokenType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2599
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2600
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2602
    return-object v0

    .line 2596
    .restart local p2    # "packageName":Ljava/lang/String;
    :cond_1
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method private newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .prologue
    .line 3548
    new-instance v7, Landroid/accounts/AccountAuthenticatorResponse;

    new-instance v0, Lcom/android/server/accounts/AccountManagerService$18;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService$18;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-direct {v7, v0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    .line 3574
    const-string/jumbo v5, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v7

    .line 3547
    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    .line 2239
    if-nez p2, :cond_0

    .line 2240
    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "the result is unexpectedly null"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2242
    :cond_0
    const-string/jumbo v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2243
    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2238
    :cond_2
    :goto_0
    return-void

    .line 2248
    :catch_0
    move-exception v0

    .line 2251
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2252
    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 826
    const-string/jumbo v6, "android.intent.extra.user_handle"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 827
    .local v4, "userId":I
    const/4 v6, 0x1

    if-ge v4, v6, :cond_0

    return-void

    .line 831
    :cond_0
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v7

    .line 832
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 833
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 834
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 835
    .local v5, "userUnlocked":Z
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 837
    if-eqz v0, :cond_1

    .line 838
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7

    .line 839
    :try_start_1
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    .line 842
    :cond_1
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Removing database files for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getDeDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 845
    .local v2, "dbFile":Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

    .line 847
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v3

    .line 848
    .local v3, "fbeEnabled":Z
    if-eqz v3, :cond_2

    if-eqz v5, :cond_3

    .line 849
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getCeDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 850
    .local v1, "ceDb":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 851
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

    .line 825
    .end local v1    # "ceDb":Ljava/io/File;
    :cond_3
    return-void

    .line 831
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "dbFile":Ljava/io/File;
    .end local v3    # "fbeEnabled":Z
    .end local v5    # "userUnlocked":Z
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 838
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v5    # "userUnlocked":Z
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 5372
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 5373
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5374
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " granted calling uid is system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5376
    :cond_0
    return v3

    .line 5379
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isPrivileged(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5380
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5381
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " granted calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5382
    const-string/jumbo v2, " privileged"

    .line 5381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5384
    :cond_2
    return v3

    .line 5386
    :cond_3
    if-eqz p1, :cond_5

    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5387
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5388
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " granted calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5389
    const-string/jumbo v2, " manages the account"

    .line 5388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    :cond_4
    return v3

    .line 5393
    :cond_5
    if-eqz p1, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5394
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5395
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " granted calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5396
    const-string/jumbo v2, " user granted access"

    .line 5395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5398
    :cond_6
    return v3

    .line 5401
    :cond_7
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5402
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not granted for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5405
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 12
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 802
    iget-object v11, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v11

    .line 803
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 804
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "grants"

    .line 805
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "uid"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 806
    const-string/jumbo v5, "uid"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 804
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 808
    .local v8, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 809
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 810
    .local v10, "uid":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    .line 811
    .local v9, "packageExists":Z
    :goto_1
    if-nez v9, :cond_0

    .line 814
    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleting grants for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 815
    const-string/jumbo v3, " because its package is no longer installed"

    .line 814
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string/jumbo v1, "grants"

    const-string/jumbo v2, "uid=?"

    .line 817
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 816
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 819
    .end local v9    # "packageExists":Z
    .end local v10    # "uid":I
    :catchall_0
    move-exception v1

    .line 820
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 819
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 802
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit v11

    throw v1

    .line 810
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "uid":I
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "packageExists":Z
    goto :goto_1

    .line 820
    .end local v9    # "packageExists":Z
    .end local v10    # "uid":I
    :cond_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v11

    .line 801
    return-void
.end method

.method private purgeOldGrantsAll()V
    .locals 3

    .prologue
    .line 794
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 795
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    .line 793
    return-void

    .line 794
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 5
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v4, 0x0

    .line 929
    if-nez p2, :cond_0

    .line 930
    return-object v4

    .line 932
    :cond_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 933
    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Password is not available - user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " data is locked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    return-object v4

    .line 937
    :cond_1
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 938
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 939
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 940
    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 939
    invoke-static {v0, v1, v3}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->findAccountPasswordByNameAndType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 937
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 13
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 963
    if-nez p2, :cond_0

    .line 964
    const/4 v1, 0x0

    return-object v1

    .line 966
    :cond_0
    iget-object v12, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v12

    .line 967
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/atomic/AtomicReference;

    .line 968
    .local v10, "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    if-nez v10, :cond_2

    .line 969
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 971
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "accounts"

    .line 972
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "previous_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 973
    const-string/jumbo v3, "name=? AND type=?"

    .line 974
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 975
    const/4 v5, 0x0

    .line 976
    const/4 v6, 0x0

    .line 977
    const/4 v7, 0x0

    .line 970
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 979
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 980
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 981
    .local v9, "previousName":Ljava/lang/String;
    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v11, v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 982
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .local v11, "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :try_start_2
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 988
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v12

    .line 983
    return-object v9

    .line 988
    .end local v9    # "previousName":Ljava/lang/String;
    .end local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :cond_1
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 985
    const/4 v1, 0x0

    monitor-exit v12

    return-object v1

    .line 987
    :catchall_0
    move-exception v1

    .line 988
    :goto_0
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 987
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 966
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    monitor-exit v12

    throw v1

    .line 991
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :cond_2
    :try_start_6
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v12

    return-object v1

    .line 987
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "previousName":Ljava/lang/String;
    .restart local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    move-object v10, v11

    .end local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method private removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 5707
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/accounts/Account;

    .line 5708
    .local v3, "oldAccountsForType":[Landroid/accounts/Account;
    if-eqz v3, :cond_2

    .line 5709
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5710
    .local v2, "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 5711
    .local v0, "curAccount":Landroid/accounts/Account;
    invoke-virtual {v0, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5712
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5710
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5715
    .end local v0    # "curAccount":Landroid/accounts/Account;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5716
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5723
    .end local v2    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5724
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5725
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5706
    return-void

    .line 5718
    .restart local v2    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Landroid/accounts/Account;

    .line 5719
    .local v1, "newAccountsForType":[Landroid/accounts/Account;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "newAccountsForType":[Landroid/accounts/Account;
    check-cast v1, [Landroid/accounts/Account;

    .line 5720
    .restart local v1    # "newAccountsForType":[Landroid/accounts/Account;
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .locals 26
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callingUid"    # I

    .prologue
    .line 1797
    const/4 v11, 0x0

    .line 1798
    .local v11, "isChanged":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v20

    .line 1799
    .local v20, "userUnlocked":Z
    if-nez v20, :cond_0

    .line 1800
    const-string/jumbo v4, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Removing account "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " while user "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1801
    const-string/jumbo v10, " is still locked. CE data will be removed later"

    .line 1800
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1804
    if-eqz v20, :cond_5

    .line 1805
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1807
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1810
    const-wide/16 v8, -0x1

    .line 1812
    .local v8, "accountId":J
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v8

    .line 1813
    const-wide/16 v24, 0x0

    cmp-long v4, v8, v24

    if-ltz v4, :cond_2

    .line 1815
    const-string/jumbo v4, "accounts"

    .line 1816
    const-string/jumbo v7, "name=? AND type=?"

    .line 1817
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v23, v10, v24

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aput-object v23, v10, v24

    .line 1814
    invoke-virtual {v5, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1818
    if-eqz v20, :cond_1

    .line 1821
    const-string/jumbo v4, "ceDb.accounts"

    .line 1822
    const-string/jumbo v7, "name=? AND type=?"

    .line 1823
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v23, v10, v24

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aput-object v23, v10, v24

    .line 1820
    invoke-virtual {v5, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1825
    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1826
    const/4 v11, 0x1

    .line 1829
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1831
    if-eqz v11, :cond_3

    .line 1832
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 1834
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1835
    if-eqz v20, :cond_6

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get1()Ljava/lang/String;

    move-result-object v6

    .line 1837
    .local v6, "action":Ljava/lang/String;
    :goto_1
    const-string/jumbo v7, "accounts"

    move-object/from16 v4, p0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v6    # "action":Ljava/lang/String;
    :cond_3
    monitor-exit v22

    .line 1840
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1842
    .local v12, "id":J
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v16

    .line 1843
    .local v16, "parentUserId":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1845
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v21

    .line 1846
    .local v21, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "user$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/UserInfo;

    .line 1847
    .local v18, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    move/from16 v0, v16

    if-ne v0, v4, :cond_4

    .line 1848
    move-object/from16 v0, v18

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1852
    .end local v16    # "parentUserId":I
    .end local v18    # "user":Landroid/content/pm/UserInfo;
    .end local v19    # "user$iterator":Ljava/util/Iterator;
    .end local v21    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v4

    .line 1853
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1852
    throw v4

    .line 1806
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    .end local v12    # "id":J
    :cond_5
    :try_start_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto/16 :goto_0

    .line 1828
    .restart local v8    # "accountId":J
    :catchall_1
    move-exception v4

    .line 1829
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1828
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1803
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    :catchall_2
    move-exception v4

    monitor-exit v22

    throw v4

    .line 1836
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "accountId":J
    :cond_6
    :try_start_5
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get2()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v6

    .restart local v6    # "action":Ljava/lang/String;
    goto :goto_1

    .line 1853
    .end local v6    # "action":Ljava/lang/String;
    .restart local v12    # "id":J
    .restart local v16    # "parentUserId":I
    :cond_7
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1856
    if-eqz v11, :cond_a

    .line 1857
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 1859
    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1858
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "key$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    .line 1860
    .local v14, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v4, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1861
    const-string/jumbo v10, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget-object v4, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1860
    if-eqz v4, :cond_8

    .line 1862
    iget-object v4, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1863
    .local v17, "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v10, Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v10, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;I)V

    invoke-virtual {v4, v10}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 1857
    .end local v14    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v15    # "key$iterator":Ljava/util/Iterator;
    .end local v17    # "uid":I
    :catchall_3
    move-exception v4

    monitor-exit v7

    throw v4

    .restart local v15    # "key$iterator":Ljava/util/Iterator;
    :cond_9
    monitor-exit v7

    .line 1870
    .end local v15    # "key$iterator":Ljava/util/Iterator;
    :cond_a
    return v11
.end method

.method private removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3910
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 3911
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 3912
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3913
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 3914
    .local v4, "sharedTableAccountId":J
    const-string/jumbo v0, "shared_accounts"

    const-string/jumbo v2, "name=? AND type=?"

    .line 3915
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v3, v10

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v3, v9

    .line 3914
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 3916
    .local v8, "r":I
    if-lez v8, :cond_0

    .line 3917
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shared_accounts"

    move-object v0, p0

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 3919
    invoke-direct {p0, v6, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 3921
    :cond_0
    if-lez v8, :cond_1

    move v0, v9

    :goto_0
    return v0

    :cond_1
    move v0, v10

    goto :goto_0
.end method

.method private renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 25
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 1519
    const/16 v17, 0x0

    .line 1530
    .local v17, "resultAccount":Landroid/accounts/Account;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1531
    new-instance v6, Landroid/os/UserHandle;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 1529
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 1532
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 1534
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1533
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "pair$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 1535
    .local v13, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v4, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1536
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1537
    .local v12, "id":I
    new-instance v4, Landroid/os/UserHandle;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-direct {v4, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1532
    .end local v12    # "id":I
    .end local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v14    # "pair$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .restart local v14    # "pair$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v6

    .line 1541
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 1542
    :try_start_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1543
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1544
    new-instance v16, Landroid/accounts/Account;

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1546
    .local v16, "renamedAccount":Landroid/accounts/Account;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v8

    .line 1547
    .local v8, "accountId":J
    const-wide/16 v6, 0x0

    cmp-long v4, v8, v6

    if-ltz v4, :cond_2

    .line 1548
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1549
    .local v23, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v11, v6

    .line 1551
    .local v11, "argsAccountId":[Ljava/lang/String;
    const-string/jumbo v4, "ceDb.accounts"

    const-string/jumbo v6, "_id=?"

    move-object/from16 v0, v23

    invoke-virtual {v5, v4, v0, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1553
    const-string/jumbo v4, "previous_name"

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const-string/jumbo v4, "accounts"

    const-string/jumbo v6, "_id=?"

    move-object/from16 v0, v23

    invoke-virtual {v5, v4, v0, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1555
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1556
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get3()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "accounts"

    move-object/from16 v4, p0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1560
    .end local v11    # "argsAccountId":[Ljava/lang/String;
    .end local v23    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1567
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v16

    .line 1574
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    .line 1575
    .local v18, "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 1576
    .local v19, "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 1581
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    .line 1585
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1583
    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    move-object/from16 v17, v16

    .line 1588
    .local v17, "resultAccount":Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v15

    .line 1589
    .local v15, "parentUserId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1594
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v22

    .line 1595
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "user$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    .line 1596
    .local v20, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1597
    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v4, v15, :cond_3

    .line 1598
    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1541
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    .end local v15    # "parentUserId":I
    .end local v16    # "renamedAccount":Landroid/accounts/Account;
    .end local v17    # "resultAccount":Landroid/accounts/Account;
    .end local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "user$iterator":Ljava/util/Iterator;
    .end local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v4

    monitor-exit v24

    throw v4

    .line 1559
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v16    # "renamedAccount":Landroid/accounts/Account;
    .local v17, "resultAccount":Landroid/accounts/Account;
    :catchall_2
    move-exception v4

    .line 1560
    :try_start_4
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1559
    throw v4

    .line 1602
    .restart local v8    # "accountId":J
    .restart local v15    # "parentUserId":I
    .local v17, "resultAccount":Landroid/accounts/Account;
    .restart local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v24

    .line 1604
    return-object v16
.end method

.method private revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 5669
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5670
    :cond_0
    const-string/jumbo v6, "AccountManagerService"

    const-string/jumbo v7, "revokeAppPermission: called with invalid arguments"

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5671
    return-void

    .line 5673
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 5674
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v7, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5675
    :try_start_0
    iget-object v6, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 5676
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5678
    :try_start_1
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 5679
    .local v0, "accountId":J
    const-wide/16 v8, 0x0

    cmp-long v6, v0, v8

    if-ltz v6, :cond_2

    .line 5680
    const-string/jumbo v6, "grants"

    .line 5681
    const-string/jumbo v8, "accounts_id=? AND auth_token_type=? AND uid=?"

    .line 5683
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object p2, v9, v10

    .line 5684
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 5680
    invoke-virtual {v3, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5685
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5688
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5691
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 5692
    new-instance v8, Landroid/os/UserHandle;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 5691
    invoke-virtual {p0, v6, v8}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v7

    .line 5697
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5696
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 5698
    .local v4, "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v7, Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;

    invoke-direct {v7, v4, p1, p3}, Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v6, v7}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5687
    .end local v0    # "accountId":J
    .end local v4    # "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .end local v5    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    .line 5688
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5687
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5674
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 5668
    .restart local v0    # "accountId":J
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "listener$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .prologue
    .line 1970
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1971
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1973
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1974
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1973
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 1975
    iget-object v9, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1976
    :try_start_0
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1977
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1979
    :try_start_1
    invoke-direct {p0, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 1980
    .local v6, "accountId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_2

    .line 1997
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1981
    const/4 v0, 0x0

    monitor-exit v9

    return v0

    .line 1983
    :cond_2
    :try_start_3
    const-string/jumbo v0, "ceDb.authtokens"

    .line 1984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "accounts_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1985
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    .line 1983
    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1986
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1987
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "accounts_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1988
    const-string/jumbo v0, "type"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const-string/jumbo v0, "authtoken"

    invoke-virtual {v8, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const-string/jumbo v0, "ceDb.authtokens"

    const-string/jumbo v1, "authtoken"

    invoke-virtual {v2, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    .line 1991
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1992
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1997
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1993
    const/4 v0, 0x1

    monitor-exit v9

    return v0

    .line 1997
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1995
    const/4 v0, 0x0

    monitor-exit v9

    return v0

    .line 1996
    .end local v6    # "accountId":J
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    .line 1997
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1996
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1975
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "callerSigDigest"    # [B
    .param p5, "tokenType"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "expiryMillis"    # J

    .prologue
    .line 1957
    if-eqz p2, :cond_0

    if-nez p5, :cond_1

    .line 1958
    :cond_0
    return-void

    .line 1957
    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 1960
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1961
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1960
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 1962
    iget-object v8, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1963
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    move-object v1, p2

    move-object v2, p6

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accounts/TokenCache;->put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 1955
    return-void

    .line 1962
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5149
    if-eqz p0, :cond_1

    .line 5150
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p0, v1

    .line 5151
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5152
    const/4 v1, 0x1

    return v1

    .line 5150
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5156
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 2131
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the accounts changed, sending broadcast of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2132
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 2131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2130
    return-void
.end method

.method private sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 3
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 5978
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5976
    :cond_0
    :goto_0
    return-void

    .line 5979
    :catch_0
    move-exception v0

    .line 5982
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5983
    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 5965
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5963
    :cond_0
    :goto_0
    return-void

    .line 5966
    :catch_0
    move-exception v0

    .line 5969
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5970
    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 12
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 2091
    if-nez p2, :cond_0

    .line 2092
    return-void

    .line 2094
    :cond_0
    const/4 v9, 0x0

    .line 2095
    .local v9, "isChanged":Z
    iget-object v11, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2096
    :try_start_0
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2097
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2099
    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2100
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "password"

    invoke-virtual {v10, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    invoke-direct {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 2102
    .local v4, "accountId":J
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    .line 2103
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v8, v3

    .line 2105
    .local v8, "argsAccountId":[Ljava/lang/String;
    const-string/jumbo v0, "ceDb.accounts"

    const-string/jumbo v3, "_id=?"

    .line 2104
    invoke-virtual {v1, v0, v10, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2107
    const-string/jumbo v0, "ceDb.authtokens"

    const-string/jumbo v3, "accounts_id=?"

    .line 2106
    invoke-virtual {v1, v0, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2108
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2109
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    .line 2110
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2114
    const/4 v9, 0x1

    .line 2115
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 2116
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get9()Ljava/lang/String;

    move-result-object v2

    .line 2118
    .local v2, "action":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "accounts"

    move-object v0, p0

    move-object v6, p1

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2121
    .end local v2    # "action":Ljava/lang/String;
    .end local v8    # "argsAccountId":[Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2122
    if-eqz v9, :cond_3

    .line 2124
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    monitor-exit v11

    .line 2090
    return-void

    .line 2117
    .restart local v8    # "argsAccountId":[Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get10()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .restart local v2    # "action":Ljava/lang/String;
    goto :goto_0

    .line 2120
    .end local v2    # "action":Ljava/lang/String;
    .end local v4    # "accountId":J
    .end local v8    # "argsAccountId":[Ljava/lang/String;
    .end local v10    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    .line 2121
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2122
    if-eqz v9, :cond_5

    .line 2124
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2120
    :cond_5
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2095
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method private setUserdataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 2208
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2209
    :cond_0
    return-void

    .line 2211
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2212
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2214
    :try_start_0
    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 2215
    .local v4, "accountId":J
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    .line 2234
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2216
    return-void

    .line 2218
    :cond_2
    :try_start_1
    move-object/from16 v0, p3

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/server/accounts/AccountManagerService;->getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J

    move-result-wide v12

    .line 2219
    .local v12, "extrasId":J
    const-wide/16 v6, 0x0

    cmp-long v2, v12, v6

    if-gez v2, :cond_3

    move-object v2, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 2220
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    .line 2221
    const-wide/16 v6, 0x0

    cmp-long v2, v12, v6

    if-gez v2, :cond_4

    .line 2234
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2222
    return-void

    .line 2225
    :cond_3
    :try_start_2
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2226
    .local v14, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    move-object/from16 v0, p4

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    const-string/jumbo v2, "extras"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v14, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    const/4 v6, 0x1

    if-eq v6, v2, :cond_4

    .line 2234
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2228
    return-void

    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    move-object v6, p0

    move-object/from16 v7, p1

    move-object v8, v3

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 2231
    :try_start_3
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2234
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2207
    return-void

    .line 2233
    .end local v4    # "accountId":J
    .end local v12    # "extrasId":J
    :catchall_0
    move-exception v2

    .line 2234
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2233
    throw v2
.end method

.method private showCantAddAccount(II)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 3140
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/accounts/CantAddAccountActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3141
    .local v0, "cantAddAccount":Landroid/content/Intent;
    const-string/jumbo v1, "android.accounts.extra.ERROR_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3142
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3143
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 3145
    .local v2, "identityToken":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3147
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3139
    return-void

    .line 3146
    :catchall_0
    move-exception v1

    .line 3147
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3146
    throw v1
.end method

.method private static final stringArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 5703
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 779
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "mUsers lock must be held"

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 780
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 781
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->findCeAccountsNotInDe(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v2

    .line 782
    .local v2, "accountsToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 783
    const-string/jumbo v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Accounts "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " were previously deleted while user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 784
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    .line 783
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 784
    const-string/jumbo v6, " was locked. Removing accounts from CE tables"

    .line 783
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get11()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "accounts"

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 788
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    goto :goto_0

    .line 778
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "account$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private syncSharedAccounts(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 880
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v3

    .line 881
    .local v3, "sharedAccounts":[Landroid/accounts/Account;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-nez v5, :cond_1

    :cond_0
    return-void

    .line 882
    :cond_1
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v7, p1, v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 883
    .local v0, "accounts":[Landroid/accounts/Account;
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 884
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v1, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 886
    .local v1, "parentUserId":I
    :goto_0
    if-gez v1, :cond_3

    .line 887
    const-string/jumbo v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has shared accounts, but no parent user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-void

    .end local v1    # "parentUserId":I
    :cond_2
    move v1, v4

    .line 885
    goto :goto_0

    .line 890
    .restart local v1    # "parentUserId":I
    :cond_3
    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v2, v3, v4

    .line 891
    .local v2, "sa":Landroid/accounts/Account;
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 890
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 893
    :cond_4
    invoke-virtual {p0, v7, v2, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    goto :goto_2

    .line 878
    .end local v2    # "sa":Landroid/accounts/Account;
    :cond_5
    return-void
.end method

.method private updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1216
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1217
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1218
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1219
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "last_password_entry_time_millis_epoch"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1220
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1222
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v4, "accounts"

    .line 1224
    const-string/jumbo v6, "name=? AND type=?"

    .line 1225
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    .line 1226
    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 1221
    invoke-virtual {v1, v4, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1228
    .local v2, "i":I
    if-lez v2, :cond_0

    monitor-exit v5

    .line 1229
    return v11

    :cond_0
    monitor-exit v5

    .line 1232
    return v10

    .line 1217
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "i":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    .locals 34
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "invalidateAuthenticatorCache"    # Z

    .prologue
    .line 548
    const-string/jumbo v3, "AccountManagerService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 549
    const-string/jumbo v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateAccountsInternal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 550
    const-string/jumbo v5, " isCeDatabaseAttached="

    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 550
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->isCeDatabaseAttached()Z

    move-result v5

    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 551
    const-string/jumbo v5, " userLocked="

    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 551
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_0
    if-eqz p2, :cond_1

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->invalidateCache(I)V

    .line 559
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    .line 558
    invoke-static {v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object v24

    .line 560
    .local v24, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v31

    .line 562
    .local v31, "userUnlocked":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 563
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 564
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 568
    .local v12, "accountDeleted":Z
    const-string/jumbo v3, "meta"

    .line 569
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "key"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "value"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 570
    const-string/jumbo v5, "key LIKE ?"

    .line 571
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "auth_uid_for_type:%"

    const/4 v10, 0x0

    aput-object v7, v6, v10

    .line 574
    const-string/jumbo v9, "key"

    .line 572
    const/4 v7, 0x0

    .line 573
    const/4 v8, 0x0

    .line 567
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 576
    .local v27, "metaCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v28

    .line 578
    .local v28, "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 579
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 580
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v29, v3, v4

    .line 581
    .local v29, "type":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 582
    .local v30, "uid":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 584
    :cond_3
    const-string/jumbo v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Auth type empty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 585
    const-string/jumbo v5, ", uid empty: "

    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 585
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 628
    .end local v29    # "type":Ljava/lang/String;
    .end local v30    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 629
    :try_start_2
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 628
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 562
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "accountDeleted":Z
    .end local v27    # "metaCursor":Landroid/database/Cursor;
    .end local v28    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    monitor-exit v33

    throw v3

    .line 588
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "accountDeleted":Z
    .restart local v27    # "metaCursor":Landroid/database/Cursor;
    .restart local v28    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v29    # "type":Ljava/lang/String;
    .restart local v30    # "uid":Ljava/lang/String;
    :cond_4
    :try_start_3
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 589
    .local v25, "knownUid":Ljava/lang/Integer;
    if-eqz v25, :cond_5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 591
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 609
    :cond_5
    if-nez v26, :cond_6

    .line 610
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v26

    .line 612
    :cond_6
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 616
    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 619
    const-string/jumbo v3, "meta"

    .line 620
    const-string/jumbo v4, "key=? AND value=?"

    .line 621
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 622
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "auth_uid_for_type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 623
    const/4 v6, 0x1

    aput-object v30, v5, v6

    .line 618
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 629
    .end local v25    # "knownUid":Ljava/lang/Integer;
    .end local v29    # "type":Ljava/lang/String;
    .end local v30    # "uid":Ljava/lang/String;
    :cond_7
    :try_start_4
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 635
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 636
    .local v23, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 637
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 638
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 639
    .local v32, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "key"

    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "auth_uid_for_type:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 639
    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string/jumbo v4, "value"

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    const-string/jumbo v3, "meta"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object/from16 v0, v32

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_1

    .line 645
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v32    # "values":Landroid/content/ContentValues;
    :cond_8
    const-string/jumbo v3, "accounts"

    .line 646
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "type"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "name"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 647
    const-string/jumbo v9, "_id"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 645
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v20

    .line 649
    .local v20, "cursor":Landroid/database/Cursor;
    :try_start_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 650
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 651
    .local v15, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 652
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 653
    .local v8, "accountId":J
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 654
    .local v16, "accountType":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 656
    .local v13, "accountName":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 657
    const-string/jumbo v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleting account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " because type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 658
    const-string/jumbo v5, "\'s registered authenticator no longer exist."

    .line 657
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 661
    :try_start_6
    const-string/jumbo v3, "accounts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 664
    if-eqz v31, :cond_9

    .line 665
    const-string/jumbo v3, "ceDb.accounts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 667
    :cond_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 669
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 671
    const/4 v12, 0x1

    .line 673
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get4()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "accounts"

    move-object/from16 v4, p0

    move-object v5, v2

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 676
    new-instance v11, Landroid/accounts/Account;

    move-object/from16 v0, v16

    invoke-direct {v11, v13, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    .local v11, "account":Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_2

    .line 699
    .end local v8    # "accountId":J
    .end local v11    # "account":Landroid/accounts/Account;
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v15    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    :catchall_2
    move-exception v3

    .line 700
    :try_start_8
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 701
    if-eqz v12, :cond_a

    .line 702
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 699
    :cond_a
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 668
    .restart local v8    # "accountId":J
    .restart local v13    # "accountName":Ljava/lang/String;
    .restart local v15    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v16    # "accountType":Ljava/lang/String;
    :catchall_3
    move-exception v3

    .line 669
    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 668
    throw v3

    .line 681
    :cond_b
    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 682
    .local v14, "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v14, :cond_c

    .line 683
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .restart local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    :cond_c
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 689
    .end local v8    # "accountId":J
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    :cond_d
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "cur$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 690
    .local v18, "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 691
    .restart local v16    # "accountType":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 692
    .restart local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/accounts/Account;

    move-object/from16 v17, v0

    .line 693
    .local v17, "accountsForType":[Landroid/accounts/Account;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_4
    move-object/from16 v0, v17

    array-length v3, v0

    move/from16 v0, v22

    if-ge v0, v3, :cond_e

    .line 694
    new-instance v4, Landroid/accounts/Account;

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 695
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 694
    move-object/from16 v0, v16

    invoke-direct {v4, v3, v0, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v17, v22

    .line 693
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 697
    :cond_e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    .line 700
    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    .end local v17    # "accountsForType":[Landroid/accounts/Account;
    .end local v18    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v22    # "i":I
    :cond_f
    :try_start_a
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 701
    if-eqz v12, :cond_10

    .line 702
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_10
    monitor-exit v33

    .line 547
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_accounts_AccountManagerService_lambda$1(I)V
    .locals 13
    .param p1, "uid"    # I

    .prologue
    const/4 v8, 0x0

    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, "accounts":[Landroid/accounts/Account;
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, "packageNames":[Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 443
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 444
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 446
    .local v2, "identity":J
    :try_start_0
    array-length v10, v5

    move v9, v8

    .end local v1    # "accounts":[Landroid/accounts/Account;
    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v4, v5, v9

    .line 447
    .local v4, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 448
    const-string/jumbo v11, "android.permission.GET_ACCOUNTS"

    .line 447
    invoke-virtual {v7, v11, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 446
    :cond_0
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    .line 453
    :cond_1
    if-nez v1, :cond_2

    .line 454
    const-string/jumbo v7, "android"

    const/4 v11, 0x0

    invoke-virtual {p0, v11, v6, v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 455
    .local v1, "accounts":[Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 456
    return-void

    .line 460
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :cond_2
    :try_start_1
    array-length v11, v1

    move v7, v8

    :goto_1
    if-ge v7, v11, :cond_0

    aget-object v0, v1, v7

    .line 462
    .local v0, "account":Landroid/accounts/Account;
    const/4 v12, 0x1

    .line 461
    invoke-direct {p0, v0, p1, v4, v12}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 466
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 0
    .end local v2    # "identity":J
    .end local v6    # "userId":I
    :cond_4
    return-void

    .line 465
    .restart local v2    # "identity":J
    .restart local v6    # "userId":I
    :catchall_0
    move-exception v7

    .line 466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    throw v7
.end method

.method synthetic -com_android_server_accounts_AccountManagerService_lambda$2(Landroid/accounts/Account;I)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .prologue
    .line 1864
    const/4 v0, 0x0

    .line 1863
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 0
    return-void
.end method

.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1182
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1184
    const-string/jumbo v6, "accountAuthenticated( account: %s, callerUid: %s)"

    .line 1183
    new-array v7, v10, [Ljava/lang/Object;

    .line 1185
    aput-object p1, v7, v9

    .line 1186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    .line 1183
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1187
    .local v4, "msg":Ljava/lang/String;
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 1190
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1192
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1193
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1195
    const-string/jumbo v6, "uid %s cannot notify authentication for accounts of type: %s"

    .line 1194
    new-array v7, v10, [Ljava/lang/Object;

    .line 1196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 1197
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v8, v7, v11

    .line 1194
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1198
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1201
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1202
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1206
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1208
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1209
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1211
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1209
    return v6

    .line 1203
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "identityToken":J
    :cond_3
    return v9

    .line 1210
    .restart local v2    # "identityToken":J
    :catchall_0
    move-exception v6

    .line 1211
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1210
    throw v6
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 26
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;

    .prologue
    .line 2638
    const/4 v4, 0x1

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2639
    const-string/jumbo v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2640
    const-string/jumbo v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addAccount: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2641
    const-string/jumbo v6, ", response "

    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2642
    const-string/jumbo v6, ", authTokenType "

    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2643
    const-string/jumbo v6, ", requiredFeatures "

    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2643
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2644
    const-string/jumbo v6, ", expectActivityLaunch "

    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2645
    const-string/jumbo v6, ", caller\'s uid "

    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2645
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2646
    const-string/jumbo v6, ", pid "

    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2646
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2640
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2649
    :cond_1
    if-nez p2, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2652
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 2653
    .local v23, "uid":I
    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    .line 2654
    .local v24, "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2657
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    .line 2656
    const/16 v5, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2660
    :goto_0
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 2661
    return-void

    .line 2663
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p2

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2666
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    .line 2665
    const/16 v5, 0x65

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2669
    :goto_1
    const/16 v4, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 2671
    return-void

    .line 2674
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 2675
    .local v19, "pid":I
    if-nez p6, :cond_5

    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 2676
    .local v17, "options":Landroid/os/Bundle;
    :goto_2
    const-string/jumbo v4, "callerUid"

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2677
    const-string/jumbo v4, "callerPid"

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2679
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v25

    .line 2680
    .local v25, "usrId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 2682
    .local v20, "identityToken":J
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 2684
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get5()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "accounts"

    .line 2683
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2685
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$9;

    .line 2686
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 2687
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v18, p2

    .line 2685
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$9;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$9;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2705
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2637
    return-void

    .line 2675
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    .end local v25    # "usrId":I
    :cond_5
    move-object/from16 v17, p6

    .restart local v17    # "options":Landroid/os/Bundle;
    goto :goto_2

    .line 2704
    .restart local v20    # "identityToken":J
    .restart local v25    # "usrId":I
    :catchall_0
    move-exception v4

    .line 2705
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2704
    throw v4

    .line 2667
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v19    # "pid":I
    .end local v20    # "identityToken":J
    .end local v25    # "usrId":I
    :catch_0
    move-exception v22

    .local v22, "re":Landroid/os/RemoteException;
    goto :goto_1

    .line 2658
    .end local v22    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v22

    .restart local v22    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 25
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;
    .param p7, "userId"    # I

    .prologue
    .line 2713
    const/4 v4, 0x1

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2714
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 2715
    .local v19, "callingUid":I
    const-string/jumbo v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2716
    const-string/jumbo v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addAccount: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2717
    const-string/jumbo v6, ", response "

    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2718
    const-string/jumbo v6, ", authTokenType "

    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2719
    const-string/jumbo v6, ", requiredFeatures "

    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2719
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2720
    const-string/jumbo v6, ", expectActivityLaunch "

    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2721
    const-string/jumbo v6, ", caller\'s uid "

    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2721
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2722
    const-string/jumbo v6, ", pid "

    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2722
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2723
    const-string/jumbo v6, ", for user id "

    .line 2716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2726
    :cond_1
    if-nez p2, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2728
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2729
    new-instance v4, Ljava/lang/SecurityException;

    .line 2731
    const-string/jumbo v5, "User %s trying to add account for %s"

    .line 2730
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 2732
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    .line 2733
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    .line 2730
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2729
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2737
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2740
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    .line 2739
    const/16 v5, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2743
    :goto_0
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 2744
    return-void

    .line 2746
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2749
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    .line 2748
    const/16 v5, 0x65

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2752
    :goto_1
    const/16 v4, 0x65

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 2754
    return-void

    .line 2757
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    .line 2758
    .local v22, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    .line 2759
    .local v24, "uid":I
    if-nez p6, :cond_6

    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 2760
    .local v17, "options":Landroid/os/Bundle;
    :goto_2
    const-string/jumbo v4, "callerUid"

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2761
    const-string/jumbo v4, "callerPid"

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2763
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 2765
    .local v20, "identityToken":J
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 2767
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get5()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "accounts"

    .line 2766
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2768
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$10;

    .line 2769
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 2770
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v18, p2

    .line 2768
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$10;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$10;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2788
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2712
    return-void

    .line 2759
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    :cond_6
    move-object/from16 v17, p6

    .restart local v17    # "options":Landroid/os/Bundle;
    goto :goto_2

    .line 2787
    .restart local v20    # "identityToken":J
    :catchall_0
    move-exception v4

    .line 2788
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2787
    throw v4

    .line 2750
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    .end local v22    # "pid":I
    .end local v24    # "uid":I
    :catch_0
    move-exception v23

    .local v23, "re":Landroid/os/RemoteException;
    goto :goto_1

    .line 2741
    .end local v23    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v23

    .restart local v23    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v10, 0x1

    .line 1087
    invoke-static {p3, v10}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1088
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1089
    .local v5, "callingUid":I
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    const-string/jumbo v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addAccountExplicitly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1091
    const-string/jumbo v3, ", caller\'s uid "

    .line 1090
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1092
    const-string/jumbo v3, ", pid "

    .line 1090
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1092
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1090
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "account is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1095
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 1096
    .local v9, "userId":I
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v9}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1098
    const-string/jumbo v0, "uid %s cannot explicitly add accounts of type: %s"

    .line 1097
    new-array v2, v4, [Ljava/lang/Object;

    .line 1099
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1100
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v2, v10

    .line 1097
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1101
    .local v8, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    .end local v8    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v6

    .line 1114
    .local v6, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .local v1, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1115
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1117
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1115
    return v0

    .line 1116
    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    .line 1117
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1116
    throw v0
.end method

.method public addSharedAccountsFromParentUser(II)V
    .locals 4
    .param p1, "parentUserId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 3855
    const-string/jumbo v2, "addSharedAccountsFromParentUser"

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 3856
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 3857
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 3858
    .local v0, "account":Landroid/accounts/Account;
    invoke-direct {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    .line 3857
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3854
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method protected cancelNotification(ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 5301
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILjava/lang/String;Landroid/os/UserHandle;)V

    .line 5300
    return-void
.end method

.method protected cancelNotification(ILjava/lang/String;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 5305
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 5308
    .local v2, "identityToken":J
    :try_start_0
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 5307
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 5309
    .local v1, "service":Landroid/app/INotificationManager;
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, p2, v5, p1, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5313
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5304
    .end local v1    # "service":Landroid/app/INotificationManager;
    :goto_0
    return-void

    .line 5310
    :catch_0
    move-exception v0

    .line 5313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 5312
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 5313
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5312
    throw v4
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v9, 0x2

    .line 2138
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2139
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2140
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clearPassword: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2141
    const-string/jumbo v8, ", caller\'s uid "

    .line 2140
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2142
    const-string/jumbo v8, ", pid "

    .line 2140
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2142
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2140
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2145
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2146
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2148
    const-string/jumbo v6, "uid %s cannot clear passwords for accounts of type: %s"

    .line 2147
    new-array v7, v9, [Ljava/lang/Object;

    .line 2149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 2150
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 2147
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2151
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2153
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2155
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2156
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v6, 0x0

    invoke-direct {p0, v0, p1, v6, v1}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2158
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2137
    return-void

    .line 2157
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    .line 2158
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2157
    throw v6
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 18
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 3158
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 3160
    .local v15, "callingUid":I
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3161
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "confirmCredentials: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3162
    const-string/jumbo v4, ", response "

    .line 3161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3163
    const-string/jumbo v4, ", expectActivityLaunch "

    .line 3161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3164
    const-string/jumbo v4, ", caller\'s uid "

    .line 3161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3165
    const-string/jumbo v4, ", pid "

    .line 3161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3165
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 3161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v15, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3169
    new-instance v2, Ljava/lang/SecurityException;

    .line 3171
    const-string/jumbo v3, "User %s trying to confirm account credentials for %s"

    .line 3170
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 3172
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 3173
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 3170
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3169
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3175
    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3176
    :cond_2
    if-nez p2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3177
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 3179
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 3180
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$13;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3181
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x1

    .line 3182
    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p4

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 3180
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$13;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$13;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3194
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3157
    return-void

    .line 3193
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    .line 3194
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3193
    throw v2
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .locals 21
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userFrom"    # I
    .param p4, "userTo"    # I

    .prologue
    .line 1124
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 1125
    .local v16, "callingUid":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1126
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Calling copyAccountToUser requires android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1129
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 1130
    .local v5, "fromAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v14

    .line 1131
    .local v14, "toAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz v5, :cond_1

    if-nez v14, :cond_3

    .line 1132
    :cond_1
    if-eqz p1, :cond_2

    .line 1133
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 1134
    .local v20, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "booleanResult"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1136
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    .end local v20    # "result":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    .line 1137
    .restart local v20    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v17

    .line 1138
    .local v17, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to report error back to the client."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1144
    .end local v17    # "e":Landroid/os/RemoteException;
    .end local v20    # "result":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Copying account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1145
    const-string/jumbo v4, " from user "

    .line 1144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1145
    const-string/jumbo v4, " to user "

    .line 1144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v18

    .line 1148
    .local v18, "identityToken":J
    :try_start_1
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$5;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1149
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1148
    const/4 v8, 0x0

    .line 1149
    const/4 v9, 0x0

    .line 1150
    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p1

    move/from16 v15, p3

    .line 1148
    invoke-direct/range {v2 .. v15}, Lcom/android/server/accounts/AccountManagerService$5;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$5;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1175
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1123
    return-void

    .line 1174
    :catchall_0
    move-exception v2

    .line 1175
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1174
    throw v2
.end method

.method public createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3512
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 3513
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Can be called only by system UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3516
    :cond_0
    const-string/jumbo v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3517
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3518
    const-string/jumbo v0, "userHandle cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3520
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 3522
    .local v10, "userId":I
    const-string/jumbo v0, "user must be concrete"

    const v1, 0x7fffffff

    invoke-static {v10, v3, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 3526
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, v10}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 3532
    .local v7, "uid":I
    invoke-direct {p0, p1, p2, v7, v4}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v2

    .line 3534
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3537
    .local v8, "identity":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 3539
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 3537
    const/4 v1, 0x0

    const/high16 v3, 0x54000000

    .line 3539
    const/4 v4, 0x0

    .line 3536
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3541
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3536
    return-object v0

    .line 3527
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "uid":I
    .end local v8    # "identity":J
    :catch_0
    move-exception v6

    .line 3528
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    return-object v4

    .line 3540
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "uid":I
    .restart local v8    # "identity":J
    :catchall_0
    move-exception v0

    .line 3541
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3540
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5161
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump AccountsManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5164
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5164
    const-string/jumbo v1, ", uid="

    .line 5163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5165
    const-string/jumbo v1, " without permission "

    .line 5163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5165
    const-string/jumbo v1, "android.permission.DUMP"

    .line 5163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5166
    return-void

    .line 5168
    :cond_0
    const-string/jumbo v0, "--checkin"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "-c"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 5169
    :goto_0
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "  "

    invoke-direct {v3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5171
    .local v3, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 5172
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "user$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 5173
    .local v6, "user":Landroid/content/pm/UserInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5174
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 5175
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 5176
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5177
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_1

    .line 5168
    .end local v3    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "user$iterator":Ljava/util/Iterator;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    const/4 v5, 0x1

    .local v5, "isCheckinRequest":Z
    goto :goto_0

    .line 5160
    .end local v5    # "isCheckinRequest":Z
    .restart local v3    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v7    # "user$iterator":Ljava/util/Iterator;
    .restart local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    return-void
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 20
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "expectActivityLaunch"    # Z

    .prologue
    .line 3407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 3408
    .local v15, "callingUid":I
    const-string/jumbo v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3409
    const-string/jumbo v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "editProperties: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3410
    const-string/jumbo v6, ", response "

    .line 3409
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3411
    const-string/jumbo v6, ", expectActivityLaunch "

    .line 3409
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3412
    const-string/jumbo v6, ", caller\'s uid "

    .line 3409
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3413
    const-string/jumbo v6, ", pid "

    .line 3409
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3413
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3409
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3416
    :cond_1
    if-nez p2, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3417
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    .line 3418
    .local v19, "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3425
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 3427
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 3428
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$17;

    .line 3429
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 3430
    const/4 v13, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v14, p2

    .line 3428
    invoke-direct/range {v4 .. v14}, Lcom/android/server/accounts/AccountManagerService$17;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$17;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3442
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3406
    return-void

    .line 3420
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v16    # "identityToken":J
    :cond_4
    const-string/jumbo v4, "uid %s cannot edit authenticator properites for account type: %s"

    .line 3419
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 3421
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 3422
    const/4 v6, 0x1

    aput-object p2, v5, v6

    .line 3419
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 3423
    .local v18, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3441
    .end local v18    # "msg":Ljava/lang/String;
    .restart local v16    # "identityToken":J
    :catchall_0
    move-exception v4

    .line 3442
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3441
    throw v4
.end method

.method public finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
    .locals 22
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "sessionBundle"    # Landroid/os/Bundle;
    .param p3, "expectActivityLaunch"    # Z
    .param p4, "appInfo"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .prologue
    .line 3002
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3003
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 3004
    .local v15, "callingUid":I
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3005
    const-string/jumbo v2, "AccountManagerService"

    .line 3006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finishSession: response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3007
    const-string/jumbo v4, ", expectActivityLaunch "

    .line 3006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3008
    const-string/jumbo v4, ", caller\'s uid "

    .line 3006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3009
    const-string/jumbo v4, ", caller\'s user id "

    .line 3006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3009
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 3006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3010
    const-string/jumbo v4, ", pid "

    .line 3006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3010
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 3006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3011
    const-string/jumbo v4, ", for user id "

    .line 3006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3005
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    :cond_0
    if-nez p1, :cond_1

    .line 3014
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3019
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 3020
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sessionBundle is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3024
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v15, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3025
    new-instance v2, Ljava/lang/SecurityException;

    .line 3027
    const-string/jumbo v3, "User %s trying to finish session for %s without cross user permission"

    .line 3026
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 3028
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v4, v8

    .line 3029
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v4, v8

    .line 3026
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3025
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3033
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3035
    const-string/jumbo v2, "uid %s cannot finish session because it\'s not system uid."

    .line 3034
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 3036
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 3034
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 3037
    .local v20, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3040
    .end local v20    # "msg":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v15}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3043
    const-string/jumbo v2, "User is not allowed to add an account!"

    .line 3042
    const/16 v3, 0x64

    .line 3041
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3044
    const/16 v2, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3045
    return-void

    .line 3048
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    .line 3053
    .local v21, "pid":I
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    move-result-object v16

    .line 3054
    .local v16, "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/CryptoHelper;->decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    .line 3055
    .local v13, "decryptedBundle":Landroid/os/Bundle;
    if-nez v13, :cond_7

    .line 3059
    const-string/jumbo v2, "failed to decrypt session bundle"

    .line 3058
    const/16 v3, 0x8

    .line 3056
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3060
    return-void

    .line 3062
    :cond_7
    const-string/jumbo v2, "accountType"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3065
    .local v7, "accountType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3069
    const-string/jumbo v2, "accountType is empty"

    .line 3068
    const/4 v3, 0x7

    .line 3066
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3070
    return-void

    .line 3077
    :cond_8
    if-eqz p4, :cond_9

    .line 3078
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3082
    :cond_9
    const-string/jumbo v2, "callerUid"

    invoke-virtual {v13, v2, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3083
    const-string/jumbo v2, "callerPid"

    move/from16 v0, v21

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3095
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v7, v15}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 3099
    const-string/jumbo v2, "User cannot modify accounts of this type (policy)."

    .line 3098
    const/16 v3, 0x65

    .line 3096
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3100
    const/16 v2, 0x65

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3102
    return-void

    .line 3084
    .end local v7    # "accountType":Ljava/lang/String;
    .end local v13    # "decryptedBundle":Landroid/os/Bundle;
    .end local v16    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    :catch_0
    move-exception v17

    .line 3085
    .local v17, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3086
    const-string/jumbo v2, "AccountManagerService"

    const-string/jumbo v3, "Failed to decrypt session bundle!"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3091
    :cond_a
    const-string/jumbo v2, "failed to decrypt session bundle"

    .line 3090
    const/16 v3, 0x8

    .line 3088
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3092
    return-void

    .line 3105
    .end local v17    # "e":Ljava/security/GeneralSecurityException;
    .restart local v7    # "accountType":Ljava/lang/String;
    .restart local v13    # "decryptedBundle":Landroid/os/Bundle;
    .restart local v16    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    :cond_b
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v18

    .line 3107
    .local v18, "identityToken":J
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 3110
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get7()Ljava/lang/String;

    move-result-object v2

    .line 3111
    const-string/jumbo v3, "accounts"

    .line 3108
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v3, v15}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3113
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$12;

    .line 3118
    const/4 v9, 0x1

    .line 3119
    const/4 v10, 0x0

    .line 3120
    const/4 v11, 0x0

    .line 3121
    const/4 v12, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move-object v14, v7

    .line 3113
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$12;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$12;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3135
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3001
    return-void

    .line 3134
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    .line 3135
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3134
    throw v2
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3703
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3704
    .local v1, "callingUid":I
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3706
    .local v4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3707
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/accounts/Account;

    return-object v5

    .line 3709
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 3711
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3715
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    .line 3712
    invoke-direct {p0, v0, v1, v5, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 3718
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3712
    return-object v5

    .line 3717
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v5

    .line 3718
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3717
    throw v5
.end method

.method public getAccounts(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3955
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3772
    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3993
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3994
    .local v8, "callingUid":I
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3995
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccounts: accountType "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3996
    const-string/jumbo v5, ", response "

    .line 3995
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3997
    const-string/jumbo v5, ", features "

    .line 3995
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3997
    invoke-static/range {p3 .. p3}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3995
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3998
    const-string/jumbo v5, ", caller\'s uid "

    .line 3995
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3999
    const-string/jumbo v5, ", pid "

    .line 3995
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3999
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 3995
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4002
    :cond_1
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "accountType is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4003
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .line 4005
    .local v14, "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v8, v14, v1}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 4007
    .local v15, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4008
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 4010
    .local v11, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "accounts"

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/accounts/Account;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4012
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4016
    :goto_0
    return-void

    .line 4013
    :catch_0
    move-exception v10

    .line 4014
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    const-string/jumbo v3, "Cannot respond to caller do to exception."

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4018
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v11    # "result":Landroid/os/Bundle;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v12

    .line 4020
    .local v12, "identityToken":J
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 4021
    .local v4, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    array-length v2, v0

    if-nez v2, :cond_5

    .line 4023
    :cond_4
    iget-object v2, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4024
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v8, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .local v9, "accounts":[Landroid/accounts/Account;
    :try_start_3
    monitor-exit v2

    .line 4026
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 4027
    .restart local v11    # "result":Landroid/os/Bundle;
    const-string/jumbo v2, "accounts"

    invoke-virtual {v11, v2, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4028
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4038
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4029
    return-void

    .line 4023
    .end local v9    # "accounts":[Landroid/accounts/Account;
    .end local v11    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4037
    .end local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v2

    .line 4038
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4037
    throw v2

    .line 4031
    .restart local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_5
    :try_start_5
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4038
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3992
    return-void
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3974
    const/4 v4, -0x1

    .line 3976
    .local v4, "packageUid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 3978
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3977
    const/16 v2, 0x2000

    .line 3976
    invoke-interface {v0, p2, v2, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3983
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0

    .line 3979
    :catch_0
    move-exception v6

    .line 3980
    .local v6, "re":Landroid/os/RemoteException;
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t determine the packageUid for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    return-object v0
.end method

.method public getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3961
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3962
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v6, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3963
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccountsForPackage() called from unauthorized uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3964
    const-string/jumbo v2, " with uid="

    .line 3963
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3966
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method protected getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 7
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 5821
    if-eqz p2, :cond_1

    .line 5822
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 5823
    .local v0, "accounts":[Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 5824
    sget-object v5, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v5

    .line 5826
    :cond_0
    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/Account;

    invoke-direct {p0, p1, v5, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    return-object v5

    .line 5830
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_1
    const/4 v4, 0x0

    .line 5831
    .local v4, "totalLength":I
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accounts$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 5832
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    array-length v5, v0

    add-int/2addr v4, v5

    goto :goto_0

    .line 5834
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_2
    if-nez v4, :cond_3

    .line 5835
    sget-object v5, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v5

    .line 5837
    :cond_3
    new-array v0, v4, [Landroid/accounts/Account;

    .line 5838
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 5839
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "accountsOfType$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/accounts/Account;

    .line 5841
    .local v2, "accountsOfType":[Landroid/accounts/Account;
    array-length v5, v2

    .line 5840
    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5842
    array-length v5, v2

    add-int/2addr v4, v5

    goto :goto_1

    .line 5844
    .end local v2    # "accountsOfType":[Landroid/accounts/Account;
    :cond_4
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    return-object v5
.end method

.method public getAllAccounts()[Landroid/accounts/AccountAndUser;
    .locals 5

    .prologue
    .line 3742
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 3743
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [I

    .line 3744
    .local v1, "userIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 3745
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v1, v0

    .line 3744
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3747
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v3

    return-object v3
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 44
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "notifyOnAuthFailure"    # Z
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "loginOptions"    # Landroid/os/Bundle;

    .prologue
    .line 2315
    const/4 v6, 0x1

    move-object/from16 v0, p6

    invoke-static {v0, v6}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2316
    const-string/jumbo v6, "AccountManagerService"

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2317
    const-string/jumbo v6, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAuthToken: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2318
    const-string/jumbo v9, ", response "

    .line 2317
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2319
    const-string/jumbo v9, ", authTokenType "

    .line 2317
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2320
    const-string/jumbo v9, ", notifyOnAuthFailure "

    .line 2317
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2321
    const-string/jumbo v9, ", expectActivityLaunch "

    .line 2317
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2322
    const-string/jumbo v9, ", caller\'s uid "

    .line 2317
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2317
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2323
    const-string/jumbo v9, ", pid "

    .line 2317
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2323
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 2317
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "response is null"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2327
    :cond_1
    if-nez p2, :cond_2

    .line 2328
    :try_start_0
    const-string/jumbo v6, "AccountManagerService"

    const-string/jumbo v8, "getAuthToken called with null account"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    const-string/jumbo v6, "account is null"

    const/4 v8, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 2330
    return-void

    .line 2332
    :cond_2
    if-nez p3, :cond_3

    .line 2333
    const-string/jumbo v6, "AccountManagerService"

    const-string/jumbo v8, "getAuthToken called with null authTokenType"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    const-string/jumbo v6, "authTokenType is null"

    const/4 v8, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2335
    return-void

    .line 2337
    :catch_0
    move-exception v35

    .line 2338
    .local v35, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to report error back to the client."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    return-void

    .line 2341
    .end local v35    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v43

    .line 2342
    .local v43, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v36

    .line 2346
    .local v36, "ident":J
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 2347
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .line 2348
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v8}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v9

    .line 2347
    invoke-interface {v6, v8, v9}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v33

    .line 2350
    .local v33, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2354
    if-eqz v33, :cond_5

    move-object/from16 v0, v33

    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v6, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v0, v6, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    move/from16 v28, v0

    .line 2357
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v27

    .line 2359
    .local v27, "callerUid":I
    if-nez v28, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v27

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v26

    .line 2362
    :goto_1
    const-string/jumbo v6, "androidPackageName"

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2364
    .local v10, "callerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v36

    .line 2366
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v34

    .line 2368
    .local v34, "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2370
    if-eqz v10, :cond_7

    move-object/from16 v0, v34

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2379
    const-string/jumbo v6, "callerUid"

    move-object/from16 v0, p6

    move/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2380
    const-string/jumbo v6, "callerPid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2382
    if-eqz p4, :cond_4

    .line 2383
    const-string/jumbo v6, "notifyOnAuthFailure"

    const/4 v8, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2386
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v38

    .line 2389
    .local v38, "identityToken":J
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/accounts/AccountManagerService;->calculatePackageSignatureDigest(Ljava/lang/String;)[B

    move-result-object v11

    .line 2393
    .local v11, "callerPkgSigDigest":[B
    if-nez v28, :cond_8

    if-eqz v26, :cond_8

    .line 2394
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2395
    .local v32, "authToken":Ljava/lang/String;
    if-eqz v32, :cond_8

    .line 2396
    new-instance v41, Landroid/os/Bundle;

    invoke-direct/range {v41 .. v41}, Landroid/os/Bundle;-><init>()V

    .line 2397
    .local v41, "result":Landroid/os/Bundle;
    const-string/jumbo v6, "authtoken"

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    const-string/jumbo v6, "authAccount"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    const-string/jumbo v6, "accountType"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2528
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2401
    return-void

    .line 2349
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v10    # "callerPkg":Ljava/lang/String;
    .end local v11    # "callerPkgSigDigest":[B
    .end local v27    # "callerUid":I
    .end local v32    # "authToken":Ljava/lang/String;
    .end local v33    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v38    # "identityToken":J
    .end local v41    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    .line 2350
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2349
    throw v6

    .line 2354
    .restart local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v33    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_5
    const/16 v28, 0x0

    .local v28, "customTokens":Z
    goto/16 :goto_0

    .line 2359
    .end local v28    # "customTokens":Z
    .restart local v27    # "callerUid":I
    :cond_6
    const/16 v26, 0x1

    .local v26, "permissionGranted":Z
    goto/16 :goto_1

    .line 2367
    .end local v26    # "permissionGranted":Z
    .restart local v10    # "callerPkg":Ljava/lang/String;
    :catchall_1
    move-exception v6

    .line 2368
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2367
    throw v6

    .line 2372
    .restart local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v6, "Uid %s is attempting to illegally masquerade as package %s!"

    .line 2371
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 2373
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v8, v12

    .line 2374
    const/4 v9, 0x1

    aput-object v10, v8, v9

    .line 2371
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    .line 2375
    .local v40, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    move-object/from16 v0, v40

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2405
    .end local v40    # "msg":Ljava/lang/String;
    .restart local v11    # "callerPkgSigDigest":[B
    .restart local v38    # "identityToken":J
    :cond_8
    if-eqz v28, :cond_a

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 2411
    :try_start_4
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accounts/AccountManagerService;->readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v42

    .line 2417
    .local v42, "token":Ljava/lang/String;
    if-eqz v42, :cond_a

    .line 2418
    const-string/jumbo v6, "AccountManagerService"

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2419
    const-string/jumbo v6, "AccountManagerService"

    const-string/jumbo v8, "getAuthToken: cache hit ofr custom token authenticator."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :cond_9
    new-instance v41, Landroid/os/Bundle;

    invoke-direct/range {v41 .. v41}, Landroid/os/Bundle;-><init>()V

    .line 2422
    .restart local v41    # "result":Landroid/os/Bundle;
    const-string/jumbo v6, "authtoken"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    const-string/jumbo v6, "authAccount"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    const-string/jumbo v6, "accountType"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2528
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2426
    return-void

    .line 2430
    .end local v41    # "result":Landroid/os/Bundle;
    .end local v42    # "token":Ljava/lang/String;
    :cond_a
    :try_start_5
    new-instance v12, Lcom/android/server/accounts/AccountManagerService$8;

    .line 2433
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2436
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2435
    const/16 v19, 0x0

    .line 2437
    const/16 v21, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p0

    move-object v15, v7

    move-object/from16 v16, p1

    move/from16 v18, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p2

    move-object/from16 v24, p3

    move/from16 v25, p4

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v7

    .line 2430
    invoke-direct/range {v12 .. v31}, Lcom/android/server/accounts/AccountManagerService$8;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    invoke-virtual {v12}, Lcom/android/server/accounts/AccountManagerService$8;->bind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2528
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2314
    return-void

    .line 2527
    .end local v11    # "callerPkgSigDigest":[B
    :catchall_2
    move-exception v6

    .line 2528
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2527
    throw v6
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2261
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "accountType is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2262
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "authTokenType is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2264
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v14

    .line 2265
    .local v14, "callingUid":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    .line 2266
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2

    .line 2267
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "can only call from system"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2269
    :cond_2
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 2270
    .local v15, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 2272
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 2273
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$7;

    const/4 v8, 0x0

    .line 2274
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2275
    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 2273
    invoke-direct/range {v2 .. v13}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$7;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2303
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2260
    return-void

    .line 2302
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    .line 2303
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2302
    throw v2
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x2

    .line 1034
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1035
    .local v0, "callingUid":I
    const-string/jumbo v1, "AccountManagerService"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    const-string/jumbo v1, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAuthenticatorTypes: for user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1038
    const-string/jumbo v5, " caller\'s uid "

    .line 1036
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1039
    const-string/jumbo v5, ", pid "

    .line 1036
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1039
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1036
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    new-instance v1, Ljava/lang/SecurityException;

    .line 1045
    const-string/jumbo v4, "User %s tying to get authenticator types for %s"

    .line 1044
    new-array v5, v6, [Ljava/lang/Object;

    .line 1046
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1047
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1044
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1043
    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1050
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1052
    .local v2, "identityToken":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1055
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1052
    return-object v1

    .line 1054
    :catchall_0
    move-exception v1

    .line 1055
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1054
    throw v1
.end method

.method getCeDatabaseName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4533
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 4534
    const-string/jumbo v2, "accounts_ce.db"

    .line 4533
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4535
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getDeDatabaseName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4526
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 4527
    const-string/jumbo v2, "accounts_de.db"

    .line 4526
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4528
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v9, 0x2

    .line 904
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 905
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 906
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPassword: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 907
    const-string/jumbo v8, ", caller\'s uid "

    .line 906
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 907
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 906
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 908
    const-string/jumbo v8, ", pid "

    .line 906
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 908
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 906
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 911
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 912
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 914
    const-string/jumbo v6, "uid %s cannot get secrets for accounts of type: %s"

    .line 913
    new-array v7, v9, [Ljava/lang/Object;

    .line 915
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 916
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 913
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 917
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 919
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 921
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 922
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 924
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 922
    return-object v6

    .line 923
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    .line 924
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 923
    throw v6
.end method

.method getPreNDatabaseName(I)Ljava/lang/String;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 4499
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    .line 4500
    .local v2, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    .line 4501
    const-string/jumbo v5, "accounts.db"

    .line 4500
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4502
    .local v0, "databaseFile":Ljava/io/File;
    if-nez p1, :cond_0

    .line 4507
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "accounts.db"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4508
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4521
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 4510
    .restart local v1    # "oldFile":Ljava/io/File;
    :cond_1
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 4511
    .local v3, "userDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4512
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4513
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User dir cannot be created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4516
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4517
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User dir cannot be migrated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 946
    const-string/jumbo v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 947
    const-string/jumbo v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPreviousName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 948
    const-string/jumbo v6, ", caller\'s uid "

    .line 947
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 948
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 947
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 949
    const-string/jumbo v6, ", pid "

    .line 947
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 949
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 947
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "account is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 952
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 953
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 955
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 956
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 958
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 956
    return-object v4

    .line 957
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    .line 958
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 957
    throw v4
.end method

.method public getRunningAccounts()[Landroid/accounts/AccountAndUser;
    .locals 3

    .prologue
    .line 3731
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3736
    .local v1, "runningUserIds":[I
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v2

    return-object v2

    .line 3732
    .end local v1    # "runningUserIds":[I
    :catch_0
    move-exception v0

    .line 3734
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .locals 14
    .param p1, "userId"    # I

    .prologue
    .line 3926
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p1

    .line 3927
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v10

    .line 3928
    .local v10, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3929
    .local v9, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v11, 0x0

    .line 3931
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, v10, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3932
    const-string/jumbo v1, "shared_accounts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 3933
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3931
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3934
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3935
    const-string/jumbo v0, "name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3936
    .local v12, "nameIndex":I
    const-string/jumbo v0, "type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 3938
    .local v13, "typeIndex":I
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3939
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3938
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3940
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3943
    .end local v12    # "nameIndex":I
    .end local v13    # "typeIndex":I
    :cond_1
    if-eqz v11, :cond_2

    .line 3944
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3947
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Landroid/accounts/Account;

    .line 3948
    .local v8, "accountArray":[Landroid/accounts/Account;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3949
    return-object v8

    .line 3942
    .end local v8    # "accountArray":[Landroid/accounts/Account;
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 3943
    if-eqz v11, :cond_3

    .line 3944
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3942
    :cond_3
    throw v0
.end method

.method protected getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 747
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v7

    .line 748
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 749
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    .line 750
    .local v5, "validateAccounts":Z
    if-nez v0, :cond_0

    .line 751
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getPreNDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 752
    .local v4, "preNDbFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDeDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 753
    .local v2, "deDbFile":Ljava/io/File;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, p1, v4, v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 755
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 754
    invoke-direct {p0, v6, v0}, Lcom/android/server/accounts/AccountManagerService;->initializeDebugDbSizeAndCompileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 756
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 757
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 758
    const/4 v5, 0x1

    .line 761
    .end local v2    # "deDbFile":Ljava/io/File;
    .end local v4    # "preNDbFile":Ljava/io/File;
    :cond_0
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->isCeDatabaseAttached()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 762
    const-string/jumbo v6, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is unlocked - opening CE database"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v8, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 764
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getPreNDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 765
    .local v3, "preNDatabaseFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getCeDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 766
    .local v1, "ceDatabaseFile":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v3, v1}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;

    .line 767
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v6, v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->attachCeDatabase(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8

    .line 769
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 771
    .end local v1    # "ceDatabaseFile":Ljava/io/File;
    .end local v3    # "preNDatabaseFile":Ljava/io/File;
    :cond_1
    if-eqz v5, :cond_2

    .line 772
    const/4 v6, 0x1

    invoke-direct {p0, v0, v6}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit v7

    .line 774
    return-object v0

    .line 763
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v8

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 747
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v5    # "validateAccounts":Z
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 998
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 999
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1000
    const-string/jumbo v6, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 1001
    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 1000
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1002
    .local v4, "msg":Ljava/lang/String;
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1005
    :cond_1
    if-nez p2, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "key is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1006
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1007
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1009
    const-string/jumbo v6, "uid %s cannot get user data for accounts of type: %s"

    .line 1008
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 1010
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 1011
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 1008
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1012
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1014
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1015
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " data is locked. callingUid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 v6, 0x0

    return-object v6

    .line 1018
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1020
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1021
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1022
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1023
    const/4 v6, 0x0

    .line 1028
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1023
    return-object v6

    .line 1025
    :cond_5
    :try_start_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1028
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1025
    return-object v6

    .line 1021
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1027
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v6

    .line 1028
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1027
    throw v6
.end method

.method grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 5626
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5627
    :cond_0
    const-string/jumbo v7, "AccountManagerService"

    const-string/jumbo v8, "grantAppPermission: called with invalid arguments"

    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9}, Ljava/lang/Exception;-><init>()V

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5628
    return-void

    .line 5630
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 5631
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v8, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 5632
    :try_start_0
    iget-object v7, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 5633
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5635
    :try_start_1
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 5636
    .local v0, "accountId":J
    const-wide/16 v10, 0x0

    cmp-long v7, v0, v10

    if-ltz v7, :cond_2

    .line 5637
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 5638
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "accounts_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5639
    const-string/jumbo v7, "auth_token_type"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5640
    const-string/jumbo v7, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5641
    const-string/jumbo v7, "grants"

    const-string/jumbo v9, "accounts_id"

    invoke-virtual {v3, v7, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 5642
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5645
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5647
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 5648
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 5647
    invoke-virtual {p0, v7, v9}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 5650
    const/4 v7, 0x1

    invoke-direct {p0, p1, p3, v7}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    .line 5655
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5654
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 5656
    .local v4, "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v8, Lcom/android/server/accounts/AccountManagerService$-void_grantAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;

    invoke-direct {v8, v4, p1, p3}, Lcom/android/server/accounts/AccountManagerService$-void_grantAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v7, v8}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5644
    .end local v0    # "accountId":J
    .end local v4    # "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .end local v5    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    .line 5645
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5644
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5631
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .line 5625
    .restart local v0    # "accountId":J
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "listener$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v5, 0x0

    .line 3449
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    .line 3450
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Can be called only by system UID"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3452
    :cond_0
    const-string/jumbo v3, "account cannot be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3453
    const-string/jumbo v3, "packageName cannot be null"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3454
    const-string/jumbo v3, "userHandle cannot be null"

    invoke-static {p3, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3456
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 3458
    .local v2, "userId":I
    const-string/jumbo v3, "user must be concrete"

    const v4, 0x7fffffff

    invoke-static {v2, v5, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 3461
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 3462
    .local v1, "uid":I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3463
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .line 3464
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v5
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 1399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1400
    .local v6, "callingUid":I
    const-string/jumbo v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasFeatures: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1402
    const-string/jumbo v3, ", response "

    .line 1401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1403
    const-string/jumbo v3, ", features "

    .line 1401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1403
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1404
    const-string/jumbo v3, ", caller\'s uid "

    .line 1401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1405
    const-string/jumbo v3, ", pid "

    .line 1401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1405
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1401
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1408
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1409
    :cond_2
    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "features is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1410
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1411
    .local v7, "userId":I
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v7, p4}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V

    .line 1414
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    .line 1416
    .local v8, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1417
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1398
    return-void

    .line 1418
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    .line 1419
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1418
    throw v0
.end method

.method protected installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 5280
    const-string/jumbo v0, "android"

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Ljava/lang/String;I)V

    .line 5279
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    .prologue
    .line 1875
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1876
    .local v1, "callerUid":I
    const-string/jumbo v6, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1877
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalidateAuthToken: accountType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1878
    const-string/jumbo v8, ", caller\'s uid "

    .line 1877
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1879
    const-string/jumbo v8, ", pid "

    .line 1877
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1879
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1877
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "accountType is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1882
    :cond_1
    if-nez p2, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "authToken is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1883
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1884
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 1886
    .local v4, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1887
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1888
    :try_start_1
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1889
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1891
    :try_start_2
    invoke-direct {p0, v0, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateCustomTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1895
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1899
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1874
    return-void

    .line 1894
    :catchall_0
    move-exception v6

    .line 1895
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1894
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1887
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit v7

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1898
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_2
    move-exception v6

    .line 1899
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1898
    throw v6
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 19
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "statusToken"    # Ljava/lang/String;

    .prologue
    .line 3315
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3316
    const-string/jumbo v2, "AccountManagerService"

    .line 3317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCredentialsUpdateSuggested: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3318
    const-string/jumbo v4, ", caller\'s uid "

    .line 3317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3318
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3319
    const-string/jumbo v4, ", pid "

    .line 3317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3319
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 3317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3316
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    :cond_0
    if-nez p1, :cond_1

    .line 3322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3324
    :cond_1
    if-nez p2, :cond_2

    .line 3325
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3327
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3328
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "status token is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3331
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 3333
    .local v17, "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3335
    const-string/jumbo v2, "uid %s cannot stat add account session."

    .line 3334
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 3336
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 3334
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 3337
    .local v16, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3340
    .end local v16    # "msg":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 3341
    .local v18, "usrId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v14

    .line 3343
    .local v14, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 3344
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$16;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3345
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 3344
    const/4 v8, 0x0

    .line 3345
    const/4 v9, 0x0

    .line 3346
    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 3344
    invoke-direct/range {v2 .. v13}, Lcom/android/server/accounts/AccountManagerService$16;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$16;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3400
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3314
    return-void

    .line 3399
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    .line 3400
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3399
    throw v2
.end method

.method public onAccountAccessed(Ljava/lang/String;)V
    .locals 10
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4084
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4085
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_0

    .line 4086
    return-void

    .line 4088
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 4089
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4091
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, v6, v5

    .line 4092
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v0}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4095
    const/4 v8, 0x0

    invoke-direct {p0, v0, v8, v1}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 4096
    const-string/jumbo v8, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 4097
    const/4 v9, 0x1

    .line 4096
    invoke-virtual {p0, v0, v8, v1, v9}, Lcom/android/server/accounts/AccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4091
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4102
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4083
    return-void

    .line 4101
    :catchall_0
    move-exception v5

    .line 4102
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4101
    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5139
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V
    .locals 2
    .param p1, "desc"    # Landroid/accounts/AuthenticatorDescription;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    .prologue
    .line 899
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 898
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    .prologue
    .line 898
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    .end local p1    # "desc":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 513
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 514
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 518
    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "Account Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    :cond_0
    throw v0
.end method

.method onUnlockUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 868
    const-string/jumbo v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 874
    if-ge p1, v3, :cond_1

    return-void

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 875
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->syncSharedAccounts(I)V

    .line 867
    return-void
.end method

.method onUserUnlocked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 864
    const-string/jumbo v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->onUnlockUser(I)V

    .line 863
    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 2004
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2005
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2006
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "peekAuthToken: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2007
    const-string/jumbo v8, ", authTokenType "

    .line 2006
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2008
    const-string/jumbo v8, ", caller\'s uid "

    .line 2006
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2009
    const-string/jumbo v8, ", pid "

    .line 2006
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2009
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2006
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2012
    :cond_1
    if-nez p2, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "authTokenType is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2013
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2014
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2016
    const-string/jumbo v6, "uid %s cannot peek the authtokens associated with accounts of type: %s"

    .line 2015
    new-array v7, v10, [Ljava/lang/Object;

    .line 2017
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 2018
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 2015
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2019
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2021
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2022
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Authtoken not available - user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " data is locked. callingUid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    return-object v9

    .line 2026
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2028
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2029
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 2031
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2029
    return-object v6

    .line 2030
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    .line 2031
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2030
    throw v6
.end method

.method protected readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;

    .prologue
    .line 5890
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5891
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 5892
    .local v0, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 5894
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5895
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 5896
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5898
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 5890
    .end local v0    # "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 5936
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 5937
    .local v9, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ceDb.authtokens"

    .line 5938
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    .line 5939
    const-string/jumbo v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    .line 5940
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 5937
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5943
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5944
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5945
    .local v11, "type":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5946
    .local v8, "authToken":Ljava/lang/String;
    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5948
    .end local v8    # "authToken":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 5949
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5948
    throw v0

    .line 5949
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5951
    return-object v9
.end method

.method protected readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "tokenType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "pkgSigDigest"    # [B

    .prologue
    .line 5868
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5869
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/accounts/TokenCache;->get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 5868
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 5916
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 5917
    .local v10, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ceDb.extras"

    .line 5918
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    .line 5919
    const-string/jumbo v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    .line 5920
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 5917
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5923
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5924
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5925
    .local v9, "tmpkey":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5926
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5928
    .end local v9    # "tmpkey":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 5929
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5928
    throw v0

    .line 5929
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5931
    return-object v10
.end method

.method protected readUserDataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 5904
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 5905
    .local v1, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 5907
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5908
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v1

    .line 5909
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5911
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 1
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z

    .prologue
    .line 1619
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1615
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    .line 1614
    return-void
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .locals 26
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 1625
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1626
    .local v11, "callingUid":I
    const-string/jumbo v4, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1627
    const-string/jumbo v4, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeAccount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1628
    const-string/jumbo v7, ", response "

    .line 1627
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1629
    const-string/jumbo v7, ", caller\'s uid "

    .line 1627
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1630
    const-string/jumbo v7, ", pid "

    .line 1627
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1630
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1627
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1631
    const-string/jumbo v7, ", for user id "

    .line 1627
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "response is null"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1634
    :cond_1
    if-nez p2, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "account is null"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1636
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v11, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1637
    new-instance v4, Ljava/lang/SecurityException;

    .line 1639
    const-string/jumbo v6, "User %s tying remove account for %s"

    .line 1638
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 1640
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v7, v13

    .line 1641
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v7, v13

    .line 1638
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1637
    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1648
    :cond_3
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v25

    .line 1649
    .local v25, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11, v6}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1650
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1657
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1660
    :try_start_0
    const-string/jumbo v4, "User cannot modify accounts"

    .line 1659
    const/16 v6, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1663
    :goto_0
    return-void

    .line 1652
    :cond_5
    const-string/jumbo v4, "uid %s cannot remove accounts of type: %s"

    .line 1651
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1653
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v12, 0x0

    aput-object v7, v6, v12

    .line 1654
    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v7, v6, v12

    .line 1651
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 1655
    .local v19, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1665
    .end local v19    # "msg":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1668
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    .line 1667
    const/16 v6, 0x65

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1671
    :goto_1
    return-void

    .line 1673
    :cond_7
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 1674
    .local v20, "identityToken":J
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v10

    .line 1675
    .local v10, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 1676
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 1678
    :try_start_2
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1677
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "pair$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Pair;

    .line 1679
    .local v22, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1680
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1681
    .local v18, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1676
    .end local v18    # "id":I
    .end local v22    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v23    # "pair$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .restart local v23    # "pair$iterator":Ljava/util/Iterator;
    :cond_9
    monitor-exit v6

    .line 1685
    iget-object v4, v10, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1686
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v8

    .line 1689
    .local v8, "accountId":J
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get6()Ljava/lang/String;

    move-result-object v6

    .line 1690
    const-string/jumbo v7, "accounts"

    move-object/from16 v4, p0

    .line 1687
    invoke-direct/range {v4 .. v11}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1695
    :try_start_3
    new-instance v12, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;

    move-object/from16 v13, p0

    move-object v14, v10

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move/from16 v17, p3

    invoke-direct/range {v12 .. v17}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    invoke-virtual {v12}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1697
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1624
    return-void

    .line 1696
    :catchall_1
    move-exception v4

    .line 1697
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1696
    throw v4

    .line 1669
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    .end local v10    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v20    # "identityToken":J
    .end local v23    # "pair$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v24

    .local v24, "re":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 1661
    .end local v24    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v24

    .restart local v24    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 14
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 1703
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1704
    .local v7, "callingUid":I
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1705
    const-string/jumbo v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAccountExplicitly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1706
    const-string/jumbo v3, ", caller\'s uid "

    .line 1705
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1707
    const-string/jumbo v3, ", pid "

    .line 1705
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1707
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1705
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 1710
    .local v11, "userId":I
    if-nez p1, :cond_1

    .line 1715
    const-string/jumbo v0, "AccountManagerService"

    const-string/jumbo v2, "account is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    return v12

    .line 1717
    :cond_1
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1719
    const-string/jumbo v0, "uid %s cannot explicitly add accounts of type: %s"

    .line 1718
    new-array v2, v13, [Ljava/lang/Object;

    .line 1720
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    .line 1721
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v3, v2, v12

    .line 1718
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1722
    .local v10, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1724
    .end local v10    # "msg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 1725
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1726
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 1729
    .local v4, "accountId":J
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get6()Ljava/lang/String;

    move-result-object v2

    .line 1730
    const-string/jumbo v3, "accounts"

    move-object v0, p0

    .line 1727
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1734
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    .line 1736
    .local v8, "identityToken":J
    :try_start_0
    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1738
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1736
    return v0

    .line 1737
    :catchall_0
    move-exception v0

    .line 1738
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1737
    throw v0
.end method

.method protected removeAccountInternal(Landroid/accounts/Account;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1793
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 1792
    return-void
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    .prologue
    .line 3906
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z

    move-result v0

    return v0
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 15
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 1483
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1484
    .local v3, "callingUid":I
    const-string/jumbo v11, "AccountManagerService"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1485
    const-string/jumbo v11, "AccountManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "renameAccount: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1486
    const-string/jumbo v13, ", caller\'s uid "

    .line 1485
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1487
    const-string/jumbo v13, ", pid "

    .line 1485
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1487
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 1485
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_0
    if-nez p2, :cond_1

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "account is null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1490
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 1491
    .local v10, "userId":I
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v11, v3, v10}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1493
    const-string/jumbo v11, "uid %s cannot rename accounts of type: %s"

    .line 1492
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    .line 1494
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 1495
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 1492
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1496
    .local v5, "msg":Ljava/lang/String;
    new-instance v11, Ljava/lang/SecurityException;

    invoke-direct {v11, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1498
    .end local v5    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v6

    .line 1500
    .local v6, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1501
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v9

    .line 1502
    .local v9, "resultingAccount":Landroid/accounts/Account;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1503
    .local v8, "result":Landroid/os/Bundle;
    const-string/jumbo v11, "authAccount"

    iget-object v12, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const-string/jumbo v11, "accountType"

    iget-object v12, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string/jumbo v11, "accountAccessId"

    .line 1506
    invoke-virtual {v9}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v12

    .line 1505
    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1508
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1513
    :goto_0
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1482
    return-void

    .line 1509
    :catch_0
    move-exception v4

    .line 1510
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v11, "AccountManagerService"

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1512
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v8    # "result":Landroid/os/Bundle;
    .end local v9    # "resultingAccount":Landroid/accounts/Account;
    :catchall_0
    move-exception v11

    .line 1513
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1512
    throw v11
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 3883
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p3

    .line 3884
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 3885
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3886
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 3887
    .local v4, "sharedTableAccountId":J
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 3888
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    invoke-virtual {v9, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3890
    const-string/jumbo v0, "shared_accounts"

    .line 3892
    const-string/jumbo v2, "name=? AND type=?"

    .line 3893
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v10, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v3, v11

    iget-object v10, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v3, v11

    .line 3889
    invoke-virtual {v1, v0, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 3894
    .local v8, "r":I
    if-lez v8, :cond_0

    .line 3895
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v7

    .line 3896
    .local v7, "callingUid":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shared_accounts"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 3899
    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    .line 3901
    .end local v7    # "callingUid":I
    :cond_0
    if-lez v8, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    .line 2037
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2038
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2039
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAuthToken: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2040
    const-string/jumbo v8, ", authTokenType "

    .line 2039
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2041
    const-string/jumbo v8, ", caller\'s uid "

    .line 2039
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2042
    const-string/jumbo v8, ", pid "

    .line 2039
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2042
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2039
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2045
    :cond_1
    if-nez p2, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "authTokenType is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2046
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2047
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2049
    const-string/jumbo v6, "uid %s cannot set auth tokens associated with accounts of type: %s"

    .line 2048
    new-array v7, v9, [Ljava/lang/Object;

    .line 2050
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 2051
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 2048
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2052
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2054
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2056
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2057
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2059
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2036
    return-void

    .line 2058
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    .line 2059
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2058
    throw v6
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    .line 2065
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2066
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2067
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAuthToken: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2068
    const-string/jumbo v8, ", caller\'s uid "

    .line 2067
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2069
    const-string/jumbo v8, ", pid "

    .line 2067
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2069
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2067
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2072
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2073
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2075
    const-string/jumbo v6, "uid %s cannot set secrets for accounts of type: %s"

    .line 2074
    new-array v7, v9, [Ljava/lang/Object;

    .line 2076
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 2077
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 2074
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2078
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2080
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2082
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2083
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2085
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2064
    return-void

    .line 2084
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    .line 2085
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2084
    throw v6
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    .line 2164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2165
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2166
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setUserData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2167
    const-string/jumbo v8, ", key "

    .line 2166
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2168
    const-string/jumbo v8, ", caller\'s uid "

    .line 2166
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2169
    const-string/jumbo v8, ", pid "

    .line 2166
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2169
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2166
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :cond_0
    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "key is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2172
    :cond_1
    if-nez p1, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2173
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2174
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2176
    const-string/jumbo v6, "uid %s cannot set user data for accounts of type: %s"

    .line 2175
    new-array v7, v9, [Ljava/lang/Object;

    .line 2177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 2178
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 2175
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2179
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2181
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2183
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2184
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2185
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_4

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2191
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2186
    return-void

    .line 2188
    :cond_4
    :try_start_3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->setUserdataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2191
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2163
    return-void

    .line 2184
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2190
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v6

    .line 2191
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2190
    throw v6
.end method

.method public someUserHasAccount(Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v6, 0x0

    .line 3579
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v5, 0x3e8

    invoke-static {v5, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3580
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Only system can check for accounts across users"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3582
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3584
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v0

    .line 3585
    .local v0, "allAccounts":[Landroid/accounts/AccountAndUser;
    array-length v4, v0

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3586
    aget-object v4, v0, v1

    iget-object v4, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 3587
    const/4 v4, 0x1

    .line 3592
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3587
    return v4

    .line 3585
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3592
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3590
    return v6

    .line 3591
    .end local v0    # "allAccounts":[Landroid/accounts/AccountAndUser;
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    .line 3592
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3591
    throw v4
.end method

.method public startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 27
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;

    .prologue
    .line 2800
    const/4 v4, 0x1

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2801
    const-string/jumbo v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2802
    const-string/jumbo v4, "AccountManagerService"

    .line 2803
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAddAccountSession: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2804
    const-string/jumbo v6, ", response "

    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2805
    const-string/jumbo v6, ", authTokenType "

    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2806
    const-string/jumbo v6, ", requiredFeatures "

    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2806
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2807
    const-string/jumbo v6, ", expectActivityLaunch "

    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2808
    const-string/jumbo v6, ", caller\'s uid "

    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2808
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2809
    const-string/jumbo v6, ", pid "

    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2809
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2803
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2802
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    :cond_0
    if-nez p1, :cond_1

    .line 2812
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2814
    :cond_1
    if-nez p2, :cond_2

    .line 2815
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2818
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v25

    .line 2820
    .local v25, "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2822
    const-string/jumbo v4, "uid %s cannot stat add account session."

    .line 2821
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 2823
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 2821
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 2824
    .local v22, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2827
    .end local v22    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v26

    .line 2828
    .local v26, "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2831
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    .line 2830
    const/16 v5, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2834
    :goto_0
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 2835
    return-void

    .line 2837
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p2

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2840
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    .line 2839
    const/16 v5, 0x65

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2843
    :goto_1
    const/16 v4, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 2845
    return-void

    .line 2847
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    .line 2848
    .local v23, "pid":I
    if-nez p6, :cond_6

    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 2849
    .local v17, "options":Landroid/os/Bundle;
    :goto_2
    const-string/jumbo v4, "callerUid"

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2850
    const-string/jumbo v4, "callerPid"

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2853
    const-string/jumbo v4, "androidPackageName"

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2854
    .local v19, "callerPkg":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 2855
    const-string/jumbo v5, "android.permission.GET_PASSWORD"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2854
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v14

    .line 2857
    .local v14, "isPasswordForwardingAllowed":Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 2859
    .local v20, "identityToken":J
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 2860
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get8()Ljava/lang/String;

    move-result-object v4

    .line 2861
    const-string/jumbo v5, "accounts"

    .line 2860
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2862
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$11;

    .line 2867
    const/4 v11, 0x0

    .line 2868
    const/4 v12, 0x0

    .line 2869
    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v18, p2

    .line 2862
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$11;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$11;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2886
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2799
    return-void

    .line 2848
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v14    # "isPasswordForwardingAllowed":Z
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v19    # "callerPkg":Ljava/lang/String;
    .end local v20    # "identityToken":J
    :cond_6
    move-object/from16 v17, p6

    .restart local v17    # "options":Landroid/os/Bundle;
    goto :goto_2

    .line 2885
    .restart local v14    # "isPasswordForwardingAllowed":Z
    .restart local v19    # "callerPkg":Ljava/lang/String;
    .restart local v20    # "identityToken":J
    :catchall_0
    move-exception v4

    .line 2886
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2885
    throw v4

    .line 2841
    .end local v14    # "isPasswordForwardingAllowed":Z
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v19    # "callerPkg":Ljava/lang/String;
    .end local v20    # "identityToken":J
    .end local v23    # "pid":I
    :catch_0
    move-exception v24

    .local v24, "re":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 2832
    .end local v24    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v24

    .restart local v24    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 24
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "loginOptions"    # Landroid/os/Bundle;

    .prologue
    .line 3245
    const/4 v4, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3246
    const-string/jumbo v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3247
    const-string/jumbo v4, "AccountManagerService"

    .line 3248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startUpdateCredentialsSession: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3249
    const-string/jumbo v6, ", authTokenType "

    .line 3248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3249
    const-string/jumbo v6, ", expectActivityLaunch "

    .line 3248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3250
    const-string/jumbo v6, ", caller\'s uid "

    .line 3248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3251
    const-string/jumbo v6, ", pid "

    .line 3248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3251
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3247
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    :cond_0
    if-nez p1, :cond_1

    .line 3254
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3256
    :cond_1
    if-nez p2, :cond_2

    .line 3257
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "account is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3260
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 3262
    .local v22, "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3264
    const-string/jumbo v4, "uid %s cannot start update credentials session."

    .line 3263
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 3265
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 3263
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 3266
    .local v19, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3269
    .end local v19    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v23

    .line 3272
    .local v23, "userId":I
    const-string/jumbo v4, "androidPackageName"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3273
    .local v18, "callerPkg":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 3274
    const-string/jumbo v5, "android.permission.GET_PASSWORD"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 3273
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v14

    .line 3276
    .local v14, "isPasswordForwardingAllowed":Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 3278
    .local v20, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 3279
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$15;

    .line 3282
    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3284
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 3285
    const/4 v12, 0x0

    .line 3286
    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move/from16 v10, p4

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p5

    .line 3279
    invoke-direct/range {v4 .. v17}, Lcom/android/server/accounts/AccountManagerService$15;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$15;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3306
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3244
    return-void

    .line 3305
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    .line 3306
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3305
    throw v4
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5605
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    .line 5607
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 5608
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 5611
    :cond_0
    if-eqz p4, :cond_1

    .line 5612
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 5604
    :goto_0
    return-void

    .line 5614
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 19
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "loginOptions"    # Landroid/os/Bundle;

    .prologue
    .line 3202
    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3203
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3204
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCredentials: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3205
    const-string/jumbo v4, ", response "

    .line 3204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3206
    const-string/jumbo v4, ", authTokenType "

    .line 3204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3207
    const-string/jumbo v4, ", expectActivityLaunch "

    .line 3204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3208
    const-string/jumbo v4, ", caller\'s uid "

    .line 3204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3208
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3209
    const-string/jumbo v4, ", pid "

    .line 3204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3209
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 3204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3212
    :cond_1
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3213
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 3214
    .local v18, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 3216
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 3217
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$14;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3218
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x1

    .line 3219
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p4

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    .line 3217
    invoke-direct/range {v2 .. v15}, Lcom/android/server/accounts/AccountManagerService$14;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$14;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3234
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3201
    return-void

    .line 3233
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    .line 3234
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3233
    throw v2
.end method

.method public validateAccounts(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 539
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 535
    return-void
.end method

.method protected writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 5876
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 5877
    .local v0, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 5878
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 5879
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5881
    :cond_0
    if-nez p5, :cond_1

    .line 5882
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5875
    :goto_0
    return-void

    .line 5884
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 5850
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 5851
    .local v0, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 5852
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 5853
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5855
    :cond_0
    if-nez p5, :cond_1

    .line 5856
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5849
    :goto_0
    return-void

    .line 5858
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
