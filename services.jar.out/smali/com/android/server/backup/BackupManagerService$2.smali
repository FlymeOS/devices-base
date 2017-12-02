.class Lcom/android/server/backup/BackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1877
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1878
    .local v4, "action":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1879
    .local v21, "replacing":Z
    const/4 v5, 0x0

    .line 1880
    .local v5, "added":Z
    const/4 v7, 0x0

    .line 1881
    .local v7, "changed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 1882
    .local v12, "extras":Landroid/os/Bundle;
    const/16 v19, 0x0

    .line 1883
    .local v19, "pkgList":[Ljava/lang/String;
    const-string/jumbo v27, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_0

    .line 1884
    const-string/jumbo v27, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 1883
    if-nez v27, :cond_0

    .line 1885
    const-string/jumbo v27, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 1883
    if-eqz v27, :cond_a

    .line 1886
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v26

    .line 1887
    .local v26, "uri":Landroid/net/Uri;
    if-nez v26, :cond_1

    .line 1888
    return-void

    .line 1890
    :cond_1
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v20

    .line 1891
    .local v20, "pkgName":Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 1892
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19    # "pkgList":[Ljava/lang/String;
    const/16 v27, 0x0

    aput-object v20, v19, v27

    .line 1894
    :cond_2
    const-string/jumbo v27, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1897
    .local v7, "changed":Z
    if-eqz v7, :cond_7

    .line 1900
    :try_start_0
    const-string/jumbo v27, "android.intent.extra.changed_component_name_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1918
    .local v9, "components":[Ljava/lang/String;
    const/16 v24, 0x1

    .line 1919
    .local v24, "tryBind":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1920
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .line 1921
    .local v10, "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-eqz v10, :cond_4

    .line 1923
    iget-object v0, v10, Lcom/android/server/backup/BackupManagerService$TransportConnection;->mTransport:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    .line 1925
    .local v22, "svc":Landroid/content/pm/ServiceInfo;
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    .local v23, "svcName":Landroid/content/ComponentName;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 1927
    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 1932
    .local v8, "className":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1933
    .local v15, "isTransport":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v0, v9

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_3

    .line 1934
    aget-object v27, v9, v14

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 1936
    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    .line 1937
    .local v13, "flatName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1941
    const/4 v15, 0x1

    .line 1945
    .end local v13    # "flatName":Ljava/lang/String;
    :cond_3
    if-nez v15, :cond_4

    .line 1948
    const/16 v24, 0x0

    .end local v8    # "className":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "isTransport":Z
    .end local v22    # "svc":Landroid/content/pm/ServiceInfo;
    .end local v23    # "svcName":Landroid/content/ComponentName;
    :cond_4
    :try_start_2
    monitor-exit v28

    .line 1954
    if-eqz v24, :cond_5

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1959
    .local v6, "app":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V

    .line 1967
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v9    # "components":[Ljava/lang/String;
    .end local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .end local v24    # "tryBind":Z
    :cond_5
    :goto_1
    return-void

    .line 1933
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "components":[Ljava/lang/String;
    .restart local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .restart local v14    # "i":I
    .restart local v15    # "isTransport":Z
    .restart local v22    # "svc":Landroid/content/pm/ServiceInfo;
    .restart local v23    # "svcName":Landroid/content/ComponentName;
    .restart local v24    # "tryBind":Z
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1919
    .end local v8    # "className":Ljava/lang/String;
    .end local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .end local v14    # "i":I
    .end local v15    # "isTransport":Z
    .end local v22    # "svc":Landroid/content/pm/ServiceInfo;
    .end local v23    # "svcName":Landroid/content/ComponentName;
    :catchall_0
    move-exception v27

    monitor-exit v28

    throw v27
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1961
    .end local v9    # "components":[Ljava/lang/String;
    .end local v24    # "tryBind":Z
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 1970
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    const-string/jumbo v27, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1971
    .local v5, "added":Z
    const-string/jumbo v27, "android.intent.extra.REPLACING"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 1980
    .end local v5    # "added":Z
    .end local v7    # "changed":Z
    .end local v20    # "pkgName":Ljava/lang/String;
    .end local v21    # "replacing":Z
    .end local v26    # "uri":Landroid/net/Uri;
    :cond_8
    :goto_2
    if-eqz v19, :cond_9

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_c

    .line 1981
    :cond_9
    return-void

    .line 1972
    .local v5, "added":Z
    .local v7, "changed":Z
    .restart local v19    # "pkgList":[Ljava/lang/String;
    .restart local v21    # "replacing":Z
    :cond_a
    const-string/jumbo v27, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 1973
    const/4 v5, 0x1

    .line 1974
    const-string/jumbo v27, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .local v19, "pkgList":[Ljava/lang/String;
    goto :goto_2

    .line 1975
    .local v19, "pkgList":[Ljava/lang/String;
    :cond_b
    const-string/jumbo v27, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 1976
    const/4 v5, 0x0

    .line 1977
    const-string/jumbo v27, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .local v19, "pkgList":[Ljava/lang/String;
    goto :goto_2

    .line 1984
    .end local v5    # "added":Z
    .end local v7    # "changed":Z
    .end local v19    # "pkgList":[Ljava/lang/String;
    .end local v21    # "replacing":Z
    :cond_c
    const-string/jumbo v27, "android.intent.extra.UID"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 1985
    .local v25, "uid":I
    if-eqz v5, :cond_12

    .line 1986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 1987
    if-eqz v21, :cond_d

    .line 1992
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    .line 1994
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v28

    .line 1997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1998
    .local v16, "now":J
    const/16 v27, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v28, v27

    :goto_3
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    aget-object v18, v19, v28

    .line 2000
    .local v18, "packageName":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v27

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 2001
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/content/pm/PackageInfo;)Z

    move-result v27

    if-eqz v27, :cond_e

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    const-wide/16 v30, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 2016
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    monitor-enter v30
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2017
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .line 2018
    .restart local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-eqz v10, :cond_f

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    iget-object v0, v10, Lcom/android/server/backup/BackupManagerService$TransportConnection;->mTransport:Landroid/content/pm/ServiceInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->bindTransport(Landroid/content/pm/ServiceInfo;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_5
    :try_start_6
    monitor-exit v30
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1998
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :goto_6
    add-int/lit8 v27, v28, 0x1

    move/from16 v28, v27

    goto/16 :goto_3

    .line 1986
    .end local v16    # "now":J
    .end local v18    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v27

    monitor-exit v28

    throw v27

    .line 2008
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    .restart local v16    # "now":J
    .restart local v18    # "packageName":Ljava/lang/String;
    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2009
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit v30

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Lcom/android/server/backup/BackupManagerService;)V
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 2028
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v11

    .line 2031
    .restart local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v27, "BackupManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Can\'t resolve new app "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2008
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    :catchall_2
    move-exception v27

    :try_start_a
    monitor-exit v30

    throw v27
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_1

    .line 2024
    .restart local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :cond_f
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_5

    .line 2016
    .end local v10    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :catchall_3
    move-exception v27

    :try_start_c
    monitor-exit v30

    throw v27
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_1

    .line 2038
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v18    # "packageName":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    const-string/jumbo v28, "@pm@"

    invoke-static/range {v27 .. v28}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 1874
    .end local v16    # "now":J
    :cond_11
    :goto_7
    return-void

    .line 2040
    :cond_12
    if-nez v21, :cond_11

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 2047
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    monitor-exit v28

    goto :goto_7

    .line 2046
    :catchall_4
    move-exception v27

    monitor-exit v28

    throw v27
.end method
