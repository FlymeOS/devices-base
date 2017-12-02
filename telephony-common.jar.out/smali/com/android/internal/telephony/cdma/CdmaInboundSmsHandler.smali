.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "CdmaInboundSmsHandler.java"


# instance fields
.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private final mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

.field private final mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 62
    const-string/jumbo v1, "CdmaInboundSmsHandler"

    .line 63
    invoke-static {p1, p3}, Lcom/android/internal/telephony/CellBroadcastHandler;->makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CellBroadcastHandler;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 62
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 54
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    const v1, 0x112006b

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 64
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 66
    iget-object v0, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 65
    invoke-static {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    .line 67
    iget-object v0, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method private static checkDuplicatePortOmadmWapPush([BI)Z
    .locals 6
    .param p0, "origPdu"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 325
    add-int/lit8 p1, p1, 0x4

    .line 326
    array-length v4, p0

    sub-int/2addr v4, p1

    new-array v1, v4, [B

    .line 327
    .local v1, "omaPdu":[B
    array-length v4, v1

    invoke-static {p0, p1, v1, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 329
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 330
    .local v2, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 333
    .local v3, "wspIndex":I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 334
    return v5

    .line 337
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/lit8 v3, v4, 0x2

    .line 340
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 341
    return v5

    .line 344
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "mimeType":Ljava/lang/String;
    const-string/jumbo v4, "application/vnd.syncml.notification"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4
.end method

.method private handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 3
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v0

    .line 237
    .local v0, "voicemailCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Voicemail count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 240
    if-gez v0, :cond_1

    .line 241
    const/4 v0, -0x1

    .line 248
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    .line 235
    return-void

    .line 242
    :cond_1
    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    .line 245
    const/16 v0, 0x63

    goto :goto_0
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 87
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .line 89
    .local v0, "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->start()V

    .line 90
    return-object v0
.end method

.method private processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;J)I
    .locals 21
    .param p1, "pdu"    # [B
    .param p2, "referenceNumber"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "dispAddr"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .prologue
    .line 263
    const/4 v2, 0x0

    .line 265
    const/4 v15, 0x1

    .local v15, "index":I
    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v17, v0

    .line 266
    .local v17, "msgType":I
    if-eqz v17, :cond_0

    .line 267
    const-string/jumbo v2, "Received a WAP SMS which is not WDP. Discard."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 268
    const/4 v2, 0x1

    return v2

    .line 270
    :cond_0
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "index":I
    .local v16, "index":I
    aget-byte v2, p1, v15

    and-int/lit16 v12, v2, 0xff

    .line 271
    .local v12, "totalSegments":I
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "index":I
    .restart local v15    # "index":I
    aget-byte v2, p1, v16

    and-int/lit16 v11, v2, 0xff

    .line 273
    .local v11, "segment":I
    if-lt v11, v12, :cond_1

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WDP bad segment #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " expecting 0-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v12, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 275
    const/4 v2, 0x1

    return v2

    .line 279
    :cond_1
    const/16 v18, 0x0

    .line 280
    .local v18, "sourcePort":I
    const/4 v6, 0x0

    .line 281
    .local v6, "destinationPort":I
    if-nez v11, :cond_2

    .line 283
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "index":I
    .restart local v16    # "index":I
    aget-byte v2, p1, v15

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v18, v2, 0x8

    .line 284
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "index":I
    .restart local v15    # "index":I
    aget-byte v2, p1, v16

    and-int/lit16 v2, v2, 0xff

    or-int v18, v18, v2

    .line 285
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "index":I
    .restart local v16    # "index":I
    aget-byte v2, p1, v15

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v6, v2, 0x8

    .line 286
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "index":I
    .restart local v15    # "index":I
    aget-byte v2, p1, v16

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v6, v2

    .line 289
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v2, :cond_2

    .line 290
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    add-int/lit8 v15, v15, 0x4

    .line 297
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received WAP PDU. Type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", originator = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 298
    const-string/jumbo v4, ", src-port = "

    .line 297
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 298
    const-string/jumbo v4, ", dst-port = "

    .line 297
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 299
    const-string/jumbo v4, ", ID = "

    .line 297
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 299
    const-string/jumbo v4, ", segment# = "

    .line 297
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 299
    const/16 v4, 0x2f

    .line 297
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p1

    array-length v2, v0

    sub-int/2addr v2, v15

    new-array v3, v2, [B

    .line 303
    .local v3, "userData":[B
    move-object/from16 v0, p1

    array-length v2, v0

    sub-int/2addr v2, v15

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v15, v3, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 305
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    .line 307
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v14

    .line 306
    const/4 v7, 0x1

    .line 307
    const/4 v13, 0x1

    move-wide/from16 v4, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p2

    .line 305
    invoke-virtual/range {v2 .. v14}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v19

    .line 310
    .local v19, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v2

    return v2
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .prologue
    .line 216
    packed-switch p0, :pswitch_data_0

    .line 227
    :pswitch_0
    const/16 v0, 0x27

    return v0

    .line 220
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 222
    :pswitch_2
    const/16 v0, 0x23

    return v0

    .line 224
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 188
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    move-result v0

    .line 189
    .local v0, "causeCode":I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 191
    if-nez v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    .line 194
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 187
    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 11
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v1, 0x1

    move-object v9, p1

    .line 109
    check-cast v9, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 110
    .local v9, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v2

    if-ne v1, v2, :cond_0

    move v8, v1

    .line 113
    .local v8, "isBroadcastType":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 114
    const-string/jumbo v2, "Broadcast type message"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v0

    .line 116
    .local v0, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v0, :cond_1

    .line 117
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    .line 121
    :goto_1
    return v1

    .line 110
    .end local v0    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .end local v8    # "isBroadcastType":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 119
    .restart local v0    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .restart local v8    # "isBroadcastType":Z
    :cond_1
    const-string/jumbo v2, "error trying to parse broadcast SMS"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    .end local v0    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_2
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v2, :cond_3

    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 126
    if-eqz v2, :cond_3

    .line 128
    return v1

    .line 132
    :cond_3
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 133
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v10

    .line 135
    .local v10, "teleService":I
    sparse-switch v10, :sswitch_data_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported teleservice 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x4

    return v1

    .line 139
    :sswitch_0
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 140
    return v1

    .line 144
    :sswitch_1
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 146
    return v1

    .line 151
    :sswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    .line 152
    return v1

    .line 163
    :cond_4
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 164
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v1, v2, :cond_5

    .line 168
    const/4 v1, 0x3

    return v1

    .line 171
    :cond_5
    const/16 v1, 0x1004

    if-ne v1, v10, :cond_6

    .line 172
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v2

    iget v3, v9, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 173
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    move-object v1, p0

    .line 172
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;J)I

    move-result v1

    return v1

    .line 177
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v1

    return v1

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_0
        0x1004 -> :sswitch_3
        0x1005 -> :sswitch_1
        0x1006 -> :sswitch_2
        0x40000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 78
    const-string/jumbo v0, "unregistered for 3GPP2 SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 79
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    .line 74
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 205
    return-void
.end method
