.class public final Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "SmsSenderCallback"
.end annotation


# instance fields
.field private final mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V
    .locals 0
    .param p2, "smsSender"    # Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    .line 428
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    .line 429
    return-void
.end method


# virtual methods
.method public onDownloadMmsComplete(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 463
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onDownloadMmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void
.end method

.method public onFilterComplete(Z)V
    .locals 3
    .param p1, "keepMessage"    # Z

    .prologue
    .line 453
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onFilterComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method public onSendMmsComplete(I[B)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "sendConfPdu"    # [B

    .prologue
    .line 458
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onSendMmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void
.end method

.method public onSendMultipartSmsComplete(I[I)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "messageRefs"    # [I

    .prologue
    .line 448
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onSendMultipartSmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method public onSendSmsComplete(II)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "messageRef"    # I

    .prologue
    .line 436
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    # invokes: Lcom/android/internal/telephony/SMSDispatcher;->checkCallerIsPhoneOrCarrierApp()V
    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$000(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 439
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->disposeConnection(Landroid/content/Context;)V

    .line 440
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    # invokes: Lcom/android/internal/telephony/SMSDispatcher;->processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    invoke-static {v2, v3, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->access$100(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 444
    return-void

    .line 442
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
