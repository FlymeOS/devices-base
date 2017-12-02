.class Lcom/android/server/wifi/WifiLockManager$WifiLock;
.super Ljava/lang/Object;
.source "WifiLockManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiLock"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mMode:I

.field mTag:Ljava/lang/String;

.field mUid:I

.field mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/wifi/WifiLockManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiLockManager;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiLockManager;
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->this$0:Lcom/android/server/wifi/WifiLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p3, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mTag:Ljava/lang/String;

    .line 294
    iput-object p4, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mBinder:Landroid/os/IBinder;

    .line 295
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mUid:I

    .line 296
    iput p2, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mMode:I

    .line 297
    iput-object p5, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->this$0:Lcom/android/server/wifi/WifiLockManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiLockManager;->-wrap0(Lcom/android/server/wifi/WifiLockManager;Landroid/os/IBinder;)Z

    .line 317
    return-void
.end method

.method protected getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method protected getUid()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mUid:I

    return v0
.end method

.method protected getWorkSource()Landroid/os/WorkSource;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WifiLock{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlinkDeathRecipient()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 321
    return-void
.end method
