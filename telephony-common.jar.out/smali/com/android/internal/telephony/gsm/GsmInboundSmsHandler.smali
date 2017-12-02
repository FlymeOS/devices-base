.class public Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "GsmInboundSmsHandler.java"


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 50
    const-string/jumbo v1, "GsmInboundSmsHandler"

    .line 51
    invoke-static {p1, p3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 52
    iget-object v0, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 53
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 49
    return-void
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 73
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)V

    .line 74
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->start()V

    .line 75
    return-object v0
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .prologue
    .line 201
    packed-switch p0, :pswitch_data_0

    .line 210
    :pswitch_0
    const/16 v0, 0xff

    return v0

    .line 205
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 207
    :pswitch_2
    const/16 v0, 0xd3

    return v0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateMessageWaitingIndicator(I)V
    .locals 4
    .param p1, "voicemailCount"    # I

    .prologue
    const/4 v3, 0x1

    .line 148
    if-gez p1, :cond_1

    .line 149
    const/4 p1, -0x1

    .line 156
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 158
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 160
    .local v0, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_2

    .line 161
    const-string/jumbo v1, "updateMessageWaitingIndicator: updating SIM Records"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v3, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    .line 146
    :goto_1
    return-void

    .line 150
    .end local v0    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    .line 153
    const/16 p1, 0xff

    goto :goto_0

    .line 164
    .restart local v0    # "records":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    const-string/jumbo v1, "updateMessageWaitingIndicator: SIM Records not found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 175
    return-void
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 10
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    .line 97
    check-cast v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 99
    .local v2, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    const/4 v0, -0x1

    .line 102
    .local v0, "destPort":I
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v3

    .line 103
    .local v3, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v7, :cond_0

    .line 105
    iget-object v7, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 108
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    new-array v8, v6, [[B

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v9

    aput-object v9, v8, v5

    const-string/jumbo v5, "3gpp"

    .line 109
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v9

    .line 107
    invoke-static {v7, v8, v5, v0, v9}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->filter(Landroid/content/Context;[[BLjava/lang/String;II)Z

    .line 112
    const-string/jumbo v5, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 113
    return v6

    .line 117
    .end local v0    # "destPort":I
    .end local v3    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 118
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v4

    .line 119
    .local v4, "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v5, v4, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v5

    return v5

    .line 122
    .end local v4    # "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_2
    const/4 v1, 0x0

    .line 123
    .local v1, "handled":Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 124
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    .line 125
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v1

    .line 126
    .local v1, "handled":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_4

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 132
    .end local v1    # "handled":Z
    :cond_3
    :goto_1
    if-eqz v1, :cond_7

    .line 133
    return v6

    .restart local v1    # "handled":Z
    :cond_4
    move v5, v6

    .line 126
    goto :goto_0

    .line 127
    .local v1, "handled":Z
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 128
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    .line 129
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v1

    .line 130
    .local v1, "handled":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_6

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v5, v6

    goto :goto_2

    .line 136
    .end local v1    # "handled":Z
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v5

    if-nez v5, :cond_8

    .line 137
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v5, v6, :cond_8

    .line 140
    const/4 v5, 0x3

    return v5

    .line 143
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v5

    return v5
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 64
    const-string/jumbo v0, "unregistered for 3GPP SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 65
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    .line 60
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    .line 189
    const-string/jumbo v0, "onUpdatePhoneObject: dispose of old CellBroadcastHandler and make a new one"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    .line 191
    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 187
    return-void
.end method
