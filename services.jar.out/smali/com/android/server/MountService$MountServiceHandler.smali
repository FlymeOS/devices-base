.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 604
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 603
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 609
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 611
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap8(Lcom/android/server/MountService;)V

    goto :goto_0

    .line 615
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap7(Lcom/android/server/MountService;)V

    goto :goto_0

    .line 619
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap1(Lcom/android/server/MountService;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 620
    const-string/jumbo v18, "MountService"

    const-string/jumbo v19, "fstrim requested, but no daemon connection yet; trying again"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MountService$MountServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 622
    const-wide/16 v20, 0x3e8

    .line 621
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/MountService$MountServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 626
    :cond_1
    const-string/jumbo v18, "MountService"

    const-string/jumbo v19, "Running fstrim idle maintenance"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->-set2(Lcom/android/server/MountService;J)J

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get7(Lcom/android/server/MountService;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-get6(Lcom/android/server/MountService;)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap3(Lcom/android/server/MountService;)Z

    move-result v14

    .line 640
    .local v14, "shouldBenchmark":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v19

    const-string/jumbo v20, "fstrim"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v14, :cond_2

    const-string/jumbo v18, "dotrimbench"

    :goto_2
    const/16 v22, 0x0

    aput-object v18, v21, v22

    invoke-virtual/range {v19 .. v21}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 647
    :goto_3
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    .line 648
    .local v5, "callback":Ljava/lang/Runnable;
    if-eqz v5, :cond_0

    .line 649
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 632
    .end local v5    # "callback":Ljava/lang/Runnable;
    .end local v14    # "shouldBenchmark":Z
    :catch_0
    move-exception v6

    .line 633
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "MountService"

    const-string/jumbo v19, "Unable to record last fstrim!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 640
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v14    # "shouldBenchmark":Z
    :cond_2
    :try_start_2
    const-string/jumbo v18, "dotrim"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 641
    :catch_1
    move-exception v11

    .line 642
    .local v11, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v18, "MountService"

    const-string/jumbo v19, "Failed to run fstrim!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 654
    .end local v11    # "ndce":Lcom/android/server/NativeDaemonConnectorException;
    .end local v14    # "shouldBenchmark":Z
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/storage/IMountShutdownObserver;

    .line 655
    .local v12, "obs":Landroid/os/storage/IMountShutdownObserver;
    const/4 v15, 0x0

    .line 657
    .local v15, "success":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v18

    const-string/jumbo v19, "volume"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, "shutdown"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/NativeDaemonEvent;->isClassOk()Z
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v15

    .line 660
    .end local v15    # "success":Z
    :goto_4
    if-eqz v12, :cond_0

    .line 662
    if-eqz v15, :cond_3

    const/16 v18, 0x0

    :goto_5
    :try_start_4
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 663
    :catch_2
    move-exception v8

    .local v8, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 662
    .end local v8    # "ignored":Landroid/os/RemoteException;
    :cond_3
    const/16 v18, -0x1

    goto :goto_5

    .line 669
    .end local v12    # "obs":Landroid/os/storage/IMountShutdownObserver;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/storage/VolumeInfo;

    .line 670
    .local v17, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/MountService;->-wrap0(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 671
    const-string/jumbo v18, "MountService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Ignoring mount "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " due to policy"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 675
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v18

    const-string/jumbo v19, "volume"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, "mount"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aput-object v21, v20, v22

    move-object/from16 v0, v17

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    .line 676
    move-object/from16 v0, v17

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    .line 675
    invoke-virtual/range {v18 .. v20}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 677
    :catch_3
    move-exception v9

    .local v9, "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto/16 :goto_0

    .line 682
    .end local v9    # "ignored":Lcom/android/server/NativeDaemonConnectorException;
    .end local v17    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/storage/VolumeInfo;

    .line 683
    .restart local v17    # "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/MountService;->unmount(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 687
    .end local v17    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/storage/StorageVolume;

    .line 688
    .local v16, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v7

    .line 689
    .local v7, "envState":Ljava/lang/String;
    const-string/jumbo v18, "MountService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Volume "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " broadcasting "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 690
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v20

    .line 689
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-static {v7}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 693
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 694
    new-instance v10, Landroid/content/Intent;

    .line 695
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    .line 694
    move-object/from16 v0, v18

    invoke-direct {v10, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 696
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "android.os.storage.extra.STORAGE_VOLUME"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 697
    const/high16 v18, 0x4000000

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 705
    .end local v4    # "action":Ljava/lang/String;
    .end local v7    # "envState":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v16    # "userVol":Landroid/os/storage/StorageVolume;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/content/Intent;

    .line 706
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v18

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 707
    const-string/jumbo v20, "android.permission.WRITE_MEDIA_STORAGE"

    .line 706
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 711
    .end local v10    # "intent":Landroid/content/Intent;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 712
    .local v13, "partGuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/android/server/MountService;->-wrap6(Lcom/android/server/MountService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 716
    .end local v13    # "partGuid":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->-wrap13(Lcom/android/server/MountService;)V

    goto/16 :goto_0

    .line 658
    .restart local v12    # "obs":Landroid/os/storage/IMountShutdownObserver;
    .restart local v15    # "success":Z
    :catch_4
    move-exception v9

    .restart local v9    # "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto/16 :goto_4

    .line 609
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
