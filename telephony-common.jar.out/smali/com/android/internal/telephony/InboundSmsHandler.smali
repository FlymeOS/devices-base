.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$1;,
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;,
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;,
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;
    }
.end annotation


# static fields
.field private static ACTION_OPEN_SMS_APP:Ljava/lang/String; = null

.field public static final ADDRESS_COLUMN:I = 0x6

.field public static final COUNT_COLUMN:I = 0x5

.field public static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field public static final DESTINATION_PORT_COLUMN:I = 0x2

.field public static final DISPLAY_ADDRESS_COLUMN:I = 0x9

.field private static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field public static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_INJECT_SMS:I = 0x8

.field public static final EVENT_NEW_SMS:I = 0x1

.field private static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field private static final EVENT_RETURN_TO_IDLE:I = 0x4

.field public static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field private static final EVENT_UPDATE_PHONE_OBJECT:I = 0x7

.field public static final ID_COLUMN:I = 0x7

.field public static final MESSAGE_BODY_COLUMN:I = 0x8

.field private static final NOTIFICATION_ID_NEW_MESSAGE:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "InboundSmsHandler"

.field public static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field public static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field public static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=? AND deleted=0"

.field public static final SEQUENCE_COLUMN:I = 0x1

.field private static final VDBG:Z = false

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field protected static final sRawUri:Landroid/net/Uri;

.field protected static final sRawUriPermanentDelete:Landroid/net/Uri;


# instance fields
.field private final DELETE_PERMANENTLY:I

.field private final MARK_DELETED:I

.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

.field protected final mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field private final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSmsReceiveDisabled:Z

