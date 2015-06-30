.class public Lcom/android/internal/telephony/dataconnection/DctController;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x1

.field private static final EVENT_PHONE1_DETACH:I = 0x1

.field private static final EVENT_PHONE1_RADIO_OFF:I = 0x5

.field private static final EVENT_PHONE2_DETACH:I = 0x2

.field private static final EVENT_PHONE2_RADIO_OFF:I = 0x6

.field private static final EVENT_PHONE3_DETACH:I = 0x3

.field private static final EVENT_PHONE3_RADIO_OFF:I = 0x7

.field private static final EVENT_PHONE4_DETACH:I = 0x4

.field private static final EVENT_PHONE4_RADIO_OFF:I = 0x8

.field private static final EVENT_SET_DATA_ALLOW_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "DctController"

.field private static final PHONE_NONE:I = -0x1

.field private static sDctController:Lcom/android/internal/telephony/dataconnection/DctController;


# instance fields
.field private mActivePhone:Lcom/android/internal/telephony/Phone;

.field private mApnTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentDataPhone:I

.field private mDataStateChangedCallback:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

.field private mDataStateReceiver:Landroid/content/BroadcastReceiver;

.field private mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

.field private mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

.field private mDcSwitchStateHandler:[Landroid/os/Handler;

.field private mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

.field private mPhoneNum:I

.field private mPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private mRequestedDataPhone:I

.field private mRspHander:Landroid/os/Handler;

.field private mServicePowerOffFlag:[Z

.field private mSubController:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method private constructor <init>([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 12
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    const/4 v7, -0x1

    const/4 v11, 0x0

    .line 221
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 70
    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

    .line 71
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 81
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mApnTypes:Ljava/util/HashSet;

    .line 86
    iput v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    .line 87
    iput v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    .line 89
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DctController$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DctController$1;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHander:Landroid/os/Handler;

    .line 126
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DctController$2;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DctController$2;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataStateChangedCallback:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    .line 222
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_2

    .line 223
    :cond_0
    if-nez p1, :cond_1

    .line 224
    const-string v6, "DctController(phones): UNEXPECTED phones=null, ignore"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v6, "DctController(phones): UNEXPECTED phones.length=0, ignore"

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_2
    array-length v6, p1

    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    .line 231
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    .line 232
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 234
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v6, v6, [Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .line 235
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v6, v6, [Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    .line 236
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v6, v6, [Landroid/os/Handler;

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    .line 238
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 240
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v1, v6, :cond_4

    .line 241
    move v4, v1

    .line 242
    .local v4, "phoneId":I
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v1

    .line 243
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    new-instance v7, Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v8, v8, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DcSwitchState-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V

    aput-object v7, v6, v1

    .line 244
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->start()V

    .line 245
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    new-instance v7, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    aget-object v8, v8, v1

    invoke-direct {v7, v8, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;I)V

    aput-object v7, v6, v1

    .line 246
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    aput-object v7, v6, v1

    .line 248
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v5

    .line 251
    .local v5, "status":I
    if-nez v5, :cond_3

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DctController(phones): Connect success: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 257
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHander:Landroid/os/Handler;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v6, v7, v8, v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->registerForIdle(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 260
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    .line 261
    .local v3, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v6, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHander:Landroid/os/Handler;

    add-int/lit8 v8, v1, 0x5

    invoke-interface {v6, v7, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 254
    .end local v3    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DctController(phones): Could not connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 264
    .end local v4    # "phoneId":I
    .end local v5    # "status":I
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 267
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;

    invoke-direct {v6, p0, v11}, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Lcom/android/internal/telephony/dataconnection/DctController$1;)V

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 272
    .local v2, "intent":Landroid/content/Intent;
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/dataconnection/DctController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    return p1
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/dataconnection/DctController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DctController;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mApnTypes:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getDataConnectionFromSetting()I

    move-result v0

    return v0
.end method

.method private getDataConnectionFromSetting()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 416
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 417
    .local v1, "subId":[J
    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 418
    .local v0, "phoneId":I
    return v0
.end method

.method private getIccCardState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DCTrackerController.getInstance can\'t be called before makeDCTController()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private isValidApnType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 400
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "supl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hipri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fota"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cbs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    :cond_0
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidphoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 396
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 426
    const-string v0, "DctController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DctController] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 434
    const-string v0, "DctController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DctController] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string v0, "DctController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DctController] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 430
    const-string v0, "DctController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DctController] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void
.end method

.method public static makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 1
    .param p0, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 215
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 218
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized disableApnType(JLjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 369
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->isValidphoneId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 370
    :cond_0
    const-string v1, "disableApnType(): with PHONE_NONE or Invalid PHONE ID"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    const/4 v1, 0x3

    .line 375
    :goto_0
    monitor-exit p0

    return v1

    .line 373
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnType():type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",powerOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectSync(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 367
    .end local v0    # "phoneId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableApnType(JLjava/lang/String;)I
    .locals 9
    .param p1, "subId"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v7, -0x1

    .line 291
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v3

    .line 293
    .local v3, "phoneId":I
    if-eq v3, v7, :cond_0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->isValidphoneId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 294
    :cond_0
    const-string v5, "enableApnType(): with PHONE_NONE or Invalid PHONE ID"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :goto_0
    monitor-exit p0

    return v4

    .line 298
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableApnType():type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",powerOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    aget-boolean v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 301
    const-string v5, "default"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 302
    const/4 v2, 0x0

    .local v2, "peerphoneId":I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v2, v5, :cond_5

    .line 304
    if-ne v3, v2, :cond_3

    .line 302
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 308
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "activeApnTypes":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v5, v0

    if-eqz v5, :cond_2

    .line 310
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 311
    const-string v5, "default"

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v2

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v5, v6, :cond_4

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableApnType:Peer Phone still have non-default active APN type:activeApnTypes["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 291
    .end local v0    # "activeApnTypes":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "peerphoneId":I
    .end local v3    # "phoneId":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 310
    .restart local v0    # "activeApnTypes":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "peerphoneId":I
    .restart local v3    # "phoneId":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 323
    .end local v0    # "activeApnTypes":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "peerphoneId":I
    :cond_5
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableApnType(): CurrentDataPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", RequestedDataPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 326
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    if-ne v3, v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDeactingSync()Z

    move-result v4

    if-nez v4, :cond_6

    .line 328
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    .line 329
    const-string v4, "enableApnType(): mRequestedDataPhone equals request PHONE ID."

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 330
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v4, v4, v3

    invoke-virtual {v4, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connectSync(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 334
    :cond_6
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    if-ne v4, v7, :cond_7

    .line 335
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    .line 336
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableApnType(): current PHONE is NONE or IDLE, mCurrentDataPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 339
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v4, v4, v3

    invoke-virtual {v4, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connectSync(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 341
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableApnType(): current PHONE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is active."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 342
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    if-eq v3, v4, :cond_8

    .line 343
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 345
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v4, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    .line 347
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->cleanupAllConnection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataStateChangedCallback:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 463
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 464
    .local v1, "ar":Landroid/os/AsyncResult;
    const-string v7, "DctController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage msg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 488
    :goto_0
    return-void

    .line 468
    :pswitch_0
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 469
    .local v4, "phoneId":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v5

    .line 471
    .local v5, "prefPhoneId":I
    const-string v7, "DctController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_ALL_DATA_DISCONNECTED phoneId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v7, v7, v5

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 473
    const/4 v7, 0x2

    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 475
    .local v0, "alllowedDataDone":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 476
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 477
    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const/4 v7, 0x1

    invoke-virtual {v2, v7, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V

    goto :goto_0

    .line 481
    .end local v0    # "alllowedDataDone":Landroid/os/Message;
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v4    # "phoneId":Ljava/lang/Integer;
    .end local v5    # "prefPhoneId":I
    :pswitch_1
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 482
    .restart local v4    # "phoneId":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v6

    .line 483
    .local v6, "subId":[J
    const-string v7, "DctController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_SET_DATA_ALLOWED_DONE  phoneId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-wide v10, v6, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    aget-wide v10, v6, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v8, v13, v9, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 485
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    goto/16 :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 379
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->isValidphoneId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    :cond_0
    const-string v0, "isDataConnectivityPossible(): with PHONE_NONE or Invalid PHONE ID"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logw(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isIdleOrDeacting(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDeactingSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x1

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 454
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 455
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 457
    monitor-exit v2

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDataSubId(J)V
    .locals 9
    .param p1, "subId"    # J

    .prologue
    .line 441
    const-string v4, "DctController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataAllowed subId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v2

    .line 443
    .local v2, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v3

    .line 444
    .local v3, "prefPhoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 445
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 446
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataAllowed(ZLandroid/os/Message;)V

    .line 447
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 450
    return-void
.end method
