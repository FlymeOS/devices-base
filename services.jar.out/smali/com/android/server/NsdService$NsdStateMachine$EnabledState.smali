.class Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/NsdService$NsdStateMachine;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 409
    const/4 v4, 0x1

    .line 411
    .local v4, "handled":Z
    const/4 v12, 0x1

    aget-object v12, p3, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 412
    .local v5, "id":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v12}, Lcom/android/server/NsdService;->-get2(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NsdService$ClientInfo;

    .line 413
    .local v2, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    if-nez v2, :cond_0

    .line 414
    const-string/jumbo v12, "NsdService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unique id with no client mapping: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v4, 0x0

    .line 416
    return v4

    .line 420
    :cond_0
    invoke-static {v2, v5}, Lcom/android/server/NsdService$ClientInfo;->-wrap0(Lcom/android/server/NsdService$ClientInfo;I)I

    move-result v1

    .line 421
    .local v1, "clientId":I
    if-gez v1, :cond_1

    .line 425
    const-string/jumbo v12, "NsdService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Notification for a listener that is no longer active: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v4, 0x0

    .line 427
    return v4

    .line 430
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 541
    const/4 v4, 0x0

    .line 544
    :goto_0
    :pswitch_0
    return v4

    .line 434
    :pswitch_1
    new-instance v10, Landroid/net/nsd/NsdServiceInfo;

    const/4 v12, 0x2

    aget-object v12, p3, v12

    const/4 v13, 0x3

    aget-object v13, p3, v13

    invoke-direct {v10, v12, v13}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .local v10, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x60004

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v1, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 441
    .end local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_2
    new-instance v10, Landroid/net/nsd/NsdServiceInfo;

    const/4 v12, 0x2

    aget-object v12, p3, v12

    const/4 v13, 0x3

    aget-object v13, p3, v13

    invoke-direct {v10, v12, v13}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .restart local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x60005

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v1, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 448
    .end local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_3
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x60003

    .line 449
    const/4 v14, 0x0

    .line 448
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0

    .line 454
    :pswitch_4
    new-instance v10, Landroid/net/nsd/NsdServiceInfo;

    const/4 v12, 0x2

    aget-object v12, p3, v12

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .restart local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x6000b

    invoke-virtual {v12, v13, v5, v1, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 461
    .end local v10    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_5
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x6000a

    .line 462
    const/4 v14, 0x0

    .line 461
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0

    .line 473
    :pswitch_6
    const/4 v7, 0x0

    .line 474
    .local v7, "index":I
    :goto_1
    const/4 v12, 0x2

    aget-object v12, p3, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v7, v12, :cond_3

    const/4 v12, 0x2

    aget-object v12, p3, v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2e

    if-eq v12, v13, :cond_3

    .line 475
    const/4 v12, 0x2

    aget-object v12, p3, v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5c

    if-ne v12, v13, :cond_2

    .line 476
    add-int/lit8 v7, v7, 0x1

    .line 478
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 480
    :cond_3
    const/4 v12, 0x2

    aget-object v12, p3, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v7, v12, :cond_4

    .line 481
    const-string/jumbo v12, "NsdService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Invalid service found "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 484
    :cond_4
    const/4 v12, 0x2

    aget-object v12, p3, v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 485
    .local v8, "name":Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v12, p3, v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 486
    .local v9, "rest":Ljava/lang/String;
    const-string/jumbo v12, ".local."

    const-string/jumbo v13, ""

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 488
    .local v11, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v12, v8}, Lcom/android/server/NsdService;->-wrap13(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 490
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 491
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 492
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v12

    const/4 v13, 0x4

    aget-object v13, p3, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 493
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v12

    const/4 v13, 0x6

    aget-object v13, p3, v13

    invoke-virtual {v12, v13}, Landroid/net/nsd/NsdServiceInfo;->setTxtRecords(Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v12, v5}, Lcom/android/server/NsdService;->-wrap8(Lcom/android/server/NsdService;I)Z

    .line 496
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v12}, Lcom/android/server/NsdService;->-wrap11(Lcom/android/server/NsdService;)I

    move-result v6

    .line 499
    .local v6, "id2":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v13, 0x3

    aget-object v13, p3, v13

    invoke-static {v12, v6, v13}, Lcom/android/server/NsdService;->-wrap1(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 500
    const v12, 0x60012

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6, v2, v12}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_0

    .line 502
    :cond_5
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x60013

    .line 503
    const/4 v14, 0x0

    .line 502
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 504
    const/4 v12, 0x0

    invoke-static {v2, v12}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_0

    .line 510
    .end local v6    # "id2":I
    .end local v7    # "index":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "rest":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v12, v5}, Lcom/android/server/NsdService;->-wrap8(Lcom/android/server/NsdService;I)Z

    .line 511
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 512
    const/4 v12, 0x0

    invoke-static {v2, v12}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 513
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x60013

    .line 514
    const/4 v14, 0x0

    .line 513
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_0

    .line 518
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v12, v5}, Lcom/android/server/NsdService;->-wrap6(Lcom/android/server/NsdService;I)Z

    .line 519
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 520
    const/4 v12, 0x0

    invoke-static {v2, v12}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 522
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x60013

    .line 523
    const/4 v14, 0x0

    .line 522
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_0

    .line 529
    :pswitch_9
    :try_start_0
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v12

    const/4 v13, 0x4

    aget-object v13, p3, v13

    invoke-static {v13}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/nsd/NsdServiceInfo;->setHost(Ljava/net/InetAddress;)V

    .line 530
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    .line 531
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    .line 530
    const v14, 0x60014

    .line 531
    const/4 v15, 0x0

    .line 530
    invoke-virtual {v12, v14, v15, v1, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v12, v12, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v12, v5}, Lcom/android/server/NsdService;->-wrap6(Lcom/android/server/NsdService;I)Z

    .line 537
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 538
    const/4 v12, 0x0

    invoke-static {v2, v12}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_0

    .line 532
    :catch_0
    move-exception v3

    .line 533
    .local v3, "e":Ljava/net/UnknownHostException;
    invoke-static {v2}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x60013

    .line 534
    const/4 v14, 0x0

    .line 533
    invoke-virtual {v12, v13, v14, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2

    .line 430
    :pswitch_data_0
    .packed-switch 0x25a
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V
    .locals 1
    .param p1, "clientId"    # I
    .param p2, "globalId"    # I
    .param p3, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;

    .prologue
    .line 265
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 266
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get2(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 267
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get2(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 264
    return-void
.end method

.method private requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z
    .locals 2
    .param p1, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;

    .prologue
    .line 251
    invoke-static {p1}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 253
    const/4 v0, 0x1

    return v0

    .line 255
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "globalId"    # I
    .param p3, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;
    .param p4, "what"    # I

    .prologue
    .line 259
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get2(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get2(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/NsdService;->-wrap17(Lcom/android/server/NsdService;Z)V

    .line 238
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-wrap5(Lcom/android/server/NsdService;)Z

    .line 236
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-wrap7(Lcom/android/server/NsdService;)Z

    .line 244
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v12, 0x6000a

    const v11, 0x60007

    const v10, 0x60003

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 274
    const/4 v4, 0x1

    .line 276
    .local v4, "result":Z
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 402
    const/4 v4, 0x0

    .line 405
    :cond_0
    :goto_0
    return v4

    .line 279
    :sswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_1

    .line 280
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 281
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->-wrap5(Lcom/android/server/NsdService;)Z

    .line 283
    :cond_1
    const/4 v4, 0x0

    .line 284
    goto :goto_0

    .line 286
    :sswitch_1
    const/4 v4, 0x0

    .line 287
    goto :goto_0

    .line 290
    :sswitch_2
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v7, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-static {v7}, Lcom/android/server/NsdService$NsdStateMachine;->-get0(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/NsdService$NsdStateMachine;->-wrap0(Lcom/android/server/NsdService$NsdStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 294
    :sswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    .line 295
    .local v5, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 297
    .local v0, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 298
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, p1, v10, v9}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto :goto_0

    .line 303
    :cond_2
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->-wrap11(Lcom/android/server/NsdService;)I

    move-result v3

    .line 304
    .local v3, "id":I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-virtual {v5}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v3, v7}, Lcom/android/server/NsdService;->-wrap0(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 309
    iget v6, p1, Landroid/os/Message;->arg2:I

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6, v3, v0, v7}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    .line 310
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60002

    invoke-static {v6, p1, v7, v5}, Lcom/android/server/NsdService;->-wrap16(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 312
    :cond_3
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, v3}, Lcom/android/server/NsdService;->-wrap9(Lcom/android/server/NsdService;I)Z

    .line 313
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, p1, v10, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 319
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    .end local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :sswitch_4
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 322
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    :try_start_0
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 328
    .restart local v3    # "id":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 329
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, v3}, Lcom/android/server/NsdService;->-wrap9(Lcom/android/server/NsdService;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 330
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60008

    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->-wrap14(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 323
    .end local v3    # "id":I
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 332
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "id":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, p1, v11, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 338
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_5
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 339
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 340
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, p1, v12, v9}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 345
    :cond_5
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->-wrap11(Lcom/android/server/NsdService;)I

    move-result v3

    .line 346
    .restart local v3    # "id":I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v7, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v7, v3, v6}, Lcom/android/server/NsdService;->-wrap3(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 348
    iget v6, p1, Landroid/os/Message;->arg2:I

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6, v3, v0, v7}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_0

    .line 351
    :cond_6
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, v3}, Lcom/android/server/NsdService;->-wrap10(Lcom/android/server/NsdService;I)Z

    .line 352
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, p1, v12, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 358
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_6
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 360
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 366
    .restart local v3    # "id":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v6, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 367
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, v3}, Lcom/android/server/NsdService;->-wrap10(Lcom/android/server/NsdService;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 368
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000e

    invoke-static {v6, p1, v7}, Lcom/android/server/NsdService;->-wrap14(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 361
    .end local v3    # "id":I
    :catch_1
    move-exception v1

    .line 362
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000d

    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 370
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "id":I
    :cond_7
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x6000d

    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 376
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    :sswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    .line 377
    .restart local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 380
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 381
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60013

    .line 382
    const/4 v8, 0x3

    .line 381
    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 386
    :cond_8
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6}, Lcom/android/server/NsdService;->-wrap11(Lcom/android/server/NsdService;)I

    move-result v3

    .line 387
    .restart local v3    # "id":I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, v3, v5}, Lcom/android/server/NsdService;->-wrap4(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 388
    new-instance v6, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v6}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    invoke-static {v0, v6}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 389
    iget v6, p1, Landroid/os/Message;->arg2:I

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v6, v3, v0, v7}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_0

    .line 391
    :cond_9
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v7, 0x60013

    invoke-static {v6, p1, v7, v8}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 396
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v3    # "id":I
    .end local v5    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :sswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/NsdService$NativeEvent;

    .line 397
    .local v2, "event":Lcom/android/server/NsdService$NativeEvent;
    iget v6, v2, Lcom/android/server/NsdService$NativeEvent;->code:I

    iget-object v7, v2, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/NsdService$NativeEvent;->cooked:[Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 398
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x60001 -> :sswitch_3
        0x60006 -> :sswitch_4
        0x60009 -> :sswitch_5
        0x6000c -> :sswitch_6
        0x60012 -> :sswitch_7
        0x60019 -> :sswitch_2
        0x6001a -> :sswitch_8
    .end sparse-switch
.end method
