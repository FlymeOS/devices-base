.class public Lcom/android/server/am/UnsupportedDisplaySizeDialog;
.super Ljava/lang/Object;
.source "UnsupportedDisplaySizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;
    }
.end annotation


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v8, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 38
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p3, v3}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 39
    .local v1, "label":Ljava/lang/CharSequence;
    new-array v5, v8, [Ljava/lang/Object;

    .line 40
    const/4 v6, 0x0

    aput-object v1, v5, v6

    const v6, 0x10403b9

    .line 39
    invoke-virtual {p2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "message":Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    const v6, 0x104000a

    const/4 v7, 0x0

    .line 42
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 45
    const v6, 0x1090102

    .line 42
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    .line 49
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->create()V

    .line 51
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 52
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x7d2

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 55
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const-string/jumbo v6, "UnsupportedDisplaySizeDialog"

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    const v6, 0x1020338

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 58
    .local v0, "alwaysShow":Landroid/widget/CheckBox;
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 59
    new-instance v5, Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;

    invoke-direct {v5, p0, p1}, Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;-><init>(Lcom/android/server/am/UnsupportedDisplaySizeDialog;Lcom/android/server/am/ActivityManagerService;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_am_UnsupportedDisplaySizeDialog_lambda$1(Lcom/android/server/am/ActivityManagerService;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .prologue
    .line 60
    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 61
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    .line 62
    iget-object v1, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/CompatModePackages;->setPackageNotifyUnsupportedZoomLocked(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 0
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 75
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 71
    return-void
.end method
