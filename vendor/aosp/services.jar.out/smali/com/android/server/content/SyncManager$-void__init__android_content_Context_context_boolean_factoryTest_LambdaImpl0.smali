.class final synthetic Lcom/android/server/content/SyncManager$-void__init__android_content_Context_context_boolean_factoryTest_LambdaImpl0;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__android_content_Context_context_boolean_factoryTest_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/content/SyncManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncManager$-void__init__android_content_Context_context_boolean_factoryTest_LambdaImpl0;->val$this:Lcom/android/server/content/SyncManager;

    return-void
.end method


# virtual methods
.method public onAppPermissionChanged(Landroid/accounts/Account;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/accounts/Account;
    .param p2, "arg1"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/content/SyncManager$-void__init__android_content_Context_context_boolean_factoryTest_LambdaImpl0;->val$this:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/content/SyncManager;->-com_android_server_content_SyncManager_lambda$2(Landroid/accounts/Account;I)V

    return-void
.end method
