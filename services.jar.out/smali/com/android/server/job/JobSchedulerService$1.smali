.class Lcom/android/server/job/JobSchedulerService$1;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v13, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 409
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/server/job/JobSchedulerService;->-wrap2(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, "pkgName":Ljava/lang/String;
    const-string/jumbo v13, "android.intent.extra.UID"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 411
    .local v8, "pkgUid":I
    if-eqz v7, :cond_3

    const/4 v13, -0x1

    if-eq v8, v13, :cond_3

    .line 413
    const-string/jumbo v13, "android.intent.extra.changed_component_name_list"

    .line 412
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "changedComponents":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 415
    const/4 v13, 0x0

    array-length v14, v2

    :goto_0
    if-ge v13, v14, :cond_1

    aget-object v3, v2, v13

    .line 416
    .local v3, "component":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 421
    :try_start_0
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 422
    .local v12, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 423
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v9, v7, v12}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v10

    .line 424
    .local v10, "state":I
    const/4 v13, 0x2

    if-eq v10, v13, :cond_0

    .line 425
    const/4 v13, 0x3

    if-ne v10, v13, :cond_1

    .line 430
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v14, 0x1

    invoke-virtual {v13, v8, v14}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v2    # "changedComponents":[Ljava/lang/String;
    .end local v3    # "component":Ljava/lang/String;
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "pkgUid":I
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "state":I
    .end local v12    # "userId":I
    :cond_1
    :goto_1
    return-void

    .line 415
    .restart local v2    # "changedComponents":[Ljava/lang/String;
    .restart local v3    # "component":Ljava/lang/String;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v8    # "pkgUid":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 449
    .end local v2    # "changedComponents":[Ljava/lang/String;
    .end local v3    # "component":Ljava/lang/String;
    :cond_3
    const-string/jumbo v13, "JobSchedulerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "PACKAGE_CHANGED for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " / uid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 451
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "pkgUid":I
    :cond_4
    const-string/jumbo v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 454
    const-string/jumbo v13, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_1

    .line 455
    const-string/jumbo v13, "android.intent.extra.UID"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 459
    .local v11, "uidRemoved":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v14, 0x1

    invoke-virtual {v13, v11, v14}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V

    goto :goto_1

    .line 461
    .end local v11    # "uidRemoved":I
    :cond_5
    const-string/jumbo v13, "android.intent.action.USER_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 462
    const-string/jumbo v13, "android.intent.extra.user_handle"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 466
    .restart local v12    # "userId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v13, v12}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUser(I)V

    goto :goto_1

    .line 467
    .end local v12    # "userId":I
    :cond_6
    const-string/jumbo v13, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 470
    const-string/jumbo v13, "android.intent.extra.UID"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 471
    .restart local v8    # "pkgUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 472
    .restart local v7    # "pkgName":Ljava/lang/String;
    const/4 v13, -0x1

    if-eq v8, v13, :cond_1

    .line 474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v14, v13, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 475
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v13, v13, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v13, v8}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v14

    .line 477
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v5, v13, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_1

    .line 478
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v13}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 483
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/job/JobSchedulerService$1;->setResultCode(I)V

    goto/16 :goto_1

    .line 474
    .end local v5    # "i":I
    .end local v6    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 477
    .restart local v5    # "i":I
    .restart local v6    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 488
    .end local v5    # "i":I
    .end local v6    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "pkgUid":I
    :cond_8
    const-string/jumbo v13, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 490
    const-string/jumbo v13, "android.intent.extra.UID"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 491
    .restart local v8    # "pkgUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 492
    .restart local v7    # "pkgName":Ljava/lang/String;
    const/4 v13, -0x1

    if-eq v8, v13, :cond_1

    .line 496
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v13, v7, v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUid(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 432
    .restart local v2    # "changedComponents":[Ljava/lang/String;
    .restart local v3    # "component":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    goto/16 :goto_1
.end method
