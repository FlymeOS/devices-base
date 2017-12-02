.class Lcom/android/server/LockSettingsService$4;
.super Landroid/os/IProgressListener$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;
    .param p2, "val$latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/server/LockSettingsService$4;->this$0:Lcom/android/server/LockSettingsService;

    iput-object p2, p0, Lcom/android/server/LockSettingsService$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 817
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "unlockUser finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v0, p0, Lcom/android/server/LockSettingsService$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 816
    return-void
.end method

.method public onProgress(IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 812
    const-string/jumbo v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockUser progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void
.end method

.method public onStarted(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 807
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "unlockUser started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void
.end method
