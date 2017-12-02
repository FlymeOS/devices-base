.class public Lcom/android/internal/app/ShutdownActivity;
.super Landroid/app/Activity;
.source "ShutdownActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownActivity"


# instance fields
.field private mConfirm:Z

.field private mReboot:Z

.field private mUserRequested:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ShutdownActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ShutdownActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ShutdownActivity;->mReboot:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ShutdownActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ShutdownActivity;->mUserRequested:Z

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 41
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.REBOOT"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/ShutdownActivity;->mReboot:Z

    .line 42
    const-string/jumbo v3, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z

    .line 43
    const-string/jumbo v3, "android.intent.extra.USER_REQUESTED_SHUTDOWN"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/ShutdownActivity;->mUserRequested:Z

    .line 44
    const-string/jumbo v3, "ShutdownActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate(): confirm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v2, Lcom/android/internal/app/ShutdownActivity$1;

    const-string/jumbo v3, "ShutdownActivity"

    invoke-direct {v2, p0, v3}, Lcom/android/internal/app/ShutdownActivity$1;-><init>(Lcom/android/internal/app/ShutdownActivity;Ljava/lang/String;)V

    .line 63
    .local v2, "thr":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 67
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
