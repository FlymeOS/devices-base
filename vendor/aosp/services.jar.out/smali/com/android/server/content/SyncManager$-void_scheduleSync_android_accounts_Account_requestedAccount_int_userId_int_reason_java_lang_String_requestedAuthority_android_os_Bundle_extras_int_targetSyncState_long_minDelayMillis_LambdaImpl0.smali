.class final synthetic Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$account:Landroid/accounts/AccountAndUser;

.field private synthetic val$authority:Ljava/lang/String;

.field private synthetic val$finalExtras:Landroid/os/Bundle;

.field private synthetic val$minDelayMillis:J

.field private synthetic val$reason:I

.field private synthetic val$targetSyncState:I

.field private synthetic val$this:Lcom/android/server/content/SyncManager;

.field private synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJ)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$this:Lcom/android/server/content/SyncManager;

    iput-object p2, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$account:Landroid/accounts/AccountAndUser;

    iput p3, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$userId:I

    iput p4, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$reason:I

    iput-object p5, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$authority:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$finalExtras:Landroid/os/Bundle;

    iput p7, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$targetSyncState:I

    iput-wide p8, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$minDelayMillis:J

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$this:Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$account:Landroid/accounts/AccountAndUser;

    iget v3, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$userId:I

    iget v4, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$reason:I

    iget-object v5, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$authority:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$finalExtras:Landroid/os/Bundle;

    iget v7, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$targetSyncState:I

    iget-wide v8, p0, Lcom/android/server/content/SyncManager$-void_scheduleSync_android_accounts_Account_requestedAccount_int_userId_int_reason_java_lang_String_requestedAuthority_android_os_Bundle_extras_int_targetSyncState_long_minDelayMillis_LambdaImpl0;->val$minDelayMillis:J

    move-object v10, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/content/SyncManager;->-com_android_server_content_SyncManager_lambda$3(Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJLandroid/os/Bundle;)V

    return-void
.end method
