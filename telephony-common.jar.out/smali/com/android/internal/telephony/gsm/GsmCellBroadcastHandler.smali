.class public Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.super Lcom/android/internal/telephony/CellBroadcastHandler;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final VDBG:Z


# instance fields
.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 45
    const-string/jumbo v0, "GsmCellBroadcastHandler"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 46
    iget-object v0, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 44
    return-void
.end method

.method private handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;
    .locals 19
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 91
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [B

    .line 108
    .local v16, "receivedPdu":[B
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 109
    .local v7, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v17

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v18

    .line 109
    invoke-virtual/range {v17 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v15

    .line 111
    .local v15, "plmn":Ljava/lang/String;
    const/4 v10, -0x1

    .line 112
    .local v10, "lac":I
    const/4 v3, -0x1

    .line 113
    .local v3, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 117
    .local v4, "cl":Landroid/telephony/CellLocation;
    instance-of v0, v4, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 118
    move-object v0, v4

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v2, v0

    .line 119
    .local v2, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    .line 120
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 124
    .end local v2    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 136
    :pswitch_0
    new-instance v11, Landroid/telephony/SmsCbLocation;

    invoke-direct {v11, v15}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 141
    .local v11, "location":Landroid/telephony/SmsCbLocation;
    :goto_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v12

    .line 142
    .local v12, "pageCount":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v12, v0, :cond_5

    .line 144
    new-instance v5, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    invoke-direct {v5, v7, v11}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 147
    .local v5, "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[B

    .line 149
    .local v14, "pdus":[[B
    if-nez v14, :cond_1

    .line 152
    new-array v14, v12, [[B

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    aput-object v16, v14, v17

    .line 160
    const/16 v17, 0x0

    array-length v0, v14

    move/from16 v18, v0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v13, v14, v17

    .line 161
    .local v13, "pdu":[B
    if-nez v13, :cond_2

    .line 163
    const/16 v17, 0x0

    return-object v17

    .line 126
    .end local v5    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v11    # "location":Landroid/telephony/SmsCbLocation;
    .end local v12    # "pageCount":I
    .end local v13    # "pdu":[B
    .end local v14    # "pdus":[[B
    :pswitch_1
    new-instance v11, Landroid/telephony/SmsCbLocation;

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-direct {v11, v15, v10, v0}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 127
    .restart local v11    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 131
    .end local v11    # "location":Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v11, Landroid/telephony/SmsCbLocation;

    invoke-direct {v11, v15, v10, v3}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 132
    .restart local v11    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 160
    .restart local v5    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .restart local v12    # "pageCount":I
    .restart local v13    # "pdu":[B
    .restart local v14    # "pdus":[[B
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 168
    .end local v13    # "pdu":[B
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v5    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 180
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 181
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    .line 183
    .local v8, "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    invoke-virtual {v8, v15, v10, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v17

    if-nez v17, :cond_4

    .line 184
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 190
    .end local v3    # "cid":I
    .end local v4    # "cl":Landroid/telephony/CellLocation;
    .end local v7    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v8    # "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    .end local v10    # "lac":I
    .end local v11    # "location":Landroid/telephony/SmsCbLocation;
    .end local v12    # "pageCount":I
    .end local v14    # "pdus":[[B
    .end local v15    # "plmn":Ljava/lang/String;
    .end local v16    # "receivedPdu":[B
    :catch_0
    move-exception v6

    .line 191
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v17, "Error in decoding SMS CB pdu"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    const/16 v17, 0x0

    return-object v17

    .line 171
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "cid":I
    .restart local v4    # "cl":Landroid/telephony/CellLocation;
    .restart local v7    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v10    # "lac":I
    .restart local v11    # "location":Landroid/telephony/SmsCbLocation;
    .restart local v12    # "pageCount":I
    .restart local v15    # "plmn":Ljava/lang/String;
    .restart local v16    # "receivedPdu":[B
    :cond_5
    const/16 v17, 0x1

    :try_start_1
    move/from16 v0, v17

    new-array v14, v0, [[B

    .line 172
    .restart local v14    # "pdus":[[B
    const/16 v17, 0x0

    aput-object v16, v14, v17

    goto :goto_2

    .line 188
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_6
    invoke-static {v7, v11, v14}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    return-object v17

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 62
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 63
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->start()V

    .line 64
    return-object v0
.end method


# virtual methods
.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 75
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;

    move-result-object v0

    .line 77
    .local v0, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 79
    const/4 v1, 0x1

    return v1

    .line 82
    .end local v0    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleSmsMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->onQuitting()V

    .line 50
    return-void
.end method
