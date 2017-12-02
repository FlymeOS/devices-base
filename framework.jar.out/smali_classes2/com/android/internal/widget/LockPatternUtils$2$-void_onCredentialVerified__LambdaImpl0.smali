.class final synthetic Lcom/android/internal/widget/LockPatternUtils$2$-void_onCredentialVerified__LambdaImpl0;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onCredentialVerified__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$2$-void_onCredentialVerified__LambdaImpl0;->val$-lambdaCtx:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$2$-void_onCredentialVerified__LambdaImpl0;->val$-lambdaCtx:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$2;->-com_android_internal_widget_LockPatternUtils$2-mthref-0(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V

    return-void
.end method
