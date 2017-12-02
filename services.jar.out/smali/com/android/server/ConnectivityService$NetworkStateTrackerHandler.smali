.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2119
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2120
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2119
    return-void
.end method

.method private getCaptivePortalMode()I
    .locals 3

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2300
    const-string/jumbo v1, "captive_portal_mode"

    .line 2301
    const/4 v2, 0x1

    .line 2299
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2124
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2126
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 2128
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, p1}, Lcom/android/server/ConnectivityService;->-wrap6(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    .line 2141
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 2132
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2133
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_0

    .line 2137
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, p1}, Lcom/android/server/ConnectivityService;->-wrap5(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_0

    .line 2124
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2305
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2307
    const/4 v1, 0x0

    return v1

    .line 2309
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2310
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v0, v2}, Lcom/android/server/ConnectivityService;->-wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2311
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap8(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2316
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 2305
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2145
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2146
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_0

    .line 2151
    return-void

    .line 2154
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 2144
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 2156
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/NetworkCapabilities;

    .line 2157
    .local v3, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2158
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    .line 2157
    if-nez v6, :cond_2

    .line 2159
    const/16 v6, 0x12

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    .line 2157
    if-eqz v6, :cond_3

    .line 2160
    :cond_2
    invoke-static {}, Lcom/android/server/ConnectivityService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BUG: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " has CS-managed capability."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :cond_3
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v7

    invoke-static {v6, v7, v2, v3}, Lcom/android/server/ConnectivityService;->-wrap34(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    .line 2171
    .end local v3    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :pswitch_2
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 2172
    .local v4, "oldLp":Landroid/net/LinkProperties;
    monitor-enter v2

    .line 2173
    :try_start_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/LinkProperties;

    iput-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2175
    iget-boolean v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, v2, v4}, Lcom/android/server/ConnectivityService;->-wrap36(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    goto :goto_0

    .line 2172
    :catchall_0
    move-exception v6

    monitor-exit v2

    throw v6

    .line 2179
    .end local v4    # "oldLp":Landroid/net/LinkProperties;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 2180
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, v2, v1}, Lcom/android/server/ConnectivityService;->-wrap37(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 2184
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :pswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 2185
    .local v5, "score":Ljava/lang/Integer;
    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v2, v7}, Lcom/android/server/ConnectivityService;->-wrap38(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_0

    .line 2190
    .end local v5    # "score":Ljava/lang/Integer;
    :pswitch_5
    :try_start_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v6, Landroid/net/Network;->netId:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Landroid/net/UidRange;

    invoke-interface {v7, v8, v6}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2191
    :catch_0
    move-exception v0

    .line 2193
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception in addVpnUidRanges: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap24(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2199
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_6
    :try_start_2
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v6, Landroid/net/Network;->netId:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Landroid/net/UidRange;

    invoke-interface {v7, v8, v6}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2200
    :catch_1
    move-exception v0

    .line 2202
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception in removeVpnUidRanges: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap24(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2207
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_7
    iget-boolean v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v6, :cond_4

    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v6, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v6, :cond_5

    .line 2210
    :cond_4
    :goto_1
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2211
    iget-object v7, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v7, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    goto/16 :goto_0

    .line 2208
    :cond_5
    const-string/jumbo v6, "ERROR: already-connected network explicitly selected."

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap24(Ljava/lang/String;)V

    goto :goto_1

    .line 2215
    :pswitch_8
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v6

    invoke-virtual {v6, v2, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleEventPacketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2154
    nop

    :pswitch_data_0
    .packed-switch 0x81001
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 2222
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2224
    return v6

    .line 2227
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get9(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 2228
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get9(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v4

    .line 2230
    if-eqz v3, :cond_1

    .line 2232
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    const/4 v9, 0x1

    .line 2233
    .local v9, "valid":Z
    :goto_0
    iget-boolean v11, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 2234
    .local v11, "wasValidated":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " validation "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v9, :cond_3

    const-string/jumbo v0, "passed"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2235
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    .line 2234
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap23(Ljava/lang/String;)V

    .line 2236
    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eq v9, v0, :cond_0

    .line 2237
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v7

    .line 2238
    .local v7, "oldScore":I
    iput-boolean v9, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 2239
    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    or-int/2addr v0, v9

    iput-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    .line 2240
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v7, v3, v4}, Lcom/android/server/ConnectivityService;->-wrap34(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2242
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    if-eq v7, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->-wrap32(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2244
    .end local v7    # "oldScore":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->-wrap35(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2246
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 2247
    .local v8, "redirectUrlBundle":Landroid/os/Bundle;
    sget-object v4, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    iget-object v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2250
    if-eqz v9, :cond_5

    move v0, v12

    .line 2249
    :goto_3
    const v2, 0x81007

    .line 2248
    invoke-virtual {v4, v2, v0, v6, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2252
    if-eqz v11, :cond_1

    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_6

    .line 2295
    .end local v8    # "redirectUrlBundle":Landroid/os/Bundle;
    .end local v9    # "valid":Z
    .end local v11    # "wasValidated":Z
    :cond_1
    :goto_4
    return v12

    .line 2227
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 2232
    .restart local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "valid":Z
    goto :goto_0

    .line 2234
    .restart local v11    # "wasValidated":Z
    :cond_3
    const-string/jumbo v0, "failed"

    goto :goto_1

    .line 2235
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " with redirect to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .restart local v8    # "redirectUrlBundle":Landroid/os/Bundle;
    :cond_5
    move v0, v2

    .line 2250
    goto :goto_3

    .line 2253
    :cond_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->-wrap10(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_4

    .line 2259
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v8    # "redirectUrlBundle":Landroid/os/Bundle;
    .end local v9    # "valid":Z
    .end local v11    # "wasValidated":Z
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 2260
    .local v1, "netId":I
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7

    const/4 v10, 0x1

    .line 2262
    .local v10, "visible":Z
    :goto_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get9(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v5

    monitor-enter v5

    .line 2263
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get9(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v5

    .line 2266
    if-eqz v3, :cond_9

    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eq v10, v0, :cond_9

    .line 2267
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v7

    .line 2268
    .restart local v7    # "oldScore":I
    iput-boolean v10, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    .line 2269
    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    or-int/2addr v0, v10

    iput-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    .line 2270
    iget-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eqz v0, :cond_8

    .line 2271
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->getCaptivePortalMode()I

    move-result v0

    if-ne v2, v0, :cond_8

    .line 2272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Avoiding captive portal network: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap23(Ljava/lang/String;)V

    .line 2273
    iget-object v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2274
    const v2, 0x8100f

    .line 2273
    invoke-virtual {v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2275
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->-wrap33(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_4

    .line 2260
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v7    # "oldScore":I
    .end local v10    # "visible":Z
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "visible":Z
    goto :goto_5

    .line 2262
    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    .line 2278
    .restart local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v7    # "oldScore":I
    :cond_8
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v7, v3, v2}, Lcom/android/server/ConnectivityService;->-wrap34(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2280
    .end local v7    # "oldScore":I
    :cond_9
    if-nez v10, :cond_a

    .line 2281
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get10(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    goto/16 :goto_4

    .line 2283
    :cond_a
    if-nez v3, :cond_b

    .line 2284
    const-string/jumbo v0, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap24(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2287
    :cond_b
    iget-object v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    if-nez v0, :cond_1

    .line 2288
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get10(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v0

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 2289
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/PendingIntent;

    iget-object v6, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v6, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2288
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_4

    .line 2222
    :sswitch_data_0
    .sparse-switch
        0x82002 -> :sswitch_0
        0x8200a -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2321
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2322
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2320
    :cond_0
    :goto_0
    return-void

    .line 2323
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2324
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
