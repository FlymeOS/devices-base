.class final Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierSmsFilterCallback"
.end annotation


# instance fields
.field private final mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

.field private final mUserUnlocked:Z

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p2, "smsFilter"    # Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .param p3, "userUnlocked"    # Z

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    .line 1435
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    .line 1436
    iput-boolean p3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mUserUnlocked:Z

    .line 1434
    return-void
.end method


# virtual methods
.method public onDownloadMmsComplete(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected onDownloadMmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1496
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 7
    .param p1, "result"    # I

    .prologue
    .line 1444
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierMessagingServiceManager;->disposeConnection(Landroid/content/Context;)V

    .line 1447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1449
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFilterComplete: result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap10(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    .line 1450
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_3

    .line 1451
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    invoke-static {v3}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get1(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)[[B

    move-result-object v3

    .line 1452
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get3(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    invoke-static {v5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get0(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v6, v6, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    .line 1451
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->filter(Landroid/content/Context;[[BLjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1453
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string/jumbo v3, "Visual voicemail SMS dropped"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1454
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    invoke-static {v3}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get2(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap7(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1455
    return-void

    .line 1458
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mUserUnlocked:Z

    if-eqz v2, :cond_1

    .line 1459
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    invoke-static {v3}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get1(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)[[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get3(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Ljava/lang/String;

    move-result-object v4

    .line 1460
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    invoke-static {v5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get0(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    invoke-static {v6}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get2(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-result-object v6

    .line 1459
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap6(Lcom/android/internal/telephony/InboundSmsHandler;[[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1476
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1443
    return-void

    .line 1465
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap1(Lcom/android/internal/telephony/InboundSmsHandler;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1466
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap11(Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 1468
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1474
    :catchall_0
    move-exception v2

    .line 1476
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1474
    throw v2

    .line 1472
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    invoke-static {v3}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->-get2(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->-wrap7(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onSendMmsComplete(I[B)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "sendConfPdu"    # [B

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected onSendMmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method public onSendMultipartSmsComplete(I[I)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "messageRefs"    # [I

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected onSendMultipartSmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1486
    return-void
.end method

.method public onSendSmsComplete(II)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "messageRef"    # I

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected onSendSmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1481
    return-void
.end method
