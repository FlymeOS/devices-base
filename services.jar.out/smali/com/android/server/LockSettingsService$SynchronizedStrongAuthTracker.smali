.class Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynchronizedStrongAuthTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->this$0:Lcom/android/server/LockSettingsService;

    .line 194
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 193
    return-void
.end method


# virtual methods
.method public getStrongAuthForUser(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected handleStrongAuthRequiredChanged(II)V
    .locals 1
    .param p1, "strongAuthFlags"    # I
    .param p2, "userId"    # I

    .prologue
    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->handleStrongAuthRequiredChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 198
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method register()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/LockSettingsService;->-get4(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStrongAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 211
    return-void
.end method
