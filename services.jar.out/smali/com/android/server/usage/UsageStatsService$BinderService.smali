.class final Lcom/android/server/usage/UsageStatsService$BinderService;
.super Landroid/app/usage/IUsageStatsManager$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1239
    .local v0, "callingUid":I
    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_0

    .line 1240
    return v2

    .line 1242
    :cond_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x2b

    invoke-virtual {v4, v5, v0, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    .line 1244
    .local v1, "mode":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 1247
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 1250
    :cond_2
    if-nez v1, :cond_3

    :goto_1
    return v2

    :cond_3
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump UsageStats from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1376
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1376
    const-string/jumbo v1, ", uid="

    .line 1375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1376
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1377
    const-string/jumbo v1, " without permission "

    .line 1375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1377
    const-string/jumbo v1, "android.permission.DUMP"

    .line 1375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    return-void

    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/usage/UsageStatsService;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1372
    return-void
.end method

.method public isAppInactive(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1314
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v6, "isAppInactive"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v3, p2

    .line 1314
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1321
    .local v10, "token":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1322
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1321
    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/android/server/usage/UsageStatsService;->isAppIdleFilteredOrParoled(Ljava/lang/String;IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1324
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1321
    return v0

    .line 1316
    .end local v10    # "token":J
    :catch_0
    move-exception v8

    .line 1317
    .local v8, "re":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1323
    .end local v8    # "re":Landroid/os/RemoteException;
    .restart local v10    # "token":J
    :catchall_0
    move-exception v0

    .line 1324
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1323
    throw v0
.end method

.method public onCarrierPrivilegedAppsChanged()V
    .locals 3

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1366
    const-string/jumbo v1, "android.permission.BIND_CARRIER_SERVICES"

    .line 1367
    const-string/jumbo v2, "onCarrierPrivilegedAppsChanged can only be called by privileged apps."

    .line 1365
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->clearCarrierPrivilegedApps()V

    .line 1361
    return-void
.end method

.method public queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 12
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1277
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1278
    const/4 v3, 0x0

    return-object v3

    .line 1281
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1282
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1285
    .local v10, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryConfigurationStats(IIJJ)Ljava/util/List;

    move-result-object v2

    .line 1287
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    if-eqz v2, :cond_1

    .line 1288
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1291
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1288
    return-object v3

    .line 1291
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1293
    const/4 v3, 0x0

    return-object v3

    .line 1290
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    :catchall_0
    move-exception v3

    .line 1291
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1290
    throw v3
.end method

.method public queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 9
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1298
    invoke-direct {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1299
    const/4 v0, 0x0

    return-object v0

    .line 1302
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1303
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1305
    .local v6, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJ)Landroid/app/usage/UsageEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1307
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1305
    return-object v0

    .line 1306
    :catchall_0
    move-exception v0

    .line 1307
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1306
    throw v0
.end method

.method public queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 12
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1256
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1257
    const/4 v3, 0x0

    return-object v3

    .line 1260
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1261
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1263
    .local v10, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJ)Ljava/util/List;

    move-result-object v2

    .line 1265
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v2, :cond_1

    .line 1266
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1269
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1266
    return-object v3

    .line 1269
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1271
    const/4 v3, 0x0

    return-object v3

    .line 1268
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :catchall_0
    move-exception v3

    .line 1269
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1268
    throw v3
.end method

.method public setAppInactive(Ljava/lang/String;ZI)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1332
    .local v2, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1333
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1334
    const-string/jumbo v6, "setAppIdle"

    .line 1333
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1334
    const/4 v7, 0x0

    move v3, p3

    .line 1332
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 1338
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.CHANGE_APP_IDLE_STATE"

    .line 1339
    const-string/jumbo v3, "No permission to change app idle state"

    .line 1338
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1342
    .local v10, "token":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->getAppId(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 1343
    .local v8, "appId":I
    if-gez v8, :cond_0

    .line 1346
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1343
    return-void

    .line 1335
    .end local v8    # "appId":I
    .end local v10    # "token":J
    :catch_0
    move-exception v9

    .line 1336
    .local v9, "re":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1344
    .end local v9    # "re":Landroid/os/RemoteException;
    .restart local v8    # "appId":I
    .restart local v10    # "token":J
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService;->setAppIdle(Ljava/lang/String;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1346
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1329
    return-void

    .line 1345
    .end local v8    # "appId":I
    :catchall_0
    move-exception v0

    .line 1346
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1345
    throw v0
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;JI)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1353
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1354
    .local v6, "reason":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "from:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v6, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1356
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1357
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 1356
    invoke-interface/range {v0 .. v5}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    .line 1352
    return-void
.end method
