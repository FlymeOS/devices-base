.class final Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
.super Landroid/telephony/CarrierMessagingServiceManager;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultipartSmsSender"
.end annotation


# instance fields
.field private final mParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

.field public final mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p3, "trackers"    # [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 515
    .local p2, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/telephony/CarrierMessagingServiceManager;-><init>()V

    .line 516
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mParts:Ljava/util/List;

    .line 517
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 515
    return-void
.end method


# virtual methods
.method protected onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .locals 7
    .param p1, "carrierMessagingService"    # Landroid/service/carrier/ICarrierMessagingService;

    .prologue
    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mParts:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v2

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher;->-wrap0(Landroid/app/PendingIntent;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    move-object v0, p1

    .line 536
    invoke-interface/range {v0 .. v5}, Landroid/service/carrier/ICarrierMessagingService;->sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v6

    .line 540
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception sending the SMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    .line 542
    const/4 v1, 0x1

    .line 543
    const/4 v2, 0x0

    .line 541
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->onSendMultipartSmsComplete(I[I)V

    goto :goto_0
.end method

.method sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V
    .locals 3
    .param p1, "carrierPackageName"    # Ljava/lang/String;
    .param p2, "senderCallback"    # Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    .prologue
    .line 522
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/telephony/CarrierMessagingServiceManager;->bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    const-string/jumbo v0, "SMSDispatcher"

    const-string/jumbo v1, "bindService() for carrier messaging service failed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    .line 526
    const/4 v1, 0x1

    .line 527
    const/4 v2, 0x0

    .line 525
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->onSendMultipartSmsComplete(I[I)V

    .line 521
    :goto_0
    return-void

    .line 529
    :cond_0
    const-string/jumbo v0, "SMSDispatcher"

    const-string/jumbo v1, "bindService() for carrier messaging service succeeded"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
