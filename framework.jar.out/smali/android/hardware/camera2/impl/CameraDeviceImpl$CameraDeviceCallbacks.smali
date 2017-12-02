.class public Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
.super Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraDeviceCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 1646
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;-><init>()V

    return-void
.end method

.method private onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 18
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .prologue
    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v15

    .line 1915
    .local v15, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v2

    .line 1916
    .local v2, "subsequenceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v8

    .line 1918
    .local v8, "frameNumber":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get3(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    .line 1920
    .local v5, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    invoke-virtual {v5, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    .line 1922
    .local v6, "request":Landroid/hardware/camera2/CaptureRequest;
    const/4 v3, 0x0

    .line 1923
    .local v3, "failureDispatch":Ljava/lang/Runnable;
    const/4 v4, 0x5

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 1925
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get4(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getErrorStreamId()I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v7

    .line 1930
    .local v7, "outputSurface":Landroid/view/Surface;
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$5;

    .end local v3    # "failureDispatch":Ljava/lang/Runnable;
    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 1981
    .end local v7    # "outputSurface":Landroid/view/Surface;
    .local v3, "failureDispatch":Ljava/lang/Runnable;
    :goto_0
    invoke-virtual {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1912
    return-void

    .line 1943
    .local v3, "failureDispatch":Ljava/lang/Runnable;
    :cond_0
    const/4 v4, 0x4

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    const/4 v14, 0x1

    .line 1949
    .local v14, "mayHaveBuffers":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get5(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get5(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    move-result-object v4

    invoke-interface {v4}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->isAborting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1950
    const/4 v13, 0x1

    .line 1953
    .local v13, "reason":I
    :goto_2
    new-instance v11, Landroid/hardware/camera2/CaptureFailure;

    move-object v12, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Landroid/hardware/camera2/CaptureFailure;-><init>(Landroid/hardware/camera2/CaptureRequest;IZIJ)V

    .line 1960
    .local v11, "failure":Landroid/hardware/camera2/CaptureFailure;
    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$6;

    .end local v3    # "failureDispatch":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v6, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$6;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 1976
    .local v3, "failureDispatch":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v4

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v10

    const/4 v12, 0x1

    invoke-virtual {v4, v8, v9, v12, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JZZ)V

    .line 1977
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    goto :goto_0

    .line 1943
    .end local v11    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .end local v13    # "reason":I
    .end local v14    # "mayHaveBuffers":Z
    .local v3, "failureDispatch":Ljava/lang/Runnable;
    :cond_1
    const/4 v14, 0x0

    .restart local v14    # "mayHaveBuffers":Z
    goto :goto_1

    .line 1951
    :cond_2
    const/4 v13, 0x0

    .restart local v13    # "reason":I
    goto :goto_2
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1650
    return-object p0
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .locals 12
    .param p1, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p2, "timestamp"    # J

    .prologue
    .line 1734
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v8

    .line 1735
    .local v8, "requestId":I
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v6

    .line 1742
    .local v6, "frameNumber":J
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v9, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1743
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v9

    return-void

    .line 1746
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get3(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1748
    .local v2, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    if-nez v2, :cond_1

    monitor-exit v9

    .line 1749
    return-void

    .line 1752
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v9

    return-void

    .line 1755
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 1756
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CaptureResultExtras;JJ)V

    .line 1755
    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v9

    .line 1733
    return-void

    .line 1742
    .end local v2    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .prologue
    const/4 v6, 0x1

    .line 1662
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v3, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1663
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v3

    .line 1664
    return-void

    .line 1667
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1672
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown error from camera device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :pswitch_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-set1(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z

    .line 1677
    if-ne p1, v6, :cond_1

    .line 1678
    const/4 v0, 0x4

    .line 1680
    .local v0, "publicErrorCode":I
    :goto_0
    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;

    invoke-direct {v1, p0, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;I)V

    .line 1688
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get7(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "publicErrorCode":I
    .end local v1    # "r":Ljava/lang/Runnable;
    :goto_1
    monitor-exit v3

    .line 1654
    return-void

    .line 1669
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get7(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1662
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1679
    :cond_1
    const/4 v0, 0x5

    .restart local v0    # "publicErrorCode":I
    goto :goto_0

    .line 1693
    .end local v0    # "publicErrorCode":I
    :pswitch_2
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onDeviceIdle()V
    .locals 3

    .prologue
    .line 1722
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1723
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    .line 1725
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get9(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1726
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get7(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1728
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-set0(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1718
    return-void

    .line 1722
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPrepared(I)V
    .locals 5
    .param p1, "streamId"    # I

    .prologue
    .line 1893
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v4, v3, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1894
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get4(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1895
    .local v0, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get12(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    monitor-exit v4

    .line 1898
    if-nez v1, :cond_0

    return-void

    .line 1893
    .end local v0    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v1    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1900
    .restart local v0    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    .restart local v1    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :cond_0
    if-nez v0, :cond_1

    .line 1901
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onPrepared invoked for unknown output Surface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    return-void

    .line 1904
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 1906
    .local v2, "surface":Landroid/view/Surface;
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onSurfacePrepared(Landroid/view/Surface;)V

    .line 1885
    return-void
.end method

.method public onRepeatingRequestError(J)V
    .locals 3
    .param p1, "lastFrameNumber"    # J

    .prologue
    const/4 v2, -0x1

    .line 1706
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1708
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get11(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    .line 1709
    return-void

    .line 1712
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get11(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v2

    invoke-static {v0, v2, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap3(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ)V

    .line 1713
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-set2(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1700
    return-void

    .line 1706
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 21
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1775
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v17

    .line 1776
    .local v17, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v6

    .line 1783
    .local v6, "frameNumber":J
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v5, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1784
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-nez v5, :cond_0

    monitor-exit v20

    return-void

    .line 1787
    :cond_0
    :try_start_1
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1788
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v14}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 1787
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get3(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    .line 1792
    .local v4, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v13

    .line 1795
    .local v13, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getPartialResultCount()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get13(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v12

    if-ge v5, v12, :cond_1

    const/4 v9, 0x1

    .line 1796
    .local v9, "isPartialResult":Z
    :goto_0
    invoke-virtual {v13}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v10

    .line 1799
    .local v10, "isReprocess":Z
    if-nez v4, :cond_2

    .line 1806
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v20

    .line 1809
    return-void

    .line 1795
    .end local v9    # "isPartialResult":Z
    .end local v10    # "isReprocess":Z
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "isPartialResult":Z
    goto :goto_0

    .line 1812
    .restart local v10    # "isReprocess":Z
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1819
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v20

    .line 1821
    return-void

    .line 1825
    :cond_3
    const/16 v19, 0x0

    .line 1830
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    if-eqz v9, :cond_5

    .line 1832
    :try_start_3
    new-instance v18, Landroid/hardware/camera2/CaptureResult;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v13, v2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 1835
    .local v18, "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    new-instance v19, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;

    .end local v19    # "resultDispatch":Ljava/lang/Runnable;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v4, v13, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 1847
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    move-object/from16 v8, v18

    .line 1871
    .end local v18    # "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    .local v8, "finalResult":Landroid/hardware/camera2/CaptureResult;
    :goto_1
    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1874
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v5

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V

    .line 1878
    if-nez v9, :cond_4

    .line 1879
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    monitor-exit v20

    .line 1773
    return-void

    .line 1850
    .end local v8    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->popPartialResults(J)Ljava/util/List;

    move-result-object v15

    .line 1852
    .local v15, "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    new-instance v11, Landroid/hardware/camera2/TotalCaptureResult;

    .line 1853
    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getSessionId()I

    move-result v16

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    .line 1852
    invoke-direct/range {v11 .. v16}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I)V

    .line 1856
    .local v11, "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    new-instance v19, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;

    .end local v19    # "resultDispatch":Ljava/lang/Runnable;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v13, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1868
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    move-object v8, v11

    .restart local v8    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    goto :goto_1

    .line 1783
    .end local v4    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v8    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .end local v9    # "isPartialResult":Z
    .end local v10    # "isReprocess":Z
    .end local v11    # "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v13    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v15    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .end local v19    # "resultDispatch":Ljava/lang/Runnable;
    :catchall_0
    move-exception v5

    monitor-exit v20

    throw v5
.end method
