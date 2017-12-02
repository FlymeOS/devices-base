.class Lcom/android/internal/widget/LockPatternUtils$2;
.super Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternUtils;->wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$2$-void_onCredentialVerified__LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils;

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;


# direct methods
.method static synthetic -com_android_internal_widget_LockPatternUtils$2-mthref-0(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V
    .locals 0

    .prologue
    .line 1480
    invoke-interface {p0}, Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;->onEarlyMatched()V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "val$callback"    # Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$2;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$2;->val$callback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    invoke-direct {p0}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCredentialVerified()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$2;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->-get0(Lcom/android/internal/widget/LockPatternUtils;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$2;->val$callback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$2$-void_onCredentialVerified__LambdaImpl0;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/LockPatternUtils$2$-void_onCredentialVerified__LambdaImpl0;-><init>(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1479
    return-void
.end method
