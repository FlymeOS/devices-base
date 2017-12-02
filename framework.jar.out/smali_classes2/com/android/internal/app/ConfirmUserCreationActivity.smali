.class public Lcom/android/internal/app/ConfirmUserCreationActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ConfirmUserCreationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateUser"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountOptions:Landroid/os/PersistableBundle;

.field private mAccountType:Ljava/lang/String;

.field private mCanProceed:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private checkUserCreationRequirements()Ljava/lang/String;
    .locals 13

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "callingPackage":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 87
    new-instance v9, Ljava/lang/SecurityException;

    .line 88
    const-string/jumbo v10, "User Creation intent must be launched with startActivityForResult"

    .line 87
    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 92
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 99
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v10, "no_add_user"

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 100
    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v6, 0x0

    .line 102
    .local v6, "cantCreateUser":Z
    :goto_0
    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v5, 0x0

    .line 104
    .local v5, "cantCreateAnyMoreUsers":Z
    :goto_1
    new-instance v0, Landroid/accounts/Account;

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    invoke-direct {v0, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v0, "account":Landroid/accounts/Account;
    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 106
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/accounts/AccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v9

    .line 107
    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v11, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/os/UserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 106
    or-int v1, v9, v10

    .line 108
    :goto_2
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    .line 109
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "appName":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 111
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/app/Activity;->setResult(I)V

    .line 112
    const/4 v9, 0x0

    return-object v9

    .line 93
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appName":Ljava/lang/String;
    .end local v5    # "cantCreateAnyMoreUsers":Z
    .end local v6    # "cantCreateUser":Z
    :catch_0
    move-exception v8

    .line 94
    .local v8, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v9, Ljava/lang/SecurityException;

    .line 95
    const-string/jumbo v10, "Cannot find the calling package"

    .line 94
    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 99
    .end local v8    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v6, 0x1

    .restart local v6    # "cantCreateUser":Z
    goto :goto_0

    .line 100
    .end local v6    # "cantCreateUser":Z
    :cond_2
    const/4 v6, 0x1

    .restart local v6    # "cantCreateUser":Z
    goto :goto_0

    .line 102
    :cond_3
    const/4 v5, 0x1

    .restart local v5    # "cantCreateAnyMoreUsers":Z
    goto :goto_1

    .line 105
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_4
    const/4 v1, 0x0

    .local v1, "accountExists":Z
    goto :goto_2

    .line 113
    .end local v1    # "accountExists":Z
    .restart local v3    # "appName":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    .line 114
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/app/Activity;->setResult(I)V

    .line 115
    const/4 v9, 0x0

    return-object v9

    .line 116
    :cond_6
    if-eqz v1, :cond_7

    .line 117
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x10405ee

    invoke-virtual {p0, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "message":Ljava/lang/String;
    :goto_3
    return-object v7

    .line 119
    .end local v7    # "message":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x10405ef

    invoke-virtual {p0, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "message":Ljava/lang/String;
    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 126
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 127
    if-ne p2, v6, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    if-eqz v1, :cond_1

    .line 128
    const-string/jumbo v1, "CreateUser"

    const-string/jumbo v2, "Ok, creating user"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 130
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 131
    const-string/jumbo v1, "CreateUser"

    const-string/jumbo v2, "Couldn\'t create user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 133
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/UserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 136
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setResult(I)V

    .line 138
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 125
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.os.extra.USER_NAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    .line 58
    const-string/jumbo v3, "android.os.extra.USER_ACCOUNT_NAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    .line 59
    const-string/jumbo v3, "android.os.extra.USER_ACCOUNT_TYPE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    .line 61
    const-string/jumbo v3, "android.os.extra.USER_ACCOUNT_OPTIONS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 60
    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    .line 63
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    .line 65
    invoke-direct {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->checkUserCreationRequirements()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "message":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 69
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 72
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 73
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 74
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 77
    iget-boolean v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    if-eqz v3, :cond_1

    .line 78
    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 79
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 53
    return-void
.end method
