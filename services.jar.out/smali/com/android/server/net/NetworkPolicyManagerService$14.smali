.class Lcom/android/server/net/NetworkPolicyManagerService$14;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 3259
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 38
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3262
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_0

    .line 3415
    :pswitch_0
    const/16 v29, 0x0

    return v29

    .line 3264
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 3265
    .local v23, "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    .line 3266
    .local v24, "uidRules":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 3267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 3268
    .local v11, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v11, :cond_0

    .line 3269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .line 3270
    .local v12, "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v12, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 3268
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3272
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3273
    const/16 v29, 0x1

    return v29

    .line 3276
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v23    # "uid":I
    .end local v24    # "uidRules":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/String;

    .line 3277
    .local v13, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 3278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 3279
    .restart local v11    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    if-ge v8, v11, :cond_1

    .line 3280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .line 3281
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 3279
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3283
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3284
    const/16 v29, 0x1

    return v29

    .line 3287
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v13    # "meteredIfaces":[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 3289
    .local v9, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 3290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 3291
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v29

    if-eqz v29, :cond_2

    .line 3295
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3300
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 3301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v30

    .line 3304
    const/16 v29, 0x1

    return v29

    .line 3290
    :catchall_0
    move-exception v29

    monitor-exit v30

    throw v29

    .line 3307
    .end local v9    # "iface":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    if-eqz v29, :cond_3

    const/16 v21, 0x1

    .line 3308
    .local v21, "restrictBackground":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 3309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 3310
    .restart local v11    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v11, :cond_4

    .line 3311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .line 3312
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-static {v0, v12, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 3310
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 3307
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v21    # "restrictBackground":Z
    :cond_3
    const/16 v21, 0x0

    .restart local v21    # "restrictBackground":Z
    goto :goto_3

    .line 3314
    .restart local v8    # "i":I
    .restart local v11    # "length":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3316
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v29, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3317
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v29

    sget-object v30, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3319
    const/16 v29, 0x1

    return v29

    .line 3332
    .end local v8    # "i":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "length":I
    .end local v21    # "restrictBackground":Z
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 3333
    .restart local v23    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    const/4 v6, 0x1

    .line 3334
    .local v6, "changed":Z
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/Boolean;

    .line 3337
    .local v27, "whitelisted":Ljava/lang/Boolean;
    if-eqz v27, :cond_7

    .line 3338
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    .line 3339
    .local v28, "whitelistedBool":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v23

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 3341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 3342
    .restart local v11    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    if-ge v8, v11, :cond_6

    .line 3343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .line 3344
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-static {v0, v12, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 3342
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 3333
    .end local v6    # "changed":Z
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v27    # "whitelisted":Ljava/lang/Boolean;
    .end local v28    # "whitelistedBool":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "changed":Z
    goto :goto_5

    .line 3347
    .restart local v8    # "i":I
    .restart local v11    # "length":I
    .restart local v27    # "whitelisted":Ljava/lang/Boolean;
    .restart local v28    # "whitelistedBool":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3349
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v28    # "whitelistedBool":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 3350
    .local v20, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v17

    .line 3351
    .local v17, "packages":[Ljava/lang/String;
    if-eqz v6, :cond_8

    if-eqz v17, :cond_8

    .line 3353
    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v26

    .line 3354
    .local v26, "userId":I
    const/16 v29, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    :goto_7
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    aget-object v16, v17, v29

    .line 3355
    .local v16, "packageName":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    .line 3356
    const-string/jumbo v31, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    .line 3355
    move-object/from16 v0, v31

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3357
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3358
    const/high16 v31, 0x40000000    # 2.0f

    move/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v26 .. v26}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3354
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    .line 3362
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v26    # "userId":I
    :cond_8
    const/16 v29, 0x1

    return v29

    .line 3365
    .end local v6    # "changed":Z
    .end local v17    # "packages":[Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "uid":I
    .end local v27    # "whitelisted":Ljava/lang/Boolean;
    :pswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 3366
    .restart local v23    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    const/4 v4, 0x1

    .line 3368
    .local v4, "blacklisted":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v23

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 3370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 3371
    .restart local v11    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    if-ge v8, v11, :cond_a

    .line 3372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .line 3373
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-static {v0, v12, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 3371
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 3366
    .end local v4    # "blacklisted":Z
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "blacklisted":Z
    goto :goto_8

    .line 3376
    .restart local v8    # "i":I
    .restart local v11    # "length":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3377
    const/16 v29, 0x1

    return v29

    .line 3380
    .end local v4    # "blacklisted":Z
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v23    # "uid":I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/Long;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 3384
    .local v14, "lowestRule":J
    const-wide/16 v30, 0x3e8

    :try_start_3
    div-long v18, v14, v30

    .line 3385
    .local v18, "persistThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3389
    .end local v18    # "persistThreshold":J
    :goto_a
    const/16 v29, 0x1

    return v29

    .line 3392
    .end local v14    # "lowestRule":J
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 3394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    .line 3395
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    const/16 v31, 0x20

    shl-long v32, v32, v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v34, v34, v36

    or-long v32, v32, v34

    .line 3394
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap12(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    .line 3396
    const/16 v29, 0x1

    return v29

    .line 3399
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 3400
    const/16 v29, 0x1

    return v29

    .line 3403
    :pswitch_a
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 3404
    .local v5, "chain":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    .line 3405
    .local v22, "toggle":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/util/SparseIntArray;

    .line 3406
    .local v25, "uidRules":Landroid/util/SparseIntArray;
    if-eqz v25, :cond_b

    .line 3407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-static {v0, v5, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/util/SparseIntArray;)V

    .line 3409
    :cond_b
    if-eqz v22, :cond_c

    .line 3410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    const/16 v29, 0x1

    move/from16 v0, v22

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    const/16 v29, 0x1

    :goto_b
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-static {v0, v5, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;IZ)V

    .line 3412
    :cond_c
    const/16 v29, 0x1

    return v29

    .line 3410
    :cond_d
    const/16 v29, 0x0

    goto :goto_b

    .line 3386
    .end local v5    # "chain":I
    .end local v22    # "toggle":I
    .end local v25    # "uidRules":Landroid/util/SparseIntArray;
    .restart local v14    # "lowestRule":J
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto/16 :goto_a

    .line 3296
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v14    # "lowestRule":J
    .restart local v9    # "iface":Ljava/lang/String;
    :catch_1
    move-exception v7

    .restart local v7    # "e":Landroid/os/RemoteException;
    goto/16 :goto_2

    .line 3262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
