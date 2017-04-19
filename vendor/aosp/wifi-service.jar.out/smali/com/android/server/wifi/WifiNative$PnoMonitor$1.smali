.class Lcom/android/server/wifi/WifiNative$PnoMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNative$PnoMonitor;-><init>(Lcom/android/server/wifi/WifiNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNative$PnoMonitor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiNative$PnoMonitor;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    iget-object v2, v1, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mPnoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 701
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    iget-object v1, v1, Lcom/android/server/wifi/WifiNative$PnoMonitor;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->-get2(Lcom/android/server/wifi/WifiNative;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PNO timer expire, PNO should change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 702
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    iget-boolean v4, v4, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mExpectedPnoState:Z

    .line 701
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    iget-boolean v1, v1, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mCurrentPnoState:Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    iget-boolean v3, v3, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mExpectedPnoState:Z

    if-eq v1, v3, :cond_3

    .line 704
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    iget-object v1, v1, Lcom/android/server/wifi/WifiNative$PnoMonitor;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->-get2(Lcom/android/server/wifi/WifiNative;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "change PNO from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    iget-boolean v4, v4, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mCurrentPnoState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 705
    iget-object v4, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    iget-boolean v4, v4, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mExpectedPnoState:Z

    .line 704
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    iget-boolean v3, v3, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mExpectedPnoState:Z

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNative$PnoMonitor;->-wrap0(Lcom/android/server/wifi/WifiNative$PnoMonitor;Z)Z

    move-result v0

    .line 707
    .local v0, "ret":Z
    if-nez v0, :cond_2

    .line 708
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    iget-object v1, v1, Lcom/android/server/wifi/WifiNative$PnoMonitor;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->-get2(Lcom/android/server/wifi/WifiNative;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "set PNO failure"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v0    # "ret":Z
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wifi/WifiNative$PnoMonitor;->mWaitForTimer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 699
    return-void

    .line 711
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoMonitor$1;->this$1:Lcom/android/server/wifi/WifiNative$PnoMonitor;

    iget-object v1, v1, Lcom/android/server/wifi/WifiNative$PnoMonitor;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->-get2(Lcom/android/server/wifi/WifiNative;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "Do not change PNO since current is expected"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 700
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
