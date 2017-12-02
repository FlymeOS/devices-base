.class final synthetic Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;
.super Ljava/lang/Object;
.source "UnsupportedDisplaySizeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UnsupportedDisplaySizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$service:Lcom/android/server/am/ActivityManagerService;

.field private synthetic val$this:Lcom/android/server/am/UnsupportedDisplaySizeDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UnsupportedDisplaySizeDialog;Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;->val$this:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    iput-object p2, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;->val$service:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;->val$this:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    iget-object v1, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;->val$service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->-com_android_server_am_UnsupportedDisplaySizeDialog_lambda$1(Lcom/android/server/am/ActivityManagerService;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
