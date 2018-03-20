.class final Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeActivityManagerServiceInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFlymeAppLocked(Lcom/android/server/am/ActivityManagerService;Landroid/content/Intent;)V
    .locals 9
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 22559
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 22560
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 22561
    .local v3, "ssp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 22563
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v3, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 22566
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    const-string/jumbo v4, "com.meizu.alphame"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 22567
    invoke-virtual {p0, v0, v7, v8}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;ZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 22558
    :cond_0
    return-void

    .line 22564
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method static getHomeThumbnail(Lcom/android/server/am/ActivityManagerService;)Landroid/app/ActivityManager$TaskThumbnail;
    .locals 5
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v4, 0x0

    .line 22506
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 22507
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_0

    .line 22508
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 22509
    .local v1, "homeTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getHomeThumbnail()Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v2

    return-object v2

    .line 22511
    .end local v1    # "homeTask":Lcom/android/server/am/TaskRecord;
    :cond_0
    return-object v4
.end method

.method static initFlymeExtraFields(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 22491
    const-string/jumbo v0, "access_control"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/AccessControlService;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mFlymeAccessControlService:Lcom/meizu/server/AccessControlService;

    .line 22490
    return-void
.end method

.method static isFlymeAccessApplication(Lcom/android/server/am/ActivityManagerService;ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)Z
    .locals 3
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "resultCode"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v0, 0x0

    .line 22594
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isAccessApplication()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne p3, v1, :cond_0

    iget-object v1, p3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v1, v2, :cond_0

    .line 22595
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 22594
    :cond_0
    return v0
.end method

.method static isFlymeClearTaskAtIndexLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)Z
    .locals 3
    .param p0, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 22601
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mFlymeSourceRecord:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 22602
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 22603
    .local v1, "start":I
    if-gez v1, :cond_0

    .line 22604
    const/4 v1, 0x0

    .line 22606
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    .line 22607
    const/4 v2, 0x1

    return v2

    .line 22601
    .end local v1    # "start":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mFlymeSourceRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .local v0, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    goto :goto_0
.end method

.method static isFlymeMayForbitPackage(Lcom/android/server/am/TaskRecord;)Z
    .locals 3
    .param p0, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 22496
    const-string/jumbo v1, "flyme_packagemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/FlymePackageManagerService;

    .line 22497
    .local v0, "fps":Lcom/android/server/pm/FlymePackageManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/FlymePackageManagerService;->getMayForbitPackage()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22498
    const/4 v1, 0x1

    return v1

    .line 22500
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static isFlymePackageShouldRestart(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22553
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 22554
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 22555
    .local v1, "ssp":Ljava/lang/String;
    const-string/jumbo v2, "com.meizu.alphame"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method static isFlymePackageShouldRestart(Landroid/os/Message;)Z
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 22547
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 22548
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "pkg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22549
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v2, "com.meizu.alphame"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method static isHomeTask(Lcom/android/server/am/ActivityManagerService;I)Z
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I

    .prologue
    .line 22516
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 22517
    .local v0, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 22518
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static isSystemUid()Z
    .locals 2

    .prologue
    .line 22572
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 22573
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static resetFlymeAccessControlService(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 22590
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mFlymeAccessControlService:Lcom/meizu/server/AccessControlService;

    invoke-virtual {v0}, Lcom/meizu/server/AccessControlService;->resetStatus()Z

    .line 22589
    return-void
.end method

.method static shouldKeepAppProcess(Lcom/android/server/am/ActivityManagerService;I)Z
    .locals 8
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I

    .prologue
    .line 22523
    const-string/jumbo v0, "com.android.dialer"

    .line 22524
    .local v0, "DIALER_PACKAGE":Ljava/lang/String;
    const-string/jumbo v1, "com.android.mms"

    .line 22525
    .local v1, "MMS_PACKAGE":Ljava/lang/String;
    const-string/jumbo v2, "com.android.settings"

    .line 22526
    .local v2, "SETTINGS_PACKAGE":Ljava/lang/String;
    const-string/jumbo v3, "com.tencent.mm"

    .line 22529
    .local v3, "TENCENTMM_PACKAGE":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 22530
    .local v6, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_2

    .line 22531
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 22532
    .local v4, "component":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 22533
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 22534
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 22536
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 22537
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 22536
    if-nez v7, :cond_1

    .line 22538
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 22536
    if-nez v7, :cond_1

    .line 22539
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 22536
    if-eqz v7, :cond_2

    .line 22540
    :cond_1
    const/4 v7, 0x1

    return v7

    .line 22543
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_2
    const/4 v7, 0x0

    return v7
.end method

.method static updateConfigurationExt(Lcom/android/server/am/ActivityManagerService;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "values"    # Landroid/content/res/Configuration;

    .prologue
    .line 22577
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1

    .line 22578
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    if-eqz v0, :cond_1

    .line 22579
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    if-nez v0, :cond_0

    .line 22580
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    iput v1, v0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    .line 22582
    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    if-nez v0, :cond_1

    .line 22583
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    iput v1, v0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    .line 22576
    :cond_1
    return-void
.end method
