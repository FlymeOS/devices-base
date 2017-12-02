.class final Lcom/android/internal/widget/LockPatternChecker$4;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

.field final synthetic val$challenge:J

.field final synthetic val$isPattern:Z

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V
    .locals 0
    .param p1, "val$utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "val$password"    # Ljava/lang/String;
    .param p3, "val$isPattern"    # Z
    .param p4, "val$challenge"    # J
    .param p6, "val$userId"    # I
    .param p7, "val$callback"    # Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$password:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$isPattern:Z

    iput-wide p4, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$challenge:J

    iput p6, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$userId:I

    iput-object p7, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 190
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$4;->doInBackground([Ljava/lang/Void;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 7
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$password:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$isPattern:Z

    iget-wide v4, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$challenge:J

    iget v6, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$userId:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/LockPatternUtils;->verifyTiedProfileChallenge(Ljava/lang/String;ZJI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "ex":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->mThrottleTimeout:I

    .line 195
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 200
    check-cast p1, [B

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$4;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2
    .param p1, "result"    # [B

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    iget v1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->mThrottleTimeout:I

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;->onVerified([BI)V

    .line 200
    return-void
.end method
