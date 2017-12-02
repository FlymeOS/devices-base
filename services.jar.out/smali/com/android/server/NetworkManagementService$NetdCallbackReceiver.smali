.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 792
    const/16 v0, 0x265

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 770
    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "onDaemonConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get0(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get0(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 776
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, v2}, Lcom/android/server/NetworkManagementService;->-set0(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 769
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get1(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 32
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 797
    const-string/jumbo v5, "Invalid event from daemon (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 798
    .local v15, "errorMessage":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 966
    :goto_0
    const/4 v5, 0x0

    return v5

    .line 807
    :sswitch_0
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "Iface"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 810
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "added"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 811
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap3(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 812
    const/4 v5, 0x1

    return v5

    .line 808
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 813
    :cond_1
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "removed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 814
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap7(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 815
    const/4 v5, 0x1

    return v5

    .line 816
    :cond_2
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "changed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 817
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    const-string/jumbo v11, "up"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap8(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 818
    const/4 v5, 0x1

    return v5

    .line 819
    :cond_3
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "linkstate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 820
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    const-string/jumbo v11, "up"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap6(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 821
    const/4 v5, 0x1

    return v5

    .line 823
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 830
    :sswitch_1
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "limit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 833
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "alert"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 834
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap9(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const/4 v5, 0x1

    return v5

    .line 831
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 837
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 844
    :sswitch_2
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_8

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "IfaceClass"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 847
    const-wide/16 v8, 0x0

    .line 848
    .local v8, "timestampNanos":J
    const/4 v10, -0x1

    .line 849
    .local v10, "processUid":I
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_9

    .line 851
    const/4 v5, 0x4

    :try_start_0
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 852
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_7

    .line 853
    const/4 v5, 0x5

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v10

    .line 859
    :cond_7
    :goto_1
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 860
    .local v22, "isActive":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 861
    if-eqz v22, :cond_a

    const/4 v7, 0x3

    .line 863
    :goto_2
    const/4 v11, 0x0

    .line 860
    invoke-static/range {v5 .. v11}, Lcom/android/server/NetworkManagementService;->-wrap4(Lcom/android/server/NetworkManagementService;IIJIZ)V

    .line 864
    const/4 v5, 0x1

    return v5

    .line 845
    .end local v8    # "timestampNanos":J
    .end local v10    # "processUid":I
    .end local v22    # "isActive":Z
    :cond_8
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 857
    .restart local v8    # "timestampNanos":J
    .restart local v10    # "processUid":I
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    goto :goto_1

    .line 862
    .restart local v22    # "isActive":Z
    :cond_a
    const/4 v7, 0x1

    goto :goto_2

    .line 872
    .end local v8    # "timestampNanos":J
    .end local v10    # "processUid":I
    .end local v22    # "isActive":Z
    :sswitch_3
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x7

    if-lt v5, v6, :cond_b

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "Address"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 876
    const/4 v5, 0x4

    aget-object v20, p3, v5

    .line 879
    .local v20, "iface":Ljava/lang/String;
    const/4 v5, 0x5

    :try_start_1
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 880
    .local v17, "flags":I
    const/4 v5, 0x6

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 881
    .local v27, "scope":I
    new-instance v4, Landroid/net/LinkAddress;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-direct {v4, v5, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 888
    .local v4, "address":Landroid/net/LinkAddress;
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "updated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 889
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v20

    invoke-static {v5, v0, v4}, Lcom/android/server/NetworkManagementService;->-wrap2(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 893
    :goto_3
    const/4 v5, 0x1

    return v5

    .line 873
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v17    # "flags":I
    .end local v20    # "iface":Ljava/lang/String;
    .end local v27    # "scope":I
    :cond_b
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 884
    .restart local v20    # "iface":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 885
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 882
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v14

    .line 883
    .local v14, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 891
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "address":Landroid/net/LinkAddress;
    .restart local v17    # "flags":I
    .restart local v27    # "scope":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v20

    invoke-static {v5, v0, v4}, Lcom/android/server/NetworkManagementService;->-wrap1(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_3

    .line 902
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v17    # "flags":I
    .end local v20    # "iface":Ljava/lang/String;
    .end local v27    # "scope":I
    :sswitch_4
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_d

    .line 903
    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "DnsInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 902
    if-eqz v5, :cond_d

    .line 904
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "servers"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 902
    if-eqz v5, :cond_d

    .line 906
    const/4 v5, 0x4

    :try_start_2
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v24

    .line 910
    .local v24, "lifetime":J
    const/4 v5, 0x5

    aget-object v5, p3, v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 911
    .local v28, "servers":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    move-wide/from16 v0, v24

    move-object/from16 v2, v28

    invoke-static {v5, v6, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->-wrap5(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 913
    .end local v24    # "lifetime":J
    .end local v28    # "servers":[Ljava/lang/String;
    :cond_d
    const/4 v5, 0x1

    return v5

    .line 907
    :catch_2
    move-exception v14

    .line 908
    .restart local v14    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 920
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :sswitch_5
    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "Route"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ge v5, v6, :cond_f

    .line 921
    :cond_e
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 924
    :cond_f
    const/16 v31, 0x0

    .line 925
    .local v31, "via":Ljava/lang/String;
    const/4 v12, 0x0

    .line 926
    .local v12, "dev":Ljava/lang/String;
    const/16 v30, 0x1

    .line 927
    .local v30, "valid":Z
    const/16 v19, 0x4

    .end local v12    # "dev":Ljava/lang/String;
    .end local v31    # "via":Ljava/lang/String;
    .local v19, "i":I
    :goto_4
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, p3

    array-length v6, v0

    if-ge v5, v6, :cond_14

    if-eqz v30, :cond_14

    .line 928
    aget-object v5, p3, v19

    const-string/jumbo v6, "dev"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 929
    if-nez v12, :cond_10

    .line 930
    add-int/lit8 v5, v19, 0x1

    aget-object v12, p3, v5

    .line 927
    :goto_5
    add-int/lit8 v19, v19, 0x2

    goto :goto_4

    .line 932
    :cond_10
    const/16 v30, 0x0

    goto :goto_5

    .line 934
    :cond_11
    aget-object v5, p3, v19

    const-string/jumbo v6, "via"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 935
    if-nez v31, :cond_12

    .line 936
    add-int/lit8 v5, v19, 0x1

    aget-object v31, p3, v5

    .local v31, "via":Ljava/lang/String;
    goto :goto_5

    .line 938
    .end local v31    # "via":Ljava/lang/String;
    :cond_12
    const/16 v30, 0x0

    goto :goto_5

    .line 941
    :cond_13
    const/16 v30, 0x0

    goto :goto_5

    .line 944
    :cond_14
    if-eqz v30, :cond_16

    .line 947
    const/16 v18, 0x0

    .line 948
    .local v18, "gateway":Ljava/net/InetAddress;
    if-eqz v31, :cond_15

    :try_start_3
    invoke-static/range {v31 .. v31}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v18

    .line 949
    .end local v18    # "gateway":Ljava/net/InetAddress;
    :cond_15
    new-instance v26, Landroid/net/RouteInfo;

    new-instance v5, Landroid/net/IpPrefix;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-direct {v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v12}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 950
    .local v26, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x2

    aget-object v6, p3, v6

    move-object/from16 v0, v26

    invoke-static {v5, v6, v0}, Lcom/android/server/NetworkManagementService;->-wrap10(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 951
    const/4 v5, 0x1

    return v5

    .line 952
    .end local v26    # "route":Landroid/net/RouteInfo;
    :catch_3
    move-exception v13

    .line 954
    :cond_16
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 957
    .end local v19    # "i":I
    .end local v30    # "valid":Z
    :sswitch_6
    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 958
    .local v29, "uid":I
    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 960
    .local v16, "firstPacket":[B
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move/from16 v0, v29

    move-object/from16 v1, v16

    invoke-interface {v5, v0, v1}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 961
    :catch_4
    move-exception v21

    .local v21, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 855
    .end local v16    # "firstPacket":[B
    .end local v21    # "ignored":Landroid/os/RemoteException;
    .end local v29    # "uid":I
    .restart local v8    # "timestampNanos":J
    .restart local v10    # "processUid":I
    :catch_5
    move-exception v23

    .local v23, "ne":Ljava/lang/NumberFormatException;
    goto/16 :goto_1

    .line 798
    nop

    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x259 -> :sswitch_1
        0x265 -> :sswitch_2
        0x266 -> :sswitch_3
        0x267 -> :sswitch_4
        0x268 -> :sswitch_5
        0x269 -> :sswitch_6
    .end sparse-switch
.end method
