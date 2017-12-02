.class Lcom/android/server/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorThread"
.end annotation


# instance fields
.field private final mLocalLog:Landroid/util/LocalLog;

.field final synthetic this$0:Lcom/android/server/wifi/WifiMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiMonitor;Landroid/util/LocalLog;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiMonitor;
    .param p2, "localLog"    # Landroid/util/LocalLog;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/WifiMonitor;

    .line 729
    const-string/jumbo v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 730
    iput-object p2, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mLocalLog:Landroid/util/LocalLog;

    .line 728
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 734
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MonitorThread start with mConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/WifiMonitor;

    invoke-static {v3}, Lcom/android/server/wifi/WifiMonitor;->-get1(Lcom/android/server/wifi/WifiMonitor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/WifiMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMonitor;->-get1(Lcom/android/server/wifi/WifiMonitor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 740
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiMonitor"

    const-string/jumbo v2, "MonitorThread exit because mConnected is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_1
    :goto_0
    return-void

    .line 743
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/WifiMonitor;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMonitor;->-get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "eventStr":Ljava/lang/String;
    const-string/jumbo v1, "BSS-ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "BSS-REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 751
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/WifiMonitor;

    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiMonitor;->-wrap0(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiMonitor"

    const-string/jumbo v2, "Disconnecting from the supplicant, no more events"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 747
    :cond_4
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->-get0()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Event ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Event ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
