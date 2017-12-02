.class final synthetic Lcom/android/internal/widget/LockPatternChecker$5$-java_lang_Boolean_doInBackground_java_lang_Void__args_LambdaImpl0;
.super Ljava/lang/Object;
.source "LockPatternChecker.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternChecker$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_lang_Boolean_doInBackground_java_lang_Void__args_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$5$-java_lang_Boolean_doInBackground_java_lang_Void__args_LambdaImpl0;->val$-lambdaCtx:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    return-void
.end method


# virtual methods
.method public onEarlyMatched()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$5$-java_lang_Boolean_doInBackground_java_lang_Void__args_LambdaImpl0;->val$-lambdaCtx:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternChecker$5;->-com_android_internal_widget_LockPatternChecker$5-mthref-0(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    return-void
.end method
