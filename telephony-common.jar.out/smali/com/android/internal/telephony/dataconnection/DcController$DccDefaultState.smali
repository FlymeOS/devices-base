.class Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;
.super Lcom/android/internal/util/State;
.source "DcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DccDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcController;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcController;)V

    return-void
.end method

.method private onDataStateChanged(Ljava/util/ArrayList;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onDataStateChanged: dcsList="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 218
    const-string/jumbo v25, " mDcListActiveByCid="

    .line 217
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/dataconnection/DcController;->-get0(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    move-result-object v25

    .line 217
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V

    .line 226
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v8, "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "dcs$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 228
    .local v11, "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget v0, v11, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 233
    .end local v11    # "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v13, "dcsToRetry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get0(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "dc$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 235
    .local v9, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-nez v23, :cond_1

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onDataStateChanged: add to retry dc="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    .end local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onDataStateChanged: dcsToRetry="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 244
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v6, "apnsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    const/16 v16, 0x0

    .line 247
    .local v16, "isAnyDataCallDormant":Z
    const/4 v15, 0x0

    .line 249
    .local v15, "isAnyDataCallActive":Z
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "newState$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 251
    .local v18, "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get0(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 252
    .restart local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-nez v9, :cond_4

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    const-string/jumbo v24, "onDataStateChanged: no associated DC yet, ignore"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 258
    :cond_4
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    if-nez v23, :cond_7

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    const-string/jumbo v24, "onDataStateChanged: no connected apns, ignore"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    .line 354
    :cond_5
    :goto_3
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 355
    const/4 v15, 0x1

    .line 357
    :cond_6
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 358
    const/16 v16, 0x1

    goto :goto_2

    .line 263
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onDataStateChanged: Found ConnId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 264
    const-string/jumbo v25, " newState="

    .line 263
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 264
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->toString()Ljava/lang/String;

    move-result-object v25

    .line 263
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    move/from16 v23, v0

    if-nez v23, :cond_b

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 267
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_3

    .line 270
    :cond_8
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v14

    .line 271
    .local v14, "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-virtual {v14}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onDataStateChanged: X restart radio, failCause="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRestartRadio()V

    goto/16 :goto_3

    .line 277
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onDataStateChanged: inactive, add to cleanup list. failCause="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 282
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 285
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onDataStateChanged: inactive, add to retry list. failCause="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 293
    .end local v14    # "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :cond_b
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/dataconnection/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v22

    .line 294
    .local v22, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    const-string/jumbo v24, "onDataStateChanged: no change"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 297
    :cond_c
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 298
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 299
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 300
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 301
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    const-string/jumbo v24, "onDataStateChanged: no changes"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 305
    :cond_d
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v7

    .line 307
    .local v7, "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onDataStateChanged: oldLp="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 308
    const-string/jumbo v25, " newLp="

    .line 307
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 308
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    .line 307
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 308
    const-string/jumbo v25, " car="

    .line 307
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 310
    const/16 v17, 0x0

    .line 311
    .local v17, "needToClean":Z
    iget-object v0, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "added$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 312
    .local v2, "added":Landroid/net/LinkAddress;
    iget-object v0, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "removed$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/LinkAddress;

    .line 314
    .local v20, "removed":Landroid/net/LinkAddress;
    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v23

    .line 315
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v24

    .line 313
    invoke-static/range {v23 .. v24}, Landroid/net/NetworkUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 316
    const/16 v17, 0x1

    .line 317
    goto :goto_4

    .line 321
    .end local v2    # "added":Landroid/net/LinkAddress;
    .end local v20    # "removed":Landroid/net/LinkAddress;
    .end local v21    # "removed$iterator":Ljava/util/Iterator;
    :cond_10
    if-eqz v17, :cond_11

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onDataStateChanged: addr change, cleanup apns="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 324
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    move-object/from16 v25, v0

    .line 323
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 325
    const-string/jumbo v25, " oldLp="

    .line 323
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 325
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    .line 323
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 326
    const-string/jumbo v25, " newLp="

    .line 323
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 326
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    .line 323
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 328
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 330
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    const-string/jumbo v24, "onDataStateChanged: simple change"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 332
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "apnContext$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 333
    .local v4, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v23

    .line 334
    const-string/jumbo v24, "linkPropertiesChanged"

    .line 335
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v25

    .line 333
    invoke-virtual/range {v23 .. v25}, Lcom/android/internal/telephony/Phone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 344
    .end local v3    # "added$iterator":Ljava/util/Iterator;
    .end local v4    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "apnContext$iterator":Ljava/util/Iterator;
    .end local v7    # "car":Landroid/net/LinkProperties$CompareResult;, "Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v17    # "needToClean":Z
    :cond_12
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onDataStateChanged: interface change, cleanup apns="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 347
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    move-object/from16 v25, v0

    .line 346
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 362
    .end local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v18    # "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .end local v22    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    :cond_13
    if-eqz v16, :cond_14

    if-eqz v15, :cond_16

    .line 374
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onDataStateChanged: Data Activity updated to NONE. isAnyDataCallActive = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 376
    const-string/jumbo v25, " isAnyDataCallDormant = "

    .line 374
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 378
    if-eqz v15, :cond_15

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    .line 384
    :cond_15
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onDataStateChanged: dcsToRetry="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 385
    const-string/jumbo v25, " apnsToCleanup="

    .line 384
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V

    .line 389
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "apnContext$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 390
    .restart local v4    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_7

    .line 369
    .end local v4    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "apnContext$iterator":Ljava/util/Iterator;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    const-string/jumbo v24, "onDataStateChanged: Data Activity updated to DORMANT. stopNetStatePoll"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/dataconnection/DcController;->-get2(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    goto :goto_6

    .line 394
    .restart local v5    # "apnContext$iterator":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 395
    .restart local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onDataStateChanged: send EVENT_LOST_CONNECTION dc.mTag="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 396
    iget v0, v9, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v23, v0

    const v24, 0x40009

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(II)V

    goto :goto_8

    .line 215
    .end local v9    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_18
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 161
    const v2, 0x40005

    .line 160
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 163
    const v2, 0x40007

    .line 162
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 164
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 166
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcController;Landroid/os/Handler;)V

    .line 165
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->-set0(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    .line 159
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get3(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get1(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->-get1(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->dispose()V

    .line 171
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 185
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 208
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 187
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 188
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DccDefaultState: msg.what=EVENT_RIL_CONNECTED mRilVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 191
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    const-string/jumbo v2, "DccDefaultState: Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 200
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 201
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->onDataStateChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DcController;

    const-string/jumbo v2, "DccDefaultState: EVENT_DATA_STATE_CHANGED: exception; likely radio not available, ignore"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x40005
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
