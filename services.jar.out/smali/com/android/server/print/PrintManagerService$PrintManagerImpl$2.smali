.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z
    .locals 5
    .param p1, "userState"    # Lcom/android/server/print/UserState;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 711
    const/4 v3, 0x3

    .line 710
    invoke-virtual {p1, v3}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object v1

    .line 713
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    if-nez v1, :cond_0

    .line 714
    return v4

    .line 717
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 718
    .local v2, "numInstalledServices":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 719
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 721
    const/4 v3, 0x1

    return v3

    .line 718
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_2
    return v4
.end method

.method private hasPrintService(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 690
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.printservice.PrintService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 696
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v4

    .line 695
    const v5, 0x10000004

    .line 693
    invoke-virtual {v3, v1, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 698
    .local v0, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stoppedPackages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 760
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v7}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    return v7

    .line 761
    :cond_0
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v7}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 765
    :try_start_0
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v9

    .line 766
    const/4 v10, 0x0

    .line 765
    invoke-static {v7, v9, v10}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZ)Lcom/android/server/print/UserState;

    move-result-object v6

    .line 767
    .local v6, "userState":Lcom/android/server/print/UserState;
    const/4 v5, 0x0

    .line 770
    .local v5, "stoppedSomePackages":Z
    const/4 v7, 0x1

    .line 769
    invoke-virtual {v6, v7}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 771
    .local v2, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    if-nez v2, :cond_1

    .line 772
    const/4 v7, 0x0

    monitor-exit v8

    return v7

    .line 775
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 776
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/printservice/PrintServiceInfo;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 777
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 778
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "componentPackage":Ljava/lang/String;
    const/4 v7, 0x0

    array-length v9, p2

    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v4, p2, v7

    .line 780
    .local v4, "stoppedPackage":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_4

    .line 781
    if-nez p4, :cond_3

    .line 782
    const/4 v7, 0x1

    monitor-exit v8

    return v7

    .line 784
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 779
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 789
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "componentPackage":Ljava/lang/String;
    .end local v4    # "stoppedPackage":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    .line 790
    :try_start_2
    invoke-virtual {v6}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 792
    :cond_6
    const/4 v7, 0x0

    monitor-exit v8

    return v7

    .line 761
    .end local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/printservice/PrintServiceInfo;>;"
    .end local v5    # "stoppedSomePackages":Z
    .end local v6    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 798
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 799
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 800
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v3

    .line 802
    const/4 v4, 0x0

    .line 801
    invoke-static {v1, v3, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZ)Lcom/android/server/print/UserState;

    move-result-object v0

    .line 803
    .local v0, "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "userState":Lcom/android/server/print/UserState;
    :cond_1
    monitor-exit v2

    .line 797
    return-void

    .line 799
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 731
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZ)Lcom/android/server/print/UserState;

    move-result-object v0

    .line 733
    .local v0, "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 734
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 735
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    move-result v1

    .line 734
    if-eqz v1, :cond_2

    .line 736
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 740
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 729
    return-void

    .line 733
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 745
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZ)Lcom/android/server/print/UserState;

    move-result-object v0

    .line 748
    .local v0, "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 749
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 754
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 744
    return-void

    .line 748
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
