.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimChangeBroadcastReceiver"
.end annotation


# instance fields
.field private final mGenerationNumber:I

.field private mSimNotLoadedSeen:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p2, "generationNumber"    # I

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1548
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    .line 1549
    iput p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    .line 1547
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1558
    iget v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get8(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    if-eq v10, v11, :cond_0

    return-void

    .line 1561
    :cond_0
    const-string/jumbo v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1563
    .local v5, "state":Ljava/lang/String;
    const-string/jumbo v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "got Sim changed to state "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mSimNotLoadedSeen="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1564
    iget-boolean v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    .line 1563
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-boolean v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    if-nez v10, :cond_1

    const-string/jumbo v10, "LOADED"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1569
    :cond_1
    :goto_0
    iget-boolean v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    if-eqz v10, :cond_5

    const-string/jumbo v10, "LOADED"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1570
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    .line 1572
    :try_start_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get1(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040034

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 1574
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    .local v9, "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v1, v10, :cond_6

    .line 1577
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1578
    .local v6, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v10, v6, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    const/4 v12, 0x2

    .line 1578
    if-eq v10, v12, :cond_4

    .line 1576
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1566
    .end local v1    # "i":I
    .end local v6    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    .end local v9    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    goto :goto_0

    .line 1582
    .restart local v1    # "i":I
    .restart local v6    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    .restart local v9    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_2
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1583
    .local v2, "iface":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10, v2}, Lcom/android/server/connectivity/Tethering;->-wrap2(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I

    move-result v3

    .line 1584
    .local v3, "interfaceType":I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_2

    .line 1585
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1575
    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "interfaceType":I
    .end local v6    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v11

    throw v10
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1602
    .end local v1    # "i":I
    .end local v9    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1603
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v10, "Tethering"

    const-string/jumbo v11, "no prov-check needed for new SIM"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    :goto_3
    return-void

    .restart local v1    # "i":I
    .restart local v9    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    :try_start_4
    monitor-exit v11

    .line 1589
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "tetherType$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1590
    .local v7, "tetherType":I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1592
    .local v4, "startProvIntent":Landroid/content/Intent;
    const-string/jumbo v10, "extraAddTetherType"

    .line 1591
    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1594
    const-string/jumbo v10, "extraRunProvision"

    const/4 v11, 0x1

    .line 1593
    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1595
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get0()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1596
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->-get1(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_4

    .line 1598
    .end local v4    # "startProvIntent":Landroid/content/Intent;
    .end local v7    # "tetherType":I
    :cond_7
    const-string/jumbo v10, "Tethering"

    const-string/jumbo v11, "re-evaluate provisioning"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1600
    .end local v1    # "i":I
    .end local v8    # "tetherType$iterator":Ljava/util/Iterator;
    .end local v9    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8
    const-string/jumbo v10, "Tethering"

    const-string/jumbo v11, "no prov-check needed for new SIM"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method
