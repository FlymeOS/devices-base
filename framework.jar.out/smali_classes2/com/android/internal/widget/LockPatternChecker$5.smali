.class final Lcom/android/internal/widget/LockPatternChecker$5;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternChecker$5$-java_lang_Boolean_doInBackground_java_lang_Void__args_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static synthetic -com_android_internal_widget_LockPatternChecker$5-mthref-0(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V
    .locals 0

    .prologue
    .line 226
    invoke-interface {p0}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onEarlyMatched()V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V
    .locals 0
    .param p1, "val$utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "val$password"    # Ljava/lang/String;
    .param p3, "val$userId"    # I
    .param p4, "val$callback"    # Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$password:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$userId:I

    iput-object p4, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$password:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$userId:I

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/internal/widget/LockPatternChecker$5$-java_lang_Boolean_doInBackground_java_lang_Void__args_LambdaImpl0;

    invoke-direct {v5, v4}, Lcom/android/internal/widget/LockPatternChecker$5$-java_lang_Boolean_doInBackground_java_lang_Void__args_LambdaImpl0;-><init>(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "ex":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternChecker$5;->mThrottleTimeout:I

    .line 229
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 224
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$5;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/LockPatternChecker$5;->mThrottleTimeout:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onChecked(ZI)V

    .line 234
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 234
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
