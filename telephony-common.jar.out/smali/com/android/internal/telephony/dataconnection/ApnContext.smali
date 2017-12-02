.class public Lcom/android/internal/telephony/dataconnection/ApnContext;
.super Ljava/lang/Object;
.source "ApnContext.java"


# static fields
.field protected static final DBG:Z = false

.field private static final MAX_HISTORY_LOG_COUNT:I = 0x4

.field private static final SLOG_TAG:Ljava/lang/String; = "ApnContext"


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private final mApnType:Ljava/lang/String;

.field private mConcurrentVoiceAndDataAllowed:Z

.field private final mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

.field private final mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mHistoryLogs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field mReason:Ljava/lang/String;

.field mReconnectAlarmIntent:Landroid/app/PendingIntent;

.field private mRefCount:I

.field private final mRefCountLock:Ljava/lang/Object;

.field private final mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

.field private final mRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private mState:Lcom/android/internal/telephony/DctConstants$State;

.field public final priority:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkConfig;Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "config"    # Landroid/net/NetworkConfig;
    .param p5, "tracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    .line 77
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    .line 403
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mHistoryLogs:Ljava/util/ArrayDeque;

    .line 470
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 114
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 116
    const-string/jumbo v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p4, Landroid/net/NetworkConfig;->dependencyMet:Z

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    iget v0, p4, Landroid/net/NetworkConfig;->priority:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    .line 120
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->LOG_TAG:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 122
    new-instance v0, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/RetryManager;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    .line 112
    return-void
.end method

