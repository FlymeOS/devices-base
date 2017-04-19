.class Landroid/hardware/camera2/legacy/RequestThreadManager$5;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCleanup:Z

.field private final mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 655
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    .line 657
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyResultMapper;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/LegacyResultMapper;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    .line 655
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 661
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    if-eqz v3, :cond_0

    .line 662
    const/4 v3, 0x1

    return v3

    .line 668
    :cond_0
    const-wide/16 v22, 0x0

    .line 672
    .local v22, "startTime":J
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 937
    :pswitch_0
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unhandled message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 938
    const-string/jumbo v6, " on RequestThread."

    .line 937
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 674
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;

    .line 675
    .local v2, "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    iget-object v3, v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v21

    .line 676
    .local v21, "sizes":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Configure outputs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " surfaces configured."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    const-wide/16 v6, 0xfa0

    .line 680
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 679
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v24

    .line 681
    .local v24, "success":Z
    if-nez v24, :cond_1

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Timed out while queueing configure request."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v5, v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap0(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    .line 693
    iget-object v3, v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 940
    .end local v2    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    .end local v21    # "sizes":I
    .end local v24    # "success":Z
    :cond_2
    :goto_1
    :pswitch_2
    const/4 v3, 0x1

    return v3

    .line 675
    .restart local v2    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    :cond_3
    const/16 v21, 0x0

    .restart local v21    # "sizes":I
    goto :goto_0

    .line 685
    :catch_0
    move-exception v10

    .line 686
    .local v10, "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Interrupted while waiting for requests to complete."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 688
    const/4 v5, 0x1

    .line 687
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_1

    .line 700
    .end local v2    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v21    # "sizes":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get15(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestHandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 703
    .local v12, "handler":Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get14(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/util/Pair;

    move-result-object v15

    .line 705
    .local v15, "nextBurst":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    if-nez v15, :cond_6

    .line 709
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    const-wide/16 v6, 0xfa0

    .line 710
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 709
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v24

    .line 711
    .restart local v24    # "success":Z
    if-nez v24, :cond_4

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    .line 713
    const-string/jumbo v5, "Timed out while waiting for prior requests to complete."

    .line 712
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 723
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get9(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 725
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get14(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/util/Pair;

    move-result-object v15

    .line 728
    if-nez v15, :cond_5

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setIdle()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    goto/16 :goto_1

    .line 716
    .end local v24    # "success":Z
    :catch_1
    move-exception v10

    .line 717
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Interrupted while waiting for requests to complete: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 719
    const/4 v5, 0x1

    .line 718
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_1

    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v24    # "success":Z
    :cond_5
    monitor-exit v5

    .line 735
    .end local v24    # "success":Z
    :cond_6
    if-eqz v15, :cond_7

    .line 737
    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 742
    :cond_7
    iget-object v3, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/legacy/BurstHolder;

    iget-object v5, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/hardware/camera2/legacy/BurstHolder;->produceRequestHolders(J)Ljava/util/List;

    move-result-object v19

    .line 743
    .local v19, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "holder$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/legacy/RequestHolder;

    .line 744
    .local v4, "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v18

    .line 746
    .local v18, "request":Landroid/hardware/camera2/CaptureRequest;
    const/16 v16, 0x0

    .line 749
    .local v16, "paramsChanged":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v3

    iget-object v3, v3, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v0, v18

    if-eq v3, v0, :cond_b

    .line 753
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;

    move-result-object v17

    .line 755
    .local v17, "previewSize":Landroid/util/Size;
    new-instance v14, Landroid/hardware/camera2/legacy/LegacyRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get4(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 756
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 755
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v14, v3, v0, v1, v5}, Landroid/hardware/camera2/legacy/LegacyRequest;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)V

    .line 760
    .local v14, "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    invoke-static {v14}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iget-object v5, v14, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->same(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 765
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v5, v14, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 776
    const/16 v16, 0x1

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v5, v14, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 780
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3, v14}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set2(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 784
    .end local v14    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .end local v17    # "previewSize":Landroid/util/Size;
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    .line 785
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v5

    const-wide/16 v6, 0xfa0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 784
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->queueRequest(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;JLjava/util/concurrent/TimeUnit;)Z

    move-result v24

    .line 787
    .restart local v24    # "success":Z
    if-nez v24, :cond_c

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Timed out while queueing capture request."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const-wide/16 v6, 0x0

    .line 792
    const/4 v5, 0x3

    .line 791
    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_2

    .line 834
    .end local v24    # "success":Z
    :catch_2
    move-exception v9

    .line 835
    .local v9, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Received device exception during capture call: "

    invoke-static {v3, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 837
    const/4 v5, 0x1

    .line 836
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_1

    .line 723
    .end local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v13    # "holder$iterator":Ljava/util/Iterator;
    .end local v16    # "paramsChanged":Z
    .end local v18    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v19    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    .restart local v24    # "success":Z
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3

    .line 766
    .end local v24    # "success":Z
    .restart local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .restart local v13    # "holder$iterator":Ljava/util/Iterator;
    .restart local v14    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .restart local v16    # "paramsChanged":Z
    .restart local v17    # "previewSize":Landroid/util/Size;
    .restart local v18    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v19    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    :catch_3
    move-exception v11

    .line 769
    .local v11, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Exception while setting camera parameters: "

    invoke-static {v3, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 770
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const-wide/16 v6, 0x0

    .line 772
    const/4 v5, 0x3

    .line 771
    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    goto/16 :goto_2

    .line 799
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v14    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .end local v17    # "previewSize":Landroid/util/Size;
    .restart local v24    # "success":Z
    :cond_c
    :try_start_5
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 800
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 802
    :cond_d
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 803
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    .line 804
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 803
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForPreviewsEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 806
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Timed out while waiting for preview requests to complete."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextPreview()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    .line 839
    .end local v24    # "success":Z
    :catch_4
    move-exception v10

    .line 840
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Interrupted during capture: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 842
    const/4 v5, 0x1

    .line 841
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_1

    .line 810
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v24    # "success":Z
    :cond_e
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get13(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->close()V

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap1(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 820
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get6(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get7(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 826
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap2(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get13(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v3

    const-wide/16 v6, 0xfa0

    invoke-virtual {v3, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v3

    if-nez v3, :cond_10

    .line 829
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Hit timeout for jpeg callback!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextJpeg()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 851
    :cond_10
    if-eqz v16, :cond_11

    .line 856
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/LegacyRequest;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 868
    :cond_11
    new-instance v8, Landroid/util/MutableLong;

    const-wide/16 v6, 0x0

    invoke-direct {v8, v6, v7}, Landroid/util/MutableLong;-><init>(J)V

    .line 870
    .local v8, "timestampMutable":Landroid/util/MutableLong;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    .line 871
    const-wide/16 v5, 0xfa0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 870
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForRequestCompleted(Landroid/hardware/camera2/legacy/RequestHolder;JLjava/util/concurrent/TimeUnit;Landroid/util/MutableLong;)Z

    move-result v24

    .line 874
    if-nez v24, :cond_12

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Timed out while waiting for request to complete."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7

    .line 885
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    .line 886
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v5

    iget-wide v6, v8, Landroid/util/MutableLong;->value:J

    .line 885
    invoke-virtual {v3, v5, v6, v7}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->cachedConvertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;J)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v20

    .line 894
    .local v20, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get7(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get6(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 898
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->requestFailed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 900
    const/4 v5, -0x1

    .line 899
    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;I)Z

    goto/16 :goto_2

    .line 844
    .end local v8    # "timestampMutable":Landroid/util/MutableLong;
    .end local v20    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v24    # "success":Z
    :catch_5
    move-exception v11

    .line 845
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Received device exception during capture call: "

    invoke-static {v3, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 847
    const/4 v5, 0x1

    .line 846
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_1

    .line 857
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .restart local v24    # "success":Z
    :catch_6
    move-exception v11

    .line 858
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Received device exception: "

    invoke-static {v3, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 860
    const/4 v5, 0x1

    .line 859
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_1

    .line 878
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .restart local v8    # "timestampMutable":Landroid/util/MutableLong;
    :catch_7
    move-exception v10

    .line 879
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Interrupted waiting for request completion: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 881
    const/4 v5, 0x1

    .line 880
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_1

    .line 910
    .end local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v8    # "timestampMutable":Landroid/util/MutableLong;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "handler":Landroid/os/Handler;
    .end local v13    # "holder$iterator":Ljava/util/Iterator;
    .end local v15    # "nextBurst":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    .end local v16    # "paramsChanged":Z
    .end local v18    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v19    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    .end local v24    # "success":Z
    :pswitch_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    .line 912
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    const-wide/16 v6, 0xfa0

    .line 913
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 912
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v24

    .line 914
    .restart local v24    # "success":Z
    if-nez v24, :cond_13

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Timed out while queueing cleanup request."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8

    .line 923
    .end local v24    # "success":Z
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get8(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get8(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/GLThreadManager;->quit()V

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set1(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 927
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 928
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 929
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set0(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 931
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get1(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap4(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    goto/16 :goto_1

    .line 918
    :catch_8
    move-exception v10

    .line 919
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Interrupted while waiting for requests to complete: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 921
    const/4 v5, 0x1

    .line 920
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_4

    .line 672
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