.field private final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field private final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$IdleState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 1
    .param p1, "target"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/InboundSmsHandler;I)Z
    .locals 1
    .param p1, "callbackResult"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isSkipNotifyFlagSet(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 1
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;
    .param p3, "deleteType"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/InboundSmsHandler;[[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 0
    .param p1, "receiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleInjectSms(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleNewSms(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-array v0, v3, [Ljava/lang/String;

    .line 112
    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v2

    .line 111
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 116
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 117
    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v2

    .line 118
    const-string/jumbo v1, "sequence"

    aput-object v1, v0, v3

    .line 119
    const-string/jumbo v1, "destination_port"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 120
    const-string/jumbo v1, "display_originating_addr"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 116
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/InboundSmsHandler$1;-><init>()V

    .line 124
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 180
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 182
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw/permanentDelete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 181
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    .line 227
    const-string/jumbo v0, "com.android.internal.telephony.OPEN_DEFAULT_SMS_APP"

    .line 226
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    .line 106
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 237
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 197
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$StartupState;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 200
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$IdleState;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 203
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 206
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 222
    iput v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->DELETE_PERMANENTLY:I

    .line 224
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->MARK_DELETED:I

    .line 239
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 240
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 241
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 242
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 243
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 244
    new-instance v2, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v2, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 246
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 247
    const v4, 0x1120061

    .line 246
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 248
    .local v1, "smsCapable":Z
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 249
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    .line 248
    invoke-virtual {v2, v4, v1}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 251
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 252
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, v3, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 253
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 254
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    .line 255
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getIDeviceIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 257
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    .line 258
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 259
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 260
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 261
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 263
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    .line 264
    const-string/jumbo v2, "created InboundSmsHandler"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 236
    return-void

    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    move v2, v3

    .line 248
    goto :goto_0
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .locals 14
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "deDup"    # Z

    .prologue
    .line 1249
    if-eqz p2, :cond_0

    .line 1251
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->duplicateExists(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_1

    .line 1252
    const/4 v10, 0x5

    return v10

    .line 1254
    :catch_0
    move-exception v3

    .line 1255
    .local v3, "e":Landroid/database/SQLException;
    const-string/jumbo v10, "Can\'t access SMS database"

    invoke-virtual {p0, v10, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1256
    const/4 v10, 0x2

    return v10

    .line 1259
    .end local v3    # "e":Landroid/database/SQLException;
    :cond_0
    const-string/jumbo v10, "Skipped message de-duping logic"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->logd(Ljava/lang/String;)V

    .line 1262
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1263
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1264
    .local v6, "refNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1265
    .local v1, "count":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 1268
    .local v7, "values":Landroid/content/ContentValues;
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v11, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 1269
    .local v5, "newUri":Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "URI of new row -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1272
    :try_start_1
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 1273
    .local v8, "rowId":J
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 1275
    const-string/jumbo v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {p1, v10, v11}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1281
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 1278
    :cond_2
    const/4 v10, 0x3

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v2, v10

    const/4 v10, 0x1

    aput-object v6, v2, v10

    const/4 v10, 0x2

    aput-object v1, v2, v10

    .line 1279
    .local v2, "deleteWhereArgs":[Ljava/lang/String;
    const-string/jumbo v10, "address=? AND reference_number=? AND count=? AND deleted=0"

    invoke-virtual {p1, v10, v2}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1282
    .end local v2    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v8    # "rowId":J
    :catch_1
    move-exception v4

    .line 1283
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "error parsing URI for new row: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1284
    const/4 v10, 0x2

    return v10
.end method

.method private static buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 5
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v2, 0x0

    .line 1610
    array-length v3, p0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1612
    aget-object v2, p0, v2

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1615
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1616
    .local v0, "body":Ljava/lang/StringBuilder;
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 1618
    .local v1, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1620
    .end local v1    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static cancelNewMessageNotification(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 937
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 938
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v1, "InboundSmsHandler"

    .line 939
    const/4 v2, 0x1

    .line 938
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 935
    return-void
.end method

.method private deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;
    .param p3, "deleteType"    # I

    .prologue
    .line 1097
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    .line 1098
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1099
    .local v0, "rows":I
    if-nez v0, :cond_1

    .line 1100
    const-string/jumbo v2, "No rows were deleted from raw table!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1096
    :goto_1
    return-void

    .line 1097
    .end local v0    # "rows":I
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1102
    .restart local v0    # "rows":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " rows from raw table."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 4
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v3, 0x2

    .line 581
    if-nez p1, :cond_0

    .line 582
    const-string/jumbo v2, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 583
    return v3

    .line 586
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    if-eqz v2, :cond_1

    .line 588
    const-string/jumbo v2, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 590
    const/4 v2, 0x1

    return v2

    .line 594
    :cond_1
    const/4 v1, 0x0

    .line 596
    .local v1, "onlyCore":Z
    :try_start_0
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 600
    .end local v1    # "onlyCore":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 602
    const-string/jumbo v2, "Received a short message in encrypted state. Rejecting."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 603
    return v3

    .line 606
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2

    return v2

    .line 598
    .restart local v1    # "onlyCore":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v3, 0x0

    .line 1138
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1139
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1140
    const-string/jumbo v0, "format"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    .line 1143
    const-string/jumbo v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v7

    .line 1148
    .local v7, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_1

    .line 1150
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Delivering SMS to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1152
    const-string/jumbo v2, " "

    .line 1151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1152
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1158
    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v8

    .line 1160
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 1162
    const-string/jumbo v0, "uri"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 1173
    .local v4, "options":Landroid/os/Bundle;
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    .line 1174
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/16 v3, 0x10

    move-object v0, p0

    move-object v5, p4

    .line 1173
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1137
    return-void

    .line 1154
    .end local v4    # "options":Landroid/os/Bundle;
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 1166
    .end local v7    # "componentName":Landroid/content/ComponentName;
    :cond_2
    const-string/jumbo v0, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sms://localhost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1168
    .restart local v8    # "uri":Landroid/net/Uri;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1169
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 3
    .param p1, "receiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .prologue
    .line 1503
    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-get0(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-get1(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1504
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 1501
    return-void
.end method

.method private duplicateExists(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 19
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1184
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 1186
    .local v8, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 1187
    .local v16, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 1189
    .local v9, "count":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v18

    .line 1190
    .local v18, "sequence":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 1191
    .local v17, "seqNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 1192
    .local v11, "date":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageBody()Ljava/lang/String;

    move-result-object v12

    .line 1194
    .local v12, "messageBody":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1195
    const-string/jumbo v5, "address=? AND reference_number=? AND count=? AND sequence=? AND date=? AND message_body=?"

    .line 1205
    .local v5, "where":Ljava/lang/String;
    :goto_0
    const/4 v10, 0x0

    .line 1208
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 1209
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v16, v6, v7

    const/4 v7, 0x2

    aput-object v9, v6, v7

    const/4 v7, 0x3

    aput-object v17, v6, v7

    const/4 v7, 0x4

    aput-object v11, v6, v7

    const/4 v7, 0x5

    aput-object v12, v6, v7

    .line 1210
    const/4 v7, 0x0

    .line 1208
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1213
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1215
    const-string/jumbo v3, " seqNumber="

    .line 1214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1215
    const-string/jumbo v3, " count="

    .line 1214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1220
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1221
    .local v14, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v15

    .line 1222
    .local v15, "pdu":[B
    invoke-static {v14}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 1223
    .local v13, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v2

    invoke-static {v13, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Warning: dup message segment PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v15

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1225
    const-string/jumbo v3, " is different from existing PDU of length "

    .line 1224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1225
    array-length v3, v13

    .line 1224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    :cond_0
    const/4 v2, 0x1

    .line 1230
    if-eqz v10, :cond_1

    .line 1231
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1227
    :cond_1
    return v2

    .line 1201
    .end local v5    # "where":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "oldPdu":[B
    .end local v14    # "oldPduString":Ljava/lang/String;
    .end local v15    # "pdu":[B
    :cond_2
    const-string/jumbo v5, "address=? AND reference_number=? AND count=? AND sequence=? AND ((date=? AND message_body=?) OR deleted=0)"

    .restart local v5    # "where":Ljava/lang/String;
    goto/16 :goto_0

    .line 1230
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-eqz v10, :cond_4

    .line 1231
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1235
    :cond_4
    const/4 v2, 0x0

    return v2

    .line 1229
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 1230
    if-eqz v10, :cond_5

    .line 1231
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1229
    :cond_5
    throw v2
.end method

.method private filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z
    .locals 10
    .param p1, "pdus"    # [[B
    .param p2, "destPort"    # I
    .param p3, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p4, "resultReceiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .param p5, "userUnlocked"    # Z

    .prologue
    .line 962
    const/4 v7, 0x0

    .line 963
    .local v7, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    .line 964
    .local v6, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v6, :cond_0

    .line 966
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 967
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v6, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v7

    .line 972
    .end local v7    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 973
    const-string/jumbo v1, "Found carrier package."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 974
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    .line 975
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    .line 974
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    .line 976
    .local v0, "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v8, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    invoke-direct {v8, p0, v0, p5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;Z)V

    .line 978
    .local v8, "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    .line 979
    const/4 v1, 0x1

    return v1

    .line 969
    .end local v0    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v8    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    .restart local v7    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v1, "UiccCard not initialized."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 985
    .end local v7    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v9

    .line 987
    .local v9, "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 988
    const-string/jumbo v1, "Found system package."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 989
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    .line 990
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    .line 989
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    .line 991
    .restart local v0    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v8, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    invoke-direct {v8, p0, v0, p5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;Z)V

    .line 993
    .restart local v8    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    .line 994
    const/4 v1, 0x1

    return v1

    .line 996
    .end local v0    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v8    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to find carrier package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 997
    const-string/jumbo v2, ", nor systemPackages: "

    .line 996
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    .line 1000
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 999
    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->filter(Landroid/content/Context;[[BLjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1001
    const-string/jumbo v1, "Visual voicemail SMS dropped"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1002
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    .line 1003
    const/4 v1, 0x1

    return v1

    .line 1006
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1010
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1012
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1013
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v0, "android.permission.CARRIER_FILTER_SMS"

    .line 1015
    .local v0, "carrierFilterSmsPerm":Ljava/lang/String;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1016
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_1

    .line 1017
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can\'t get service information from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    :cond_1
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1021
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 1023
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSystemAppForIntent: added package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1027
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method private handleInjectSms(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 550
    const/4 v3, 0x0

    .line 552
    .local v3, "receivedIntent":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Landroid/app/PendingIntent;

    move-object v3, v0

    .line 553
    .local v3, "receivedIntent":Landroid/app/PendingIntent;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .local v5, "sms":Landroid/telephony/SmsMessage;
    if-nez v5, :cond_1

    .line 555
    const/4 v4, 0x2

    .line 564
    .end local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    .local v4, "result":I
    :goto_0
    if-eqz v3, :cond_0

    .line 566
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 548
    :cond_0
    :goto_1
    return-void

    .line 557
    .end local v4    # "result":I
    .restart local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .restart local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_1
    :try_start_2
    iget-object v6, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .restart local v4    # "result":I
    goto :goto_0

    .line 559
    .end local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .end local v4    # "result":I
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v2

    .line 560
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Exception dispatching message"

    invoke-virtual {p0, v6, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 561
    const/4 v4, 0x2

    .restart local v4    # "result":I
    goto :goto_0

    .line 567
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method private handleNewSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 522
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception processing incoming SMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 524
    return-void

    .line 529
    :cond_0
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 530
    .local v3, "sms":Landroid/telephony/SmsMessage;
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 538
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    .local v2, "result":I
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 539
    if-ne v2, v1, :cond_2

    .line 540
    .local v1, "handled":Z
    :goto_1
    invoke-direct {p0, v1, v2, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 521
    .end local v1    # "handled":Z
    :cond_1
    return-void

    .line 531
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 532
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "Exception dispatching message"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 533
    const/4 v2, 0x2

    .restart local v2    # "result":I
    goto :goto_0

    .line 539
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 9
    .param p1, "target"    # Landroid/content/ComponentName;

    .prologue
    const/4 v8, 0x0

    .line 1109
    if-eqz p1, :cond_0

    .line 1110
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1111
    .local v4, "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "sms-app"

    .line 1117
    .local v5, "reason":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1118
    const/4 v7, 0x0

    .line 1117
    invoke-interface {v6, v4, v7, v5}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v2

    .line 1119
    .local v2, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 1120
    .local v0, "bopts":Landroid/app/BroadcastOptions;
    invoke-virtual {v0, v2, v3}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 1121
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 1113
    .end local v0    # "bopts":Landroid/app/BroadcastOptions;
    .end local v2    # "duration":J
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "reason":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1114
    .restart local v4    # "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "sms-broadcast"

    .restart local v5    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 1122
    :catch_0
    move-exception v1

    .line 1125
    .local v1, "e":Landroid/os/RemoteException;
    return-object v8
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    .prologue
    .line 1293
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1294
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSkipNotifyFlagSet(I)Z
    .locals 2
    .param p1, "callbackResult"    # I

    .prologue
    const/4 v0, 0x0

    .line 1511
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 651
    if-nez p1, :cond_0

    .line 653
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 655
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 657
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 650
    return-void
.end method

.method private static parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v3, 0x0

    .line 1585
    aget-object v0, p0, v3

    .line 1586
    .local v0, "sms":Landroid/telephony/SmsMessage;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1587
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "address"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const-string/jumbo v4, "body"

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string/jumbo v4, "date_sent"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1590
    const-string/jumbo v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1591
    const-string/jumbo v4, "protocol"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1592
    const-string/jumbo v4, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1593
    const-string/jumbo v4, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1594
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v1

    .line 1595
    .local v1, "subject":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1596
    const-string/jumbo v4, "subject"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    :cond_0
    const-string/jumbo v4, "reply_path_present"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1599
    const-string/jumbo v3, "service_center"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    return-object v2
.end method

.method private processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 29
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 742
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v21

    .line 744
    .local v21, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v9

    .line 745
    .local v9, "destPort":I
    const/4 v14, 0x0

    .line 747
    .local v14, "block":Z
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_2

    .line 749
    const/4 v2, 0x1

    new-array v8, v2, [[B

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v8, v3

    .line 750
    .local v8, "pdus":[[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDisplayAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    .line 821
    .end local v14    # "block":Z
    :cond_0
    :goto_0
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    .line 822
    .local v25, "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 823
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMessagePart: returning false due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 824
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "pduList.size() == 0"

    .line 823
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 825
    const/4 v2, 0x0

    return v2

    .line 753
    .end local v8    # "pdus":[[B
    .end local v25    # "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v14    # "block":Z
    :cond_2
    const/16 v16, 0x0

    .line 756
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 757
    .local v13, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 758
    .local v27, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 761
    .local v15, "count":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v13, v6, v2

    const/4 v2, 0x1

    aput-object v27, v6, v2

    const/4 v2, 0x2

    aput-object v15, v6, v2

    .line 762
    .local v6, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 763
    const-string/jumbo v5, "address=? AND reference_number=? AND count=? AND deleted=0"

    const/4 v7, 0x0

    .line 762
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 765
    .local v16, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    .line 766
    .local v17, "cursorCount":I
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 772
    const/4 v2, 0x0

    .line 814
    if-eqz v16, :cond_3

    .line 815
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 772
    :cond_3
    return v2

    .line 776
    :cond_4
    :try_start_1
    move/from16 v0, v21

    new-array v8, v0, [[B

    .line 777
    .end local v14    # "block":Z
    .restart local v8    # "pdus":[[B
    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 779
    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 780
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 779
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 780
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v3

    .line 779
    sub-int v20, v2, v3

    .line 783
    .local v20, "index":I
    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 782
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v8, v20

    .line 787
    if-nez v20, :cond_6

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 788
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 787
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 798
    :cond_6
    :goto_3
    if-nez v14, :cond_5

    .line 805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 806
    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 807
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 806
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 805
    invoke-static {v3, v2}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    .local v14, "block":Z
    goto :goto_2

    .line 789
    .end local v14    # "block":Z
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 790
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 789
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 792
    .local v26, "port":I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v26

    .line 793
    const/4 v2, -0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_6

    .line 794
    move/from16 v9, v26

    goto :goto_3

    .line 814
    .end local v20    # "index":I
    .end local v26    # "port":I
    :cond_8
    if-eqz v16, :cond_0

    .line 815
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 810
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v8    # "pdus":[[B
    .end local v13    # "address":Ljava/lang/String;
    .end local v15    # "count":Ljava/lang/String;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v17    # "cursorCount":I
    .end local v27    # "refNumber":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 811
    .local v18, "e":Landroid/database/SQLException;
    :try_start_2
    const-string/jumbo v2, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 812
    const/4 v2, 0x0

    .line 814
    if-eqz v16, :cond_9

    .line 815
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 812
    :cond_9
    return v2

    .line 813
    .end local v18    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 814
    if-eqz v16, :cond_a

    .line 815
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 813
    :cond_a
    throw v2

    .line 824
    .restart local v8    # "pdus":[[B
    .restart local v25    # "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_b
    const-string/jumbo v2, "pduList.contains(null)"

    goto/16 :goto_1

    .line 828
    :cond_c
    new-instance v11, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 830
    .local v11, "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_d

    .line 831
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Z

    move-result v2

    return v2

    .line 834
    :cond_d
    const/16 v2, 0xb84

    if-ne v9, v2, :cond_12

    .line 836
    new-instance v23, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 837
    .local v23, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    array-length v3, v8

    :goto_4
    if-ge v2, v3, :cond_10

    aget-object v24, v8, v2

    .line 839
    .local v24, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v4

    if-nez v4, :cond_e

    .line 840
    const-string/jumbo v4, "3gpp"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v22

    .line 841
    .local v22, "msg":Landroid/telephony/SmsMessage;
    if-eqz v22, :cond_f

    .line 842
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v24

    .line 848
    .end local v22    # "msg":Landroid/telephony/SmsMessage;
    :cond_e
    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 837
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 844
    .restart local v22    # "msg":Landroid/telephony/SmsMessage;
    :cond_f
    const-string/jumbo v2, "processMessagePart: SmsMessage.createFromPdu returned null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 845
    const/4 v2, 0x0

    return v2

    .line 850
    .end local v22    # "msg":Landroid/telephony/SmsMessage;
    .end local v24    # "pdu":[B
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v11, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v28

    .line 851
    .local v28, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchWapPdu() returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 853
    const/4 v2, -0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_11

    .line 854
    const/4 v2, 0x1

    return v2

    .line 856
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v3

    .line 857
    const/4 v4, 0x2

    .line 856
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 858
    const/4 v2, 0x0

    return v2

    .line 862
    .end local v23    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v28    # "result":I
    :cond_12
    if-eqz v14, :cond_13

    .line 863
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v3

    .line 864
    const/4 v4, 0x1

    .line 863
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 865
    const/4 v2, 0x0

    return v2

    .line 869
    :cond_13
    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v10, p1

    .line 868
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z

    move-result v19

    .line 871
    .local v19, "filterInvoked":Z
    if-nez v19, :cond_14

    .line 872
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2, v9, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 875
    :cond_14
    const/4 v2, 0x1

    return v2
.end method

.method private processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Z
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "destPort"    # I
    .param p4, "resultReceiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .prologue
    const/4 v5, 0x0

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Credential-encrypted storage not available. Port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 890
    const/16 v0, 0xb84

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    aget-object v1, p2, v5

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/WapPushOverSms;->isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    .line 892
    return v5

    .line 894
    :cond_0
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p1

    move-object v4, p4

    .line 896
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z

    move-result v6

    .line 898
    .local v6, "filterInvoked":Z
    if-eqz v6, :cond_1

    .line 900
    const/4 v0, 0x1

    return v0

    .line 903
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    .line 904
    return v5

    .line 907
    .end local v6    # "filterInvoked":Z
    :cond_2
    return v5
.end method

.method static registerNewMessageNotificationActionHandler(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1658
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1659
    .local v0, "userFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1660
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1657
    return-void
.end method

.method private static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1626
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showNewMessageNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 912
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 913
    return-void

    .line 915
    :cond_0
    const-string/jumbo v3, "Show new message notification."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 917
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 919
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 918
    const/4 v5, 0x0

    .line 920
    const/high16 v6, 0x40000000    # 2.0f

    .line 916
    invoke-static {v3, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 921
    .local v0, "intent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 922
    const v4, 0x108008e

    .line 921
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 925
    const/4 v4, -0x1

    .line 921
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 926
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const v5, 0x10405fa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 921
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 927
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const v5, 0x10405fb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 921
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 930
    .local v1, "mBuilder":Landroid/app/Notification$Builder;
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 932
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v3, "InboundSmsHandler"

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 931
    invoke-virtual {v2, v3, v7, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 910
    return-void
.end method

.method private writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 1550
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1551
    .local v4, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    array-length v7, v4

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 1552
    :cond_0
    const-string/jumbo v7, "Failed to parse SMS pdu"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1553
    return-object v9

    .line 1558
    :cond_1
    const/4 v7, 0x0

    array-length v8, v4

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v5, v4, v7

    .line 1560
    .local v5, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1561
    :catch_0
    move-exception v1

    .line 1562
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "NPE inside SmsMessage"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1563
    return-object v9

    .line 1566
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_2
    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsHandler;->parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v6

    .line 1567
    .local v6, "values":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1569
    .local v2, "identity":J
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 1573
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1569
    return-object v7

    .line 1570
    :catch_1
    move-exception v0

    .line 1571
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v7, "Failed to persist inbox message"

    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1573
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1575
    return-object v9

    .line 1572
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1573
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1572
    throw v7
.end method


# virtual methods
.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "deDup"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 720
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 730
    return v2

    .line 722
    :sswitch_0
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 723
    return v1

    .line 726
    :sswitch_1
    return v1

    .line 720
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1041
    const/high16 v1, 0x8000000

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1042
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 1043
    .local v15, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1044
    const-string/jumbo v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1043
    if-nez v1, :cond_0

    .line 1045
    const-string/jumbo v1, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1043
    if-nez v1, :cond_0

    .line 1046
    const-string/jumbo v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1043
    if-eqz v1, :cond_1

    .line 1053
    :cond_0
    const/high16 v1, 0x10000000

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1055
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1056
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1058
    const/16 v19, 0x0

    .line 1060
    .local v19, "users":[I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 1063
    .end local v19    # "users":[I
    :goto_0
    if-nez v19, :cond_2

    .line 1064
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v19, v0

    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v19, v2

    .line 1068
    :cond_2
    move-object/from16 v0, v19

    array-length v1, v0

    add-int/lit8 v16, v1, -0x1

    .local v16, "i":I
    :goto_1
    if-ltz v16, :cond_8

    .line 1069
    new-instance v3, Landroid/os/UserHandle;

    aget v1, v19, v16

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1070
    .local v3, "targetUser":Landroid/os/UserHandle;
    aget v1, v19, v16

    if-eqz v1, :cond_5

    .line 1072
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_sms"

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1068
    :cond_3
    :goto_2
    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    .line 1076
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    aget v2, v19, v16

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v17

    .line 1077
    .local v17, "info":Landroid/content/pm/UserInfo;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1082
    .end local v17    # "info":Landroid/content/pm/UserInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 1083
    aget v2, v19, v16

    if-nez v2, :cond_6

    move-object/from16 v7, p5

    .line 1084
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 1082
    invoke-virtual/range {v1 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 1083
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 1087
    .end local v3    # "targetUser":Landroid/os/UserHandle;
    .end local v16    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 1088
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 1087
    invoke-virtual/range {v4 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1040
    :cond_8
    return-void

    .line 1061
    .restart local v19    # "users":[I
    :catch_0
    move-exception v18

    .local v18, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 19
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 676
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v17

    .line 679
    .local v17, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v2, :cond_2

    .line 681
    :cond_0
    const/4 v6, -0x1

    .line 682
    .local v6, "destPort":I
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v2, :cond_1

    .line 684
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "destination port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 688
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    .line 689
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    .line 690
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    .line 691
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v11

    .line 689
    const/4 v8, 0x0

    .line 688
    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v18

    .line 709
    .local v18, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    .line 708
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v2

    return v2

    .line 694
    .end local v6    # "destPort":I
    .end local v18    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_2
    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 695
    .local v15, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v16, v0

    .line 696
    .local v16, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 698
    .restart local v6    # "destPort":I
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    .line 699
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    .line 700
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    iget v10, v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v11, v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 701
    iget v12, v15, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x0

    .line 698
    invoke-virtual/range {v2 .. v14}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v18

    .restart local v18    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto :goto_0

    .line 696
    .end local v6    # "destPort":I
    .end local v18    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_3
    const/4 v6, -0x1

    .restart local v6    # "destPort":I
    goto :goto_2

    .line 709
    .end local v15    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v16    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .restart local v18    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    .line 270
    return-void
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public getWakeLockTimeout()I
    .locals 1

    .prologue
    .line 1636
    const/16 v0, 0xbb8

    return v0
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1530
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1540
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1539
    return-void
.end method

.method protected onQuitting()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 285
    :cond_0
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpdatePhoneObject: phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 278
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 277
    return-void
.end method
