.class final synthetic Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$account:Landroid/accounts/Account;

.field private synthetic val$this:Lcom/android/server/accounts/AccountManagerService;

.field private synthetic val$uid:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;I)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;->val$this:Lcom/android/server/accounts/AccountManagerService;

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;->val$account:Landroid/accounts/Account;

    iput p3, p0, Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;->val$uid:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;->val$this:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;->val$account:Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;->val$uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->-com_android_server_accounts_AccountManagerService_lambda$2(Landroid/accounts/Account;I)V

    return-void
.end method
