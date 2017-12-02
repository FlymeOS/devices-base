.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 17

    .prologue
    .line 1557
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DcActiveState: enter dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    .line 1563
    .local v15, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v13

    .line 1564
    .local v13, "networkType":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    if-eq v1, v13, :cond_0

    .line 1565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DcActiveState with incorrect subtype ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1566
    const-string/jumbo v3, ", "

    .line 1565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1566
    const-string/jumbo v3, "), updating."

    .line 1565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1568
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v13}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 1569
    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v14

    .line 1570
    .local v14, "roaming":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eq v14, v1, :cond_1

    .line 1571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DcActiveState with incorrect roaming ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1572
    const-string/jumbo v3, ", "

    .line 1571
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1572
    const-string/jumbo v3, "), updating."

    .line 1571
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1574
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 1577
    const/4 v12, 0x1

    .line 1579
    .local v12, "createNetworkAgent":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v2, 0x40004

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap2(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1580
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v2, 0x40006

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap2(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Z

    move-result v1

    .line 1579
    if-nez v1, :cond_2

    .line 1581
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v2, 0x40004

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap1(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Z

    move-result v1

    .line 1579
    if-nez v1, :cond_2

    .line 1582
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v2, 0x40006

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap1(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Z

    move-result v1

    .line 1579
    if-eqz v1, :cond_5

    .line 1583
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v2, "DcActiveState: skipping notifyAllOfConnected()"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1584
    const/4 v12, 0x0

    .line 1590
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1591
    const v3, 0x4000f

    const/4 v4, 0x0

    .line 1590
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1593
    const v3, 0x40010

    const/4 v4, 0x0

    .line 1592
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->addActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 1600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1599
    invoke-virtual {v1, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap21(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 1604
    new-instance v10, Landroid/net/NetworkMisc;

    invoke-direct {v10}, Landroid/net/NetworkMisc;-><init>()V

    .line 1605
    .local v10, "misc":Landroid/net/NetworkMisc;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object v11

    .line 1606
    .local v11, "carrierSignalAgent":Lcom/android/internal/telephony/CarrierSignalAgent;
    invoke-virtual {v11}, Lcom/android/internal/telephony/CarrierSignalAgent;->hasRegisteredCarrierSignalReceivers()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1608
    const/4 v1, 0x1

    iput-boolean v1, v10, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    .line 1610
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    .line 1612
    if-eqz v12, :cond_4

    .line 1613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap18(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v16, v0

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1615
    const-string/jumbo v5, "DcNetworkAgent"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    move-result-object v8

    .line 1616
    const/16 v9, 0x32

    .line 1614
    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set11(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    .line 1556
    :cond_4
    return-void

    .line 1587
    .end local v10    # "misc":Landroid/net/NetworkMisc;
    .end local v11    # "carrierSignalAgent":Lcom/android/internal/telephony/CarrierSignalAgent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v2, "connected"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap13(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public exit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1622
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DcActiveState: exit dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1623
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 1624
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->isExecutingCarrierChange()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1625
    const-string/jumbo v0, "carrierChange"

    .line 1631
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 1632
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 1634
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 1635
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    .line 1634
    invoke-virtual {v1, v2, v0, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1637
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1638
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set11(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    .line 1621
    :cond_1
    return-void

    .line 1626
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1627
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    move-result-object v1

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    goto :goto_0

    .line 1628
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1629
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1646
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1759
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DcActiveState not handled msg.what="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1761
    const/4 v6, 0x0

    .line 1764
    .local v6, "retVal":Z
    :goto_0
    return v6

    .line 1648
    .end local v6    # "retVal":Z
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1651
    .local v2, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    iget-object v8, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DcActiveState: EVENT_CONNECT cp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " dc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1655
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v7, v2, v8, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    .line 1656
    const/4 v6, 0x1

    .line 1657
    .restart local v6    # "retVal":Z
    goto :goto_0

    .line 1660
    .end local v2    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v6    # "retVal":Z
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1662
    .local v3, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DcActiveState: EVENT_DISCONNECT dp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1663
    const-string/jumbo v9, " dc="

    .line 1662
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1663
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 1662
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1665
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1667
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DcActiveState msg.what=EVENT_DISCONNECT RefCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1668
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v9, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    .line 1667
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1671
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ne v7, v12, :cond_0

    .line 1672
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 1673
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set8(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1674
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1675
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    iput v7, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    .line 1676
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap19(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    .line 1677
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get11(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap20(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1687
    :goto_1
    const/4 v6, 0x1

    .line 1688
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 1679
    .end local v6    # "retVal":Z
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7, v3, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap15(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto :goto_1

    .line 1683
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DcActiveState ERROR no such apnContext="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1684
    const-string/jumbo v9, " in this dc="

    .line 1683
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1684
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 1683
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1685
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7, v3, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap15(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto :goto_1

    .line 1692
    .end local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :pswitch_3
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DcActiveState EVENT_DISCONNECT clearing apn contexts, dc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1693
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 1692
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1695
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1696
    .restart local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set8(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1697
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1698
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v7, v7, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    iput v7, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    .line 1699
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap19(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    .line 1700
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get11(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap20(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1701
    const/4 v6, 0x1

    .line 1702
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 1706
    .end local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .end local v6    # "retVal":Z
    :pswitch_4
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DcActiveState EVENT_LOST_CONNECTION dc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1709
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get13(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 1710
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get13(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap20(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1711
    const/4 v6, 0x1

    .line 1712
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 1715
    .end local v6    # "retVal":Z
    :pswitch_5
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 1716
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1717
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1719
    :cond_2
    const/4 v6, 0x1

    .line 1720
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 1723
    .end local v6    # "retVal":Z
    :pswitch_6
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 1724
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1725
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1727
    :cond_3
    const/4 v6, 0x1

    .line 1728
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 1731
    .end local v6    # "retVal":Z
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1732
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_5

    .line 1733
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EVENT_BW_REFRESH_RESPONSE: error ignoring, e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1745
    :cond_4
    :goto_2
    const/4 v6, 0x1

    .line 1746
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 1735
    .end local v6    # "retVal":Z
    :cond_5
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 1736
    .local v1, "capInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1737
    .local v4, "lceBwDownKbps":I
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 1738
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getLceStatus()I

    move-result v7

    if-ne v7, v12, :cond_4

    .line 1739
    invoke-virtual {v5, v4}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 1740
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1741
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    goto :goto_2

    .line 1750
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "capInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "lceBwDownKbps":I
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    :pswitch_8
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1752
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1754
    :cond_6
    const/4 v6, 0x1

    .line 1755
    .restart local v6    # "retVal":Z
    goto/16 :goto_0

    .line 1646
    :pswitch_data_0
    .packed-switch 0x40000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