.method public static apnIdForApnName(Ljava/lang/String;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 641
    const-string/jumbo v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    const/4 v0, 0x0

    return v0

    .line 641
    :cond_0
    const-string/jumbo v0, "mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    const/4 v0, 0x1

    return v0

    .line 641
    :cond_1
    const-string/jumbo v0, "supl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    const/4 v0, 0x2

    return v0

    .line 641
    :cond_2
    const-string/jumbo v0, "dun"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 649
    const/4 v0, 0x3

    return v0

    .line 641
    :cond_3
    const-string/jumbo v0, "hipri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 651
    const/4 v0, 0x4

    return v0

    .line 641
    :cond_4
    const-string/jumbo v0, "ims"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 653
    const/4 v0, 0x5

    return v0

    .line 641
    :cond_5
    const-string/jumbo v0, "fota"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 655
    const/4 v0, 0x6

    return v0

    .line 641
    :cond_6
    const-string/jumbo v0, "cbs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 657
    const/4 v0, 0x7

    return v0

    .line 641
    :cond_7
    const-string/jumbo v0, "ia"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 659
    const/16 v0, 0x8

    return v0

    .line 641
    :cond_8
    const-string/jumbo v0, "emergency"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 661
    const/16 v0, 0x9

    return v0

    .line 663
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public static apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I
    .locals 6
    .param p0, "nr"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 569
    iget-object v2, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 571
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    .line 572
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 573
    return v5

    .line 578
    :cond_0
    const/4 v0, -0x1

    .line 579
    .local v0, "apnId":I
    const/4 v1, 0x0

    .line 581
    .local v1, "error":Z
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    const/4 v0, 0x0

    .line 584
    :cond_1
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 585
    if-eq v0, v5, :cond_2

    const/4 v1, 0x1

    .line 586
    :cond_2
    const/4 v0, 0x1

    .line 588
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 589
    if-eq v0, v5, :cond_4

    const/4 v1, 0x1

    .line 590
    :cond_4
    const/4 v0, 0x2

    .line 592
    :cond_5
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 593
    if-eq v0, v5, :cond_6

    const/4 v1, 0x1

    .line 594
    :cond_6
    const/4 v0, 0x3

    .line 596
    :cond_7
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 597
    if-eq v0, v5, :cond_8

    const/4 v1, 0x1

    .line 598
    :cond_8
    const/4 v0, 0x6

    .line 600
    :cond_9
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 601
    if-eq v0, v5, :cond_a

    const/4 v1, 0x1

    .line 602
    :cond_a
    const/4 v0, 0x5

    .line 604
    :cond_b
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 605
    if-eq v0, v5, :cond_c

    const/4 v1, 0x1

    .line 606
    :cond_c
    const/4 v0, 0x7

    .line 608
    :cond_d
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 609
    if-eq v0, v5, :cond_e

    const/4 v1, 0x1

    .line 610
    :cond_e
    const/16 v0, 0x8

    .line 612
    :cond_f
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 613
    if-eq v0, v5, :cond_10

    const/4 v1, 0x1

    .line 615
    :cond_10
    const-string/jumbo v3, "ApnContext"

    const-string/jumbo v4, "RCS APN type not yet supported"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_11
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 618
    if-eq v0, v5, :cond_12

    const/4 v1, 0x1

    .line 620
    :cond_12
    const-string/jumbo v3, "ApnContext"

    const-string/jumbo v4, "XCAP APN type not yet supported"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_13
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 623
    if-eq v0, v5, :cond_14

    const/4 v1, 0x1

    .line 624
    :cond_14
    const/16 v0, 0x9

    .line 626
    :cond_15
    if-eqz v1, :cond_16

    .line 631
    const-string/jumbo v3, "ApnContext"

    const-string/jumbo v4, "Multiple apn types specified in request - result is unspecified!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_16
    if-ne v0, v5, :cond_17

    .line 634
    const-string/jumbo v3, "ApnContext"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported NetworkRequest in Telephony: nr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_17
    return v0
.end method

.method public static apnIdForType(I)I
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 544
    packed-switch p0, :pswitch_data_0

    .line 564
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 546
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 548
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 550
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 552
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 554
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 556
    :pswitch_6
    const/4 v0, 0x5

    return v0

    .line 558
    :pswitch_7
    const/4 v0, 0x7

    return v0

    .line 560
    :pswitch_8
    const/16 v0, 0x8

    return v0

    .line 562
    :pswitch_9
    const/16 v0, 0x9

    return v0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static apnNameForApnId(I)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 668
    packed-switch p0, :pswitch_data_0

    .line 690
    const-string/jumbo v0, "ApnContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") in apnIdToType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string/jumbo v0, "default"

    return-object v0

    .line 670
    :pswitch_0
    const-string/jumbo v0, "default"

    return-object v0

    .line 672
    :pswitch_1
    const-string/jumbo v0, "mms"

    return-object v0

    .line 674
    :pswitch_2
    const-string/jumbo v0, "supl"

    return-object v0

    .line 676
    :pswitch_3
    const-string/jumbo v0, "dun"

    return-object v0

    .line 678
    :pswitch_4
    const-string/jumbo v0, "hipri"

    return-object v0

    .line 680
    :pswitch_5
    const-string/jumbo v0, "ims"

    return-object v0

    .line 682
    :pswitch_6
    const-string/jumbo v0, "fota"

    return-object v0

    .line 684
    :pswitch_7
    const-string/jumbo v0, "cbs"

    return-object v0

    .line 686
    :pswitch_8
    const-string/jumbo v0, "ia"

    return-object v0

    .line 688
    :pswitch_9
    const-string/jumbo v0, "emergency"

    return-object v0

    .line 668
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private isFastRetryReason()Z
    .locals 2

    .prologue
    .line 346
    const-string/jumbo v0, "nwTypeChanged"

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    const-string/jumbo v0, "apnChanged"

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ApnContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 709
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v5, "  "

    invoke-direct {v4, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 710
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v6

    .line 711
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 712
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 713
    const-string/jumbo v5, "NetworkRequests:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 715
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "nr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 716
    .local v2, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 710
    .end local v2    # "nr":Landroid/net/NetworkRequest;
    .end local v3    # "nr$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 718
    .restart local v3    # "nr$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 720
    .end local v3    # "nr$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 721
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    .line 722
    .local v0, "l":Landroid/util/LocalLog;
    invoke-virtual {v0, p1, v4, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    .line 724
    .end local v0    # "l":Landroid/util/LocalLog;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mHistoryLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-lez v5, :cond_3

    const-string/jumbo v5, "Historical Logs:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 725
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mHistoryLogs:Ljava/util/ArrayDeque;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    .line 726
    .restart local v0    # "l":Landroid/util/LocalLog;
    invoke-virtual {v0, p1, v4, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 728
    .end local v0    # "l":Landroid/util/LocalLog;
    :cond_4
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 729
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mRetryManager={"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/RetryManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 708
    return-void
.end method

.method public declared-synchronized getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    .prologue
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionGeneration()I
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 1

    .prologue
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDelayForNextApn(Z)J
    .locals 2
    .param p1, "failFastEnabled"    # Z

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isFastRetryReason()Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RetryManager;->getDelayForNextApn(Z)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDependencyMet()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getInterApnDelay(Z)J
    .locals 2
    .param p1, "failFastEnabled"    # Z

    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isFastRetryReason()Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RetryManager;->getInterApnDelay(Z)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getNetworkRequests()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getNextApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getNextApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getReason()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReconnectIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReconnectAlarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    .prologue
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWaitingApns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasNoRestrictedRequests(Z)Z
    .locals 5
    .param p1, "excludeDun"    # Z

    .prologue
    .line 454
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v3

    .line 455
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    .line 456
    .local v0, "nr":Landroid/net/NetworkRequest;
    if-eqz p1, :cond_1

    .line 457
    iget-object v2, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 458
    const/4 v4, 0x2

    .line 457
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    .line 456
    if-nez v2, :cond_0

    .line 461
    :cond_1
    iget-object v2, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 462
    const/16 v4, 0xd

    .line 461
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 463
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    .end local v0    # "nr":Landroid/net/NetworkRequest;
    :cond_2
    monitor-exit v3

    .line 467
    const/4 v2, 0x1

    return v2

    .line 454
    .end local v1    # "nr$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public incAndGetConnectionGeneration()I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 264
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConcurrentVoiceAndDataAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnectable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_0

    .line 336
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 335
    goto :goto_0
.end method

.method public isConnectedOrConnecting()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_0

    .line 355
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 354
    goto :goto_0
.end method

.method public isDisconnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    .line 299
    .local v0, "currentState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v2, :cond_0

    .line 300
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v1

    .line 300
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isProvisioningApn()Z
    .locals 3

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 392
    const v2, 0x1040049

    .line 391
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "provisioningApn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 397
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markApnPermanentFailed(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->markApnPermanentFailed(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 239
    return-void
.end method

.method public declared-synchronized releaseDataConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 162
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 157
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "log"    # Landroid/util/LocalLog;

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    const-string/jumbo v0, "ApnContext.releaseNetwork can\'t find this log"

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ApnContext.releaseNetwork can\'t find this request ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    const-string/jumbo v2, ")"

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v1

    .line 426
    return-void

    .line 431
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 437
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ApnContext.releaseNetwork left with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    const-string/jumbo v2, " requests."

    .line 438
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForApnName(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setEnabled(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public requestLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v3

    .line 408
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    .line 409
    .local v0, "l":Landroid/util/LocalLog;
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 407
    .end local v0    # "l":Landroid/util/LocalLog;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 406
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "log"    # Landroid/util/LocalLog;

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ApnContext.requestNetwork has duplicate add - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 414
    return-void

    .line 419
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForApnName(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setEnabled(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resetErrorCodeRetries()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 473
    const-string/jumbo v7, "ApnContext.resetErrorCodeRetries"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 476
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 477
    const v8, 0x107004d

    .line 476
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "config":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    monitor-enter v7

    .line 479
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 481
    array-length v8, v1

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v0, v1, v6

    .line 482
    .local v0, "c":Ljava/lang/String;
    const-string/jumbo v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 483
    .local v5, "errorValue":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v9, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 484
    const/4 v2, 0x0

    .line 485
    .local v2, "count":I
    const/4 v4, 0x0

    .line 487
    .local v4, "errorCode":I
    const/4 v9, 0x0

    :try_start_1
    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 488
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 493
    if-lez v2, :cond_0

    if-lez v4, :cond_0

    .line 494
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 481
    .end local v2    # "count":I
    .end local v4    # "errorCode":I
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 489
    .restart local v2    # "count":I
    .restart local v4    # "errorCode":I
    :catch_0
    move-exception v3

    .line 490
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception parsing config_retries_per_error_code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 478
    .end local v0    # "c":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "errorCode":I
    .end local v5    # "errorValue":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 497
    .restart local v0    # "c":Ljava/lang/String;
    .restart local v5    # "errorValue":[Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception parsing config_retries_per_error_code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "c":Ljava/lang/String;
    .end local v5    # "errorValue":[Ljava/lang/String;
    :cond_2
    monitor-exit v7

    .line 472
    return-void
.end method

.method public restartOnError(I)Z
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 506
    .local v1, "retriesLeft":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    monitor-enter v4

    .line 507
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 508
    packed-switch v1, :pswitch_data_0

    .line 519
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    monitor-exit v4

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ApnContext.restartOnError("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 525
    const-string/jumbo v4, " and returned "

    .line 524
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 528
    return v0

    .line 514
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->resetErrorCodeRetries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    const/4 v0, 0x1

    .line 516
    goto :goto_0

    .line 506
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1
    .param p1, "apnSetting"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    monitor-enter p0

    .line 196
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 194
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConcurrentVoiceAndDataAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    monitor-enter p0

    .line 256
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConcurrentVoiceAndDataAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 255
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V
    .locals 1
    .param p1, "dcac"    # Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .prologue
    monitor-enter p0

    .line 150
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 145
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDependencyMet(Z)V
    .locals 1
    .param p1, "met"    # Z

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 379
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 364
    return-void
.end method

.method public setModemSuggestedDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/RetryManager;->setModemSuggestedDelay(J)V

    .line 221
    return-void
.end method

.method public declared-synchronized setReason(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 311
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 307
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReconnectIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    monitor-enter p0

    .line 178
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReconnectAlarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 177
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setState(Lcom/android/internal/telephony/DctConstants$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/internal/telephony/DctConstants$State;

    .prologue
    monitor-enter p0

    .line 276
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 271
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWaitingApns(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->setWaitingApns(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 203
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    .line 698
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mWaitingApns={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v1

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 699
    const-string/jumbo v1, "}"

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 699
    const-string/jumbo v1, " mApnSetting={"

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 700
    const-string/jumbo v1, "} mReason="

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 700
    const-string/jumbo v1, " mDataEnabled="

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 700
    const-string/jumbo v1, " mDependencyMet="

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 701
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 701
    const-string/jumbo v1, "}"

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
