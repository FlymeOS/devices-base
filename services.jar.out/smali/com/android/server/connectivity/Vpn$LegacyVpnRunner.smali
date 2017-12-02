.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1505
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 1506
    const-string/jumbo v6, "LegacyVpnRunner"

    invoke-direct {p0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1478
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, -0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1477
    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1480
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 1485
    new-instance v6, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v6, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1507
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->-set0(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    .line 1508
    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "racoon"

    aput-object v7, v6, v5

    const-string/jumbo v7, "mtpd"

    aput-object v7, v6, v8

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 1510
    new-array v6, v9, [[Ljava/lang/String;

    aput-object p3, v6, v5

    aput-object p4, v6, v8

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 1511
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Landroid/net/LocalSocket;

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 1519
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 1521
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1522
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1523
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v6, v5

    .line 1524
    .local v3, "network":Landroid/net/Network;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    .line 1525
    .local v2, "lp":Landroid/net/LinkProperties;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1526
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1527
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1523
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1532
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v3    # "network":Landroid/net/Network;
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1533
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1534
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1505
    return-void
.end method

.method private checkpoint(Z)V
    .locals 6
    .param p1, "yield"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1583
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1584
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1585
    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 1586
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1582
    :goto_0
    return-void

    .line 1587
    :cond_0
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 1588
    if-eqz p1, :cond_1

    const/16 v2, 0xc8

    :goto_1
    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 1590
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v4, "checkpoint"

    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->-wrap5(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1591
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private execute()V
    .locals 26

    .prologue
    .line 1597
    const/16 v16, 0x0

    .line 1600
    .local v16, "initFinished":Z
    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    aget-object v9, v23, v22

    .line 1604
    .local v9, "daemon":Ljava/lang/String;
    :goto_1
    invoke-static {v9}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 1605
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1773
    .end local v9    # "daemon":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1774
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v22, "LegacyVpnRunner"

    const-string/jumbo v23, "Aborting"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/android/server/connectivity/Vpn;->-wrap5(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1776
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1595
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1603
    .restart local v9    # "daemon":Ljava/lang/String;
    :cond_0
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 1610
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v21, Ljava/io/File;

    const-string/jumbo v22, "/data/misc/vpn/state"

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1611
    .local v21, "state":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 1612
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1613
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string/jumbo v23, "Cannot delete the state"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1615
    :cond_2
    new-instance v22, Ljava/io/File;

    const-string/jumbo v23, "/data/misc/vpn/abort"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 1616
    const/16 v16, 0x1

    .line 1619
    const/16 v19, 0x0

    .line 1620
    .local v19, "restart":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v22, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    aget-object v7, v23, v22

    .line 1621
    .local v7, "arguments":[Ljava/lang/String;
    if-nez v19, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    const/16 v19, 0x1

    .line 1620
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 1621
    :cond_4
    const/16 v19, 0x0

    goto :goto_4

    .line 1623
    .end local v7    # "arguments":[Ljava/lang/String;
    :cond_5
    if-nez v19, :cond_6

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;)V

    .line 1625
    return-void

    .line 1627
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v24, "execute"

    invoke-static/range {v22 .. v24}, Lcom/android/server/connectivity/Vpn;->-wrap5(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1630
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v14, v0, :cond_d

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v7, v22, v14

    .line 1632
    .restart local v7    # "arguments":[Ljava/lang/String;
    if-nez v7, :cond_8

    .line 1630
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1637
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v9, v22, v14

    .line 1638
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1641
    :goto_6
    invoke-static {v9}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 1642
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_6

    .line 1646
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v22, v0

    new-instance v23, Landroid/net/LocalSocket;

    invoke-direct/range {v23 .. v23}, Landroid/net/LocalSocket;-><init>()V

    aput-object v23, v22, v14

    .line 1647
    new-instance v5, Landroid/net/LocalSocketAddress;

    .line 1648
    sget-object v22, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 1647
    move-object/from16 v0, v22

    invoke-direct {v5, v9, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1653
    .local v5, "address":Landroid/net/LocalSocketAddress;
    :goto_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v22, v0

    aget-object v22, v22, v14

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1660
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v22, v0

    aget-object v22, v22, v14

    const/16 v23, 0x1f4

    invoke-virtual/range {v22 .. v23}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v22, v0

    aget-object v22, v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 1664
    .local v17, "out":Ljava/io/OutputStream;
    const/16 v22, 0x0

    array-length v0, v7

    move/from16 v23, v0

    :goto_8
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    aget-object v6, v7, v22

    .line 1665
    .local v6, "argument":Ljava/lang/String;
    sget-object v24, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 1666
    .local v8, "bytes":[B
    array-length v0, v8

    move/from16 v24, v0

    const v25, 0xffff

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_a

    .line 1667
    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "Argument is too large"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1655
    .end local v6    # "argument":Ljava/lang/String;
    .end local v8    # "bytes":[B
    .end local v17    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v11

    .line 1658
    .restart local v11    # "e":Ljava/lang/Exception;
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_7

    .line 1669
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "argument":Ljava/lang/String;
    .restart local v8    # "bytes":[B
    .restart local v17    # "out":Ljava/io/OutputStream;
    :cond_a
    array-length v0, v8

    move/from16 v24, v0

    shr-int/lit8 v24, v24, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1670
    array-length v0, v8

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1671
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 1672
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1664
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 1674
    .end local v6    # "argument":Ljava/lang/String;
    .end local v8    # "bytes":[B
    :cond_b
    const/16 v22, 0xff

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1675
    const/16 v22, 0xff

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1676
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v22, v0

    aget-object v22, v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v15

    .line 1682
    .local v15, "in":Ljava/io/InputStream;
    :goto_9
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 1688
    :goto_a
    const/16 v22, 0x1

    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_9

    .line 1685
    :catch_2
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    goto :goto_a

    .line 1701
    .end local v5    # "address":Landroid/net/LocalSocketAddress;
    .end local v7    # "arguments":[Ljava/lang/String;
    .end local v9    # "daemon":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v15    # "in":Ljava/io/InputStream;
    .end local v17    # "out":Ljava/io/OutputStream;
    :cond_c
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1693
    :cond_d
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_10

    .line 1695
    const/4 v14, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v14, v0, :cond_c

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v9, v22, v14

    .line 1697
    .restart local v9    # "daemon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v14

    if-eqz v22, :cond_e

    invoke-static {v9}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 1695
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 1698
    :cond_f
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " is dead"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1705
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_10
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "\n"

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v18

    .line 1706
    .local v18, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    .line 1707
    new-instance v22, Ljava/lang/IllegalStateException;

    const-string/jumbo v23, "Cannot parse the state"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1711
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v23, v18, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v18, v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 1716
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    const/16 v23, 0x2

    aget-object v23, v18, v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1720
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_15

    .line 1721
    :cond_14
    const/16 v22, 0x3

    aget-object v22, v18, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1722
    .local v10, "dnsServers":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_15

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    const-string/jumbo v23, " "

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1728
    .end local v10    # "dnsServers":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_17

    .line 1729
    :cond_16
    const/16 v22, 0x4

    aget-object v22, v18, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 1730
    .local v20, "searchDomains":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_17

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    const-string/jumbo v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1736
    .end local v20    # "searchDomains":Ljava/lang/String;
    :cond_17
    const/16 v22, 0x5

    aget-object v13, v18, v22

    .line 1737
    .local v13, "endpoint":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v22

    if-nez v22, :cond_18

    .line 1739
    :try_start_6
    invoke-static {v13}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 1740
    .local v4, "addr":Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet4Address;

    move/from16 v22, v0

    if-eqz v22, :cond_19

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v22, v0

    new-instance v23, Landroid/net/RouteInfo;

    new-instance v24, Landroid/net/IpPrefix;

    const/16 v25, 0x20

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v4, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v25, 0x9

    invoke-direct/range {v23 .. v25}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1753
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_18
    :goto_c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1755
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1758
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-wrap1(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_1b

    .line 1762
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " is gone"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1753
    :catchall_0
    move-exception v22

    :try_start_9
    monitor-exit v23

    throw v22
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1742
    .restart local v4    # "addr":Ljava/net/InetAddress;
    :cond_19
    :try_start_a
    instance-of v0, v4, Ljava/net/Inet6Address;

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v22, v0

    new-instance v23, Landroid/net/RouteInfo;

    new-instance v24, Landroid/net/IpPrefix;

    const/16 v25, 0x80

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v4, v1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v25, 0x9

    invoke-direct/range {v23 .. v25}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_c

    .line 1747
    .end local v4    # "addr":Ljava/net/InetAddress;
    :catch_3
    move-exception v12

    .line 1748
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    :try_start_b
    const-string/jumbo v22, "LegacyVpnRunner"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Exception constructing throw route to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_c

    .line 1745
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "addr":Ljava/net/InetAddress;
    :cond_1a
    :try_start_c
    const-string/jumbo v22, "LegacyVpnRunner"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unknown IP address family for VPN endpoint: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_c

    .line 1766
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_1b
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Vpn;->-get0(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->-set2(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap4(Lcom/android/server/connectivity/Vpn;)V

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Vpn;->-wrap2(Lcom/android/server/connectivity/Vpn;)V

    .line 1771
    const-string/jumbo v22, "LegacyVpnRunner"

    const-string/jumbo v24, "Connected!"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    monitor-exit v23
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_2
.end method

.method private monitorDaemons()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1785
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-get6(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1786
    return-void

    .line 1789
    :cond_0
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1790
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1791
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1792
    return-void

    .line 1790
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    const-string/jumbo v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1537
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 1546
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 1547
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;)V

    .line 1549
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->-get2(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    :goto_0
    return-void

    .line 1550
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 1556
    const-string/jumbo v3, "LegacyVpnRunner"

    const-string/jumbo v5, "Waiting"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    const-string/jumbo v6, "LegacyVpnRunner"

    monitor-enter v6

    .line 1558
    :try_start_0
    const-string/jumbo v3, "LegacyVpnRunner"

    const-string/jumbo v5, "Executing"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1560
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute()V

    .line 1561
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->monitorDaemons()V

    .line 1562
    invoke-static {}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupted()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1565
    :try_start_2
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v7, v5

    move v3, v4

    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v2, v5, v3

    .line 1566
    .local v2, "socket":Landroid/net/LocalSocket;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1565
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1571
    .end local v2    # "socket":Landroid/net/LocalSocket;
    :cond_0
    const-wide/16 v8, 0x32

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1574
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v0, v3, v4

    .line 1575
    .local v0, "daemon":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1574
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1572
    .end local v0    # "daemon":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1563
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 1565
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v7, v5

    move v3, v4

    :goto_3
    if-ge v3, v7, :cond_1

    aget-object v2, v5, v3

    .line 1566
    .restart local v2    # "socket":Landroid/net/LocalSocket;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1565
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1571
    .end local v2    # "socket":Landroid/net/LocalSocket;
    :cond_1
    const-wide/16 v8, 0x32

    :try_start_5
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1574
    :goto_4
    :try_start_6
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v5, v3

    :goto_5
    if-ge v4, v5, :cond_4

    aget-object v0, v3, v4

    .line 1575
    .restart local v0    # "daemon":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1574
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1572
    .end local v0    # "daemon":Ljava/lang/String;
    :catch_2
    move-exception v1

    goto :goto_4

    .line 1564
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    .line 1565
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v8, v7

    move v5, v4

    :goto_6
    if-ge v5, v8, :cond_2

    aget-object v2, v7, v5

    .line 1566
    .restart local v2    # "socket":Landroid/net/LocalSocket;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1565
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1571
    .end local v2    # "socket":Landroid/net/LocalSocket;
    :cond_2
    const-wide/16 v8, 0x32

    :try_start_7
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1574
    :goto_7
    :try_start_8
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v7, v5

    :goto_8
    if-ge v4, v7, :cond_3

    aget-object v0, v5, v4

    .line 1575
    .restart local v0    # "daemon":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1574
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1572
    .end local v0    # "daemon":Ljava/lang/String;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_7

    .line 1564
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1557
    :catchall_1
    move-exception v3

    monitor-exit v6

    throw v3

    .line 1578
    :cond_4
    :try_start_9
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-wrap3(Lcom/android/server/connectivity/Vpn;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit v6

    .line 1554
    return-void
.end method
