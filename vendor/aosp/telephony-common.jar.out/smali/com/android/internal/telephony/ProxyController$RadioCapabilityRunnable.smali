.class Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;
.super Ljava/lang/Object;
.source "ProxyController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ProxyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioCapabilityRunnable"
.end annotation


# instance fields
.field private mSessionId:I

.field final synthetic this$0:Lcom/android/internal/telephony/ProxyController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 577
    iget v2, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->mSessionId:I

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # getter for: Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I
    invoke-static {v3}, Lcom/android/internal/telephony/ProxyController;->access$400(Lcom/android/internal/telephony/ProxyController;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 578
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RadioCapability timeout: Ignore mSessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->mSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!= mRadioCapabilitySessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # getter for: Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I
    invoke-static {v4}, Lcom/android/internal/telephony/ProxyController;->access$400(Lcom/android/internal/telephony/ProxyController;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/ProxyController;->access$000(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 598
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # getter for: Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I
    invoke-static {v2}, Lcom/android/internal/telephony/ProxyController;->access$500(Lcom/android/internal/telephony/ProxyController;)[I

    move-result-object v3

    monitor-enter v3

    .line 584
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # getter for: Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {v2}, Lcom/android/internal/telephony/ProxyController;->access$600(Lcom/android/internal/telephony/ProxyController;)[Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 585
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RadioCapability timeout: mSetRadioAccessFamilyStatus["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # getter for: Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I
    invoke-static {v5}, Lcom/android/internal/telephony/ProxyController;->access$500(Lcom/android/internal/telephony/ProxyController;)[I

    move-result-object v5

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/internal/telephony/ProxyController;->access$000(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 591
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # getter for: Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/internal/telephony/ProxyController;->access$700(Lcom/android/internal/telephony/ProxyController;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 594
    .local v1, "uniqueDifferentId":I
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    const/4 v4, 0x2

    # invokes: Lcom/android/internal/telephony/ProxyController;->issueFinish(II)V
    invoke-static {v2, v4, v1}, Lcom/android/internal/telephony/ProxyController;->access$800(Lcom/android/internal/telephony/ProxyController;II)V

    .line 596
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->this$0:Lcom/android/internal/telephony/ProxyController;

    # invokes: Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V
    invoke-static {v2}, Lcom/android/internal/telephony/ProxyController;->access$900(Lcom/android/internal/telephony/ProxyController;)V

    .line 597
    monitor-exit v3

    goto :goto_0

    .end local v1    # "uniqueDifferentId":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setTimeoutState(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .prologue
    .line 572
    iput p1, p0, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->mSessionId:I

    .line 573
    return-void
.end method
