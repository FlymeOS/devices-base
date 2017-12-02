.class Lcom/android/internal/telephony/RIL$RILSender;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/RIL;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    .line 378
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 382
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    .line 377
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 395
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/RILRequest;

    .line 396
    .local v8, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v7, 0x0

    .line 398
    .local v7, "req":Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 394
    .end local v7    # "req":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-void

    .line 404
    .restart local v7    # "req":Lcom/android/internal/telephony/RILRequest;
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 406
    .local v9, "s":Landroid/net/LocalSocket;
    if-nez v9, :cond_1

    .line 407
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v12, v8}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    .line 409
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 410
    return-void

    .line 414
    :cond_1
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_2

    .line 415
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v12, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 416
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v8, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    .line 417
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    iget v14, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v12, v14, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v13

    .line 423
    :cond_2
    iget-object v12, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v12}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 424
    .local v3, "data":[B
    iget-object v12, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 425
    const/4 v12, 0x0

    iput-object v12, v8, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    .line 427
    array-length v12, v3

    const/16 v13, 0x2000

    if-le v12, v13, :cond_3

    .line 428
    new-instance v12, Ljava/lang/RuntimeException;

    .line 429
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Parcel larger than max bytes allowed! "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 430
    array-length v14, v3

    .line 429
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 428
    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 446
    .end local v3    # "data":[B
    .end local v9    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v4

    .line 447
    .local v4, "ex":Ljava/io/IOException;
    const-string/jumbo v12, "RILJ"

    const-string/jumbo v13, "IOException"

    invoke-static {v12, v13, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->-wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 451
    .local v7, "req":Lcom/android/internal/telephony/RILRequest;
    if-eqz v7, :cond_0

    .line 452
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v12, v8}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    .line 454
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 455
    return-void

    .line 415
    .end local v4    # "ex":Ljava/io/IOException;
    .local v7, "req":Lcom/android/internal/telephony/RILRequest;
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v12

    :try_start_3
    monitor-exit v13

    throw v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 457
    .end local v9    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v5

    .line 458
    .local v5, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v12, "RILJ"

    const-string/jumbo v13, "Uncaught exception "

    invoke-static {v12, v13, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->-wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    .line 462
    .local v7, "req":Lcom/android/internal/telephony/RILRequest;
    if-eqz v7, :cond_0

    .line 463
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v12, v8}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    .line 465
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 466
    return-void

    .line 434
    .end local v5    # "exc":Ljava/lang/RuntimeException;
    .restart local v3    # "data":[B
    .local v7, "req":Lcom/android/internal/telephony/RILRequest;
    .restart local v9    # "s":Landroid/net/LocalSocket;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v14, 0x0

    const/4 v15, 0x1

    aput-byte v14, v13, v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-byte v13, v12, v14

    .line 435
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    array-length v13, v3

    shr-int/lit8 v13, v13, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    const/4 v14, 0x2

    aput-byte v13, v12, v14

    .line 436
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    array-length v13, v3

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    const/4 v14, 0x3

    aput-byte v13, v12, v14

    .line 440
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V

    .line 441
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/io/OutputStream;->write([B)V

    .line 442
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 443
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 444
    return-void

    .line 484
    .end local v3    # "data":[B
    .end local v9    # "s":Landroid/net/LocalSocket;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v13, v12, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v13

    .line 485
    :try_start_5
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v14, v14, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    if-ne v12, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/android/internal/telephony/RIL;->-wrap0(Lcom/android/internal/telephony/RIL;I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 487
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 488
    .local v2, "count":I
    const-string/jumbo v12, "RILJ"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_4

    .line 491
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v8, v0

    .line 492
    const-string/jumbo v12, "RILJ"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 493
    iget v15, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v15}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v15

    .line 492
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 490
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v2    # "count":I
    .end local v6    # "i":I
    :cond_4
    monitor-exit v13

    goto/16 :goto_0

    .line 484
    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12

    .line 501
    :pswitch_2
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v13, v13, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    if-ne v12, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->-wrap0(Lcom/android/internal/telephony/RIL;I)Z

    move-result v12

    if-eqz v12, :cond_0

    goto/16 :goto_0

    .line 509
    :pswitch_3
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 510
    .local v10, "serial":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v12, v10}, Lcom/android/internal/telephony/RIL;->-wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v8

    .line 512
    if-eqz v8, :cond_0

    .line 517
    iget-object v12, v8, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v12, :cond_5

    .line 518
    invoke-static {v8}, Lcom/android/internal/telephony/RIL;->-wrap3(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    move-result-object v11

    .line 519
    .local v11, "timeoutResponse":Ljava/lang/Object;
    iget-object v12, v8, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v13, 0x0

    invoke-static {v12, v11, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 520
    iget-object v12, v8, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 521
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v13}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget v14, v8, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v15, v8, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilTimeoutResponse(III)V

    .line 524
    .end local v11    # "timeoutResponse":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v12, v8}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    .line 525
    invoke-virtual {v8}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method
