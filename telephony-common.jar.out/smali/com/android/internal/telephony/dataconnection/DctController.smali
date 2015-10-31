.class public Lcom/android/internal/telephony/dataconnection/DctController;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DATA_ATTACHED:I = 0x1f4

.field private static final EVENT_DATA_DETACHED:I = 0x258

.field private static final EVENT_EXECUTE_ALL_REQUESTS:I = 0x66

.field private static final EVENT_EXECUTE_REQUEST:I = 0x65

.field private static final EVENT_PROCESS_REQUESTS:I = 0x64

.field private static final EVENT_RELEASE_ALL_REQUESTS:I = 0x68

.field private static final EVENT_RELEASE_REQUEST:I = 0x67

.field private static final LOG_TAG:Ljava/lang/String; = "DctController"

.field private static sDctController:Lcom/android/internal/telephony/dataconnection/DctController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

.field private mDcSwitchStateHandler:[Landroid/os/Handler;

.field private mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

.field private mNetworkFactory:[Landroid/net/NetworkFactory;

.field private mNetworkFactoryMessenger:[Landroid/os/Messenger;

.field private mNetworkFilter:[Landroid/net/NetworkCapabilities;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneNum:I

.field private mPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private mRequestInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRspHandler:Landroid/os/Handler;

.field private mSubController:Lcom/android/internal/telephony/SubscriptionController;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;


# direct methods
.method private constructor <init>([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 10
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    const/4 v9, 0x0

    .line 193
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 69
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    .line 78
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 82
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/dataconnection/DctController$1;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 90
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/dataconnection/DctController$2;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    .line 160
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/dataconnection/DctController$3;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DctController(): phones.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 195
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    .line 196
    :cond_0
    if-nez p1, :cond_1

    .line 197
    const-string v4, "DctController(phones): UNEXPECTED phones=null, ignore"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 199
    :cond_1
    const-string v4, "DctController(phones): UNEXPECTED phones.length=0, ignore"

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_2
    array-length v4, p1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    .line 204
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 206
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .line 207
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    .line 208
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Landroid/os/Handler;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    .line 209
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Landroid/os/Messenger;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    .line 210
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Landroid/net/NetworkFactory;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    .line 211
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v4, v4, [Landroid/net/NetworkCapabilities;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v4, :cond_4

    .line 214
    move v2, v0

    .line 215
    .local v2, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v5, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v6, v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DcSwitchStateMachine-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V

    aput-object v5, v4, v0

    .line 217
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->start()V

    .line 218
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    new-instance v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    aget-object v6, v6, v0

    invoke-direct {v5, v6, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)V

    aput-object v5, v4, v0

    .line 219
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    aput-object v5, v4, v0

    .line 221
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v3

    .line 224
    .local v3, "status":I
    if-nez v3, :cond_3

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DctController(phones): Connect success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 231
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 232
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 227
    .end local v1    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DctController(phones): Could not connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 235
    .end local v2    # "phoneId":I
    .end local v3    # "status":I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    .line 236
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 237
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 240
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_sim_data_call"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSubInfoReady()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSettingsChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->requestNetwork(Landroid/net/NetworkRequest;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseNetwork(Landroid/net/NetworkRequest;)I

    move-result v0

    return v0
.end method

.method private apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;
    .locals 7
    .param p1, "nr"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 500
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 502
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1

    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v1, v4

    .line 575
    :cond_0
    :goto_0
    return-object v1

    .line 509
    :cond_1
    const/4 v3, -0x1

    .line 510
    .local v3, "type":I
    const/4 v1, 0x0

    .line 512
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 513
    .local v0, "error":Z
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 514
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 515
    :cond_2
    const-string v1, "default"

    .line 516
    const/4 v3, 0x0

    .line 518
    :cond_3
    invoke-virtual {v2, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 519
    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 520
    :cond_4
    const-string v1, "mms"

    .line 521
    const/4 v3, 0x2

    .line 523
    :cond_5
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 524
    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .line 525
    :cond_6
    const-string v1, "supl"

    .line 526
    const/4 v3, 0x3

    .line 528
    :cond_7
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 529
    if-eqz v1, :cond_8

    const/4 v0, 0x1

    .line 530
    :cond_8
    const-string v1, "dun"

    .line 531
    const/4 v3, 0x4

    .line 533
    :cond_9
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 534
    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 535
    :cond_a
    const-string v1, "fota"

    .line 536
    const/16 v3, 0xa

    .line 538
    :cond_b
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 539
    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .line 540
    :cond_c
    const-string v1, "ims"

    .line 541
    const/16 v3, 0xb

    .line 543
    :cond_d
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 544
    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 545
    :cond_e
    const-string v1, "cbs"

    .line 546
    const/16 v3, 0xc

    .line 548
    :cond_f
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 549
    if-eqz v1, :cond_10

    const/4 v0, 0x1

    .line 550
    :cond_10
    const-string v1, "ia"

    .line 551
    const/16 v3, 0xe

    .line 553
    :cond_11
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 554
    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 555
    :cond_12
    const/4 v1, 0x0

    .line 556
    const-string v5, "RCS APN type not yet supported"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 558
    :cond_13
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 559
    if-eqz v1, :cond_14

    const/4 v0, 0x1

    .line 560
    :cond_14
    const/4 v1, 0x0

    .line 561
    const-string v5, "XCAP APN type not yet supported"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 563
    :cond_15
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 564
    if-eqz v1, :cond_16

    const/4 v0, 0x1

    .line 565
    :cond_16
    const/4 v1, 0x0

    .line 566
    const-string v5, "EIMS APN type not yet supported"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 568
    :cond_17
    if-eqz v0, :cond_18

    .line 569
    const-string v5, "Multiple apn types specified in request - result is unspecified!"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 571
    :cond_18
    const/4 v5, -0x1

    if-eq v3, v5, :cond_19

    if-nez v1, :cond_0

    .line 572
    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported NetworkRequest in Telephony: nr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    move-object v1, v4

    .line 573
    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DctController.getInstance can\'t be called before makeDCTController()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private getRequestPhoneId(Landroid/net/NetworkRequest;)I
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 579
    iget-object v3, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "specifier":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 586
    .local v2, "subId":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 587
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 588
    const/4 v0, 0x0

    .line 589
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 590
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Should not happen, no valid phoneId"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 584
    .end local v0    # "phoneId":I
    .end local v2    # "subId":I
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "subId":I
    goto :goto_0

    .line 593
    .restart local v0    # "phoneId":I
    :cond_2
    return v0
.end method

.method private getTopPriorityRequestPhoneId()I
    .locals 8

    .prologue
    .line 460
    const/4 v5, 0x0

    .line 461
    .local v5, "retRequestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const/4 v2, 0x0

    .line 462
    .local v2, "phoneId":I
    const/4 v3, -0x1

    .line 465
    .local v3, "priority":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v6, :cond_2

    .line 466
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 467
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 468
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 469
    .local v4, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectExecPhone requestInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 470
    iget-object v6, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v6

    if-ne v6, v0, :cond_0

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    if-ge v3, v6, :cond_0

    .line 472
    iget v3, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    .line 473
    move-object v5, v4

    goto :goto_1

    .line 465
    .end local v4    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    if-eqz v5, :cond_3

    .line 479
    iget-object v6, v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    .line 482
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTopPriorityRequestPhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", priority = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 485
    return v2
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 597
    const-string v0, "DctController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 601
    const-string v0, "DctController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method public static makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2
    .param p0, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 185
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: new DctController phones.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDctController: X sDctController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private onExecuteAllRequests(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExecuteAllRequests phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 380
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 382
    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 383
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    .line 386
    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    return-void
.end method

.method private onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 6
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onExecuteRequest request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 367
    iget-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-nez v4, :cond_0

    .line 368
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    .line 369
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "apn":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v3

    .line 371
    .local v3, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 372
    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 373
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->incApnRefCount(Ljava/lang/String;)V

    .line 375
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "phoneId":I
    :cond_0
    return-void
.end method

.method private onProcessRequest()V
    .locals 7

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getTopPriorityRequestPhoneId()I

    move-result v3

    .line 340
    .local v3, "phoneId":I
    const/4 v0, -0x1

    .line 342
    .local v0, "activePhoneId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 343
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v5

    if-nez v5, :cond_3

    .line 344
    move v0, v1

    .line 349
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProcessRequest phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", activePhoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 352
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    if-ne v0, v3, :cond_4

    .line 353
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 354
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 355
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 356
    .local v4, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v5

    if-ne v5, v3, :cond_2

    iget-boolean v5, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-nez v5, :cond_2

    .line 357
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connectSync(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)I

    goto :goto_1

    .line 342
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectAllSync()I

    .line 363
    :cond_5
    return-void
.end method

.method private onReleaseAllRequests(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReleaseAllRequests phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 403
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 405
    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 406
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    .line 409
    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    return-void
.end method

.method private onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 6
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReleaseRequest request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 390
    if-eqz p1, :cond_0

    iget-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-eqz v4, :cond_0

    .line 391
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "apn":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v3

    .line 393
    .local v3, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 394
    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 395
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->decApnRefCount(Ljava/lang/String;)V

    .line 396
    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    .line 398
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "phoneId":I
    :cond_0
    return-void
.end method

.method private onSettingsChange()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 413
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v11

    int-to-long v2, v11

    .line 415
    .local v2, "dataSubId":J
    const/4 v0, -0x1

    .line 416
    .local v0, "activePhoneId":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    array-length v11, v11

    if-ge v5, v11, :cond_0

    .line 417
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v11

    if-nez v11, :cond_2

    .line 418
    move v0, v5

    .line 423
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    .line 424
    .local v10, "subIds":[I
    if-eqz v10, :cond_1

    array-length v11, v10

    if-nez v11, :cond_3

    .line 425
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSettingsChange, subIds null or length 0 for activePhoneId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 457
    :goto_1
    return-void

    .line 416
    .end local v10    # "subIds":[I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 428
    .restart local v10    # "subIds":[I
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSettingsChange, data sub: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", active data sub: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v10, v14

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 430
    aget v11, v10, v14

    int-to-long v12, v11

    cmp-long v11, v12, v2

    if-eqz v11, :cond_6

    .line 431
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 432
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 433
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 434
    .local v8, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v11, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v11, v11, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v11}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v9

    .line 435
    .local v9, "specifier":Ljava/lang/String;
    if-eqz v9, :cond_5

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 436
    :cond_5
    iget-boolean v11, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    if-eqz v11, :cond_4

    .line 437
    iget-object v11, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "apn":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[setDataSubId] activePhoneId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", subId ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 440
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    .line 442
    .local v7, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v4, v7, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 443
    .local v4, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->decApnRefCount(Ljava/lang/String;)V

    .line 444
    iput-boolean v14, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    goto :goto_2

    .line 452
    .end local v1    # "apn":Ljava/lang/String;
    .end local v4    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v8    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v9    # "specifier":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    :goto_3
    iget v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v5, v11, :cond_7

    .line 453
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v11, v11, v5

    check-cast v11, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->evalPendingRequest()V

    .line 452
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 456
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    goto/16 :goto_1
.end method

.method private onSubInfoReady()V
    .locals 4

    .prologue
    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubInfoReady mPhoneNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getSubId()I

    move-result v1

    .line 492
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubInfoReady handle pending requests subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 493
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 494
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->evalPendingRequest()V

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    .end local v1    # "subId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    .line 497
    return-void
.end method

.method private releaseNetwork(Landroid/net/NetworkRequest;)I
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 297
    .local v0, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseNetwork request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    .line 302
    const/4 v1, 0x1

    return v1
.end method

.method private requestNetwork(Landroid/net/NetworkRequest;I)I
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "priority"    # I

    .prologue
    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetwork request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 288
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;-><init>(Landroid/net/NetworkRequest;I)V

    .line 289
    .local v0, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    .line 292
    const/4 v1, 0x1

    return v1
.end method

.method private updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneBaseForIndex for phone index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v2, p1, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    add-int/lit16 v2, p1, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 129
    .local v7, "cm":Landroid/net/ConnectivityManager;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister TelephonyNetworkFactory for phone index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v0, v0, p1

    invoke-virtual {v7, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aput-object v3, v0, p1

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aput-object v3, v0, p1

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aput-object v3, v0, p1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    aput-object v1, v0, p1

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v0, v0, p1

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 152
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "TelephonyNetworkFactory"

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v6, v1, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)V

    aput-object v0, v8, p1

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v0, v0, p1

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->setScoreFilter(I)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    aput-object v1, v0, p1

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v0, v0, p1

    const-string v1, "Telephony"

    invoke-virtual {v7, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 158
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 247
    const-string v2, "DctController.dispose"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v1, v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 251
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 252
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 257
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 684
    const-string v7, "DctController:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .local v0, "arr$":[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 687
    .local v1, "dssm":Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 689
    .end local v0    # "arr$":[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .end local v1    # "dssm":Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v2

    .line 690
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 692
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 693
    const-string v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 697
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRequestInfos["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 699
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .line 700
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 702
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 703
    const-string v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 705
    const-string v7, "TelephonyNetworkFactories:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    .local v0, "arr$":[Landroid/net/NetworkFactory;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    .line 707
    .local v6, "tnf":Landroid/net/NetworkFactory;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 709
    .end local v6    # "tnf":Landroid/net/NetworkFactory;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 710
    const-string v7, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 712
    return-void
.end method

.method executeAllRequests(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeAllRequests, phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 317
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 318
    return-void
.end method

.method executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeRequest, request= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 312
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 313
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 263
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Un-handled message ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 265
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onProcessRequest()V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteAllRequests(I)V

    goto :goto_0

    .line 274
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_0

    .line 277
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseAllRequests(I)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method processRequests()V
    .locals 1

    .prologue
    .line 306
    const-string v0, "processRequests"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 307
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 308
    return-void
.end method

.method releaseAllRequests(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAllRequests, phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 327
    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 328
    return-void
.end method

.method releaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseRequest, request= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 322
    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 323
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 99
    if-nez p1, :cond_1

    .line 100
    const-string v2, "updatePhoneObject phone = null"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 105
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-nez v1, :cond_2

    .line 106
    const-string v2, "updatePhoneObject phoneBase = null"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_3

    .line 112
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V

    goto :goto_0

    .line 110
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
