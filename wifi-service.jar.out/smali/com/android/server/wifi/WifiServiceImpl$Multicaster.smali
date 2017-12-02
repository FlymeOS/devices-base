.class Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Multicaster"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mTag:Ljava/lang/String;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1634
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mTag:Ljava/lang/String;

    .line 1635
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mUid:I

    .line 1636
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mBinder:Landroid/os/IBinder;

    .line 1638
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    :goto_0
    return-void

    .line 1639
    :catch_0
    move-exception v0

    .line 1640
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 1646
    const-string/jumbo v1, "WifiService"

    const-string/jumbo v2, "Multicaster binderDied"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get2(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 1648
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get2(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1649
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1650
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mUid:I

    invoke-static {v1, v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->-wrap0(Lcom/android/server/wifi/WifiServiceImpl;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1645
    return-void

    .line 1647
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 1660
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mUid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Multicaster{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlinkDeathRecipient()V
    .locals 2

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1655
    return-void
.end method
