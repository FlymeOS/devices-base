.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"

# interfaces
.implements Lcom/android/server/connectivity/tethering/IControlsTethering;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherState;,
        Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;,
        Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer;

.field private static final HIPRI_TYPE:Ljava/lang/Integer;

.field private static final MOBILE_TYPE:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static final TETHER_SERVICE:Landroid/content/ComponentName;

.field private static final VDBG:Z

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUpstreamIface:Ljava/lang/String;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field private mLastNotificationId:I

.field private final mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPreferredUpstreamMobileApn:I

.field private final mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private final mTetherStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherState;",
            ">;"
        }
    .end annotation
.end field

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

.field private mUsbTetherRequested:Z

.field private mWifiTetherRequested:Z


# direct methods
.method static synthetic -get0()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/Tethering;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Tethering;IZLandroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->maybeLogMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V
    .locals 0
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "result"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/connectivity/Tethering;ZI)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "interfaceType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-array v0, v5, [Ljava/lang/Class;

    .line 104
    const-class v1, Lcom/android/server/connectivity/Tethering;

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    aput-object v1, v0, v3

    const-class v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    aput-object v1, v0, v4

    .line 103
    sput-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    .line 107
    sget-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    .line 106
    sput-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 118
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    .line 119
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    .line 120
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    .line 147
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    const v1, 0x1040036

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    .line 157
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 158
    const-string/jumbo v1, "192.168.42.2"

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.42.254"

    aput-object v1, v0, v3

    const-string/jumbo v1, "192.168.43.2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "192.168.43.254"

    aput-object v1, v0, v5

    .line 159
    const-string/jumbo v1, "192.168.44.2"

    aput-object v1, v0, v6

    const-string/jumbo v1, "192.168.44.254"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.45.2"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.45.254"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 160
    const-string/jumbo v1, "192.168.46.2"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.46.254"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.47.2"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.47.254"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 161
    const-string/jumbo v1, "192.168.48.2"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.48.254"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.2"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.254"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 157
    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 124
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 184
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 185
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 186
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 187
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 189
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 191
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    .line 194
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 195
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string/jumbo v2, "TetherMaster"

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 196
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->start()V

    .line 198
    new-instance v1, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    .line 200
    new-instance v1, Lcom/android/server/connectivity/Tethering$StateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 209
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 215
    const v2, 0x1070017

    .line 214
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v1, v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_1

    .line 217
    :cond_0
    sget-object v1, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 224
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string/jumbo v2, "8.8.8.8"

    aput-object v2, v1, v4

    .line 226
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string/jumbo v2, "8.8.4.4"

    aput-object v2, v1, v5

    .line 183
    return-void
.end method

.method private cancelTetherProvisioningRechecks(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 581
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 582
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraRemTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 584
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 586
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 579
    .end local v0    # "ident":J
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 587
    .restart local v0    # "ident":J
    .restart local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    .line 588
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    throw v3
.end method

.method private checkDunRequired()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 932
    const/4 v1, 0x2

    .line 933
    .local v1, "secureSetting":I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 934
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 935
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getTetherApnRequired()I

    move-result v1

    .line 937
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 939
    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    .line 940
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 941
    const/4 v0, 0x4

    .line 943
    .local v0, "requiredApn":I
    :goto_0
    if-ne v0, v5, :cond_5

    .line 944
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 945
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 937
    .end local v0    # "requiredApn":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 942
    :cond_1
    const/4 v0, 0x5

    .restart local v0    # "requiredApn":I
    goto :goto_0

    .line 947
    :cond_2
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 948
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 950
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 951
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 965
    .end local v0    # "requiredApn":I
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 966
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    monitor-exit v4

    .line 931
    return-void

    .line 954
    .restart local v0    # "requiredApn":I
    :cond_5
    :goto_5
    :try_start_2
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 955
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 957
    :cond_6
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 958
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 960
    :cond_7
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 961
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 968
    .end local v0    # "requiredApn":I
    :cond_8
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private clearTetheredNotification()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 765
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 766
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v1, :cond_0

    .line 767
    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 768
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 767
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 769
    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 763
    :cond_0
    return-void
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 425
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    .line 427
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 446
    const-string/jumbo v2, "Tethering"

    const-string/jumbo v3, "Invalid tether type."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 424
    :goto_1
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x0

    .local v0, "isProvisioningRequired":Z
    goto :goto_0

    .line 429
    .end local v0    # "isProvisioningRequired":Z
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering;->setWifiTethering(Z)I

    move-result v1

    .line 430
    .local v1, "result":I
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 431
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    .line 433
    :cond_1
    invoke-direct {p0, p3, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_1

    .line 436
    .end local v1    # "result":I
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v1

    .line 437
    .restart local v1    # "result":I
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 438
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    .line 440
    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_1

    .line 443
    .end local v1    # "result":I
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    goto :goto_1

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 5
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v4, 0x0

    .line 525
    new-instance v2, Lcom/android/server/connectivity/Tethering$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/android/server/connectivity/Tethering$2;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;ILandroid/os/ResultReceiver;)V

    .line 539
    .local v2, "rr":Landroid/os/ResultReceiver;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 540
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2, v0, v4}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 541
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 542
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 543
    .local v1, "receiverForSending":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    return-object v1
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const/4 v0, 0x0

    return v0

    .line 328
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    const/4 v0, 0x1

    return v0

    .line 330
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    const/4 v0, 0x2

    return v0

    .line 333
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private isBluetooth(Ljava/lang/String;)Z
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 318
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 319
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 318
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    .line 321
    return v2

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method private isTetherProvisioningRequired()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 398
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 399
    const v5, 0x1070018

    .line 398
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "provisionApp":[Ljava/lang/String;
    const-string/jumbo v4, "net.tethering.noprovisioning"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 401
    if-nez v2, :cond_1

    .line 402
    :cond_0
    return v3

    .line 406
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 407
    const-string/jumbo v5, "carrier_config"

    .line 406
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 408
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 410
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 411
    const-string/jumbo v5, "require_entitlement_checks_bool"

    .line 410
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 412
    .local v1, "isEntitlementCheckRequired":Z
    if-nez v1, :cond_2

    .line 413
    return v3

    .line 416
    .end local v1    # "isEntitlementCheckRequired":Z
    :cond_2
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 300
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 301
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 300
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    .line 303
    return v2

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method private isWifi(Ljava/lang/String;)Z
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 309
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 310
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 309
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    .line 312
    return v2

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method private maybeLogMessage(Lcom/android/internal/util/State;I)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    .prologue
    .line 1017
    return-void
.end method

.method private runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 561
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 562
    .local v0, "proxyReceiver":Landroid/os/ResultReceiver;
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    .line 560
    return-void
.end method

.method private runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 500
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 501
    .local v0, "proxyReceiver":Landroid/os/ResultReceiver;
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    .line 499
    return-void
.end method

.method private scheduleProvisioningRechecks(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 548
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 549
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    const-string/jumbo v3, "extraSetAlarm"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 551
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 552
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 554
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 547
    return-void

    .line 555
    :catchall_0
    move-exception v3

    .line 556
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 555
    throw v3
.end method

.method private sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 566
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 567
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    const-string/jumbo v3, "extraRunProvision"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 569
    const-string/jumbo v3, "extraProvisionCallback"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 570
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 571
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 573
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 565
    return-void

    .line 574
    :catchall_0
    move-exception v3

    .line 575
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 574
    throw v3
.end method

.method private sendTetherResult(Landroid/os/ResultReceiver;I)V
    .locals 1
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "result"    # I

    .prologue
    const/4 v0, 0x0

    .line 452
    if-eqz p1, :cond_0

    .line 453
    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 451
    :cond_0
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 14

    .prologue
    const v13, 0x108071b

    .line 649
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v10

    if-nez v10, :cond_0

    return-void

    .line 651
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v1, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v0, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v4, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 656
    .local v9, "wifiTethered":Z
    const/4 v8, 0x0

    .line 657
    .local v8, "usbTethered":Z
    const/4 v2, 0x0

    .line 659
    .local v2, "bluetoothTethered":Z
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v11

    .line 660
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v5, v10, :cond_7

    .line 661
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 662
    .local v7, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 663
    .local v6, "iface":Ljava/lang/String;
    iget v10, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I

    if-eqz v10, :cond_2

    .line 664
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 665
    :cond_2
    iget v10, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_3

    .line 666
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 659
    .end local v6    # "iface":Ljava/lang/String;
    .end local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 667
    .restart local v6    # "iface":Ljava/lang/String;
    .restart local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_3
    :try_start_1
    iget v10, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_1

    .line 668
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 669
    const/4 v8, 0x1

    .line 675
    :cond_4
    :goto_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 670
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 671
    const/4 v9, 0x1

    goto :goto_2

    .line 672
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_4

    .line 673
    const/4 v2, 0x1

    goto :goto_2

    .end local v6    # "iface":Ljava/lang/String;
    .end local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_7
    monitor-exit v11

    .line 679
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v10, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .local v3, "broadcast":Landroid/content/Intent;
    const/high16 v10, 0x24000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 682
    const-string/jumbo v10, "availableArray"

    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 684
    const-string/jumbo v10, "activeArray"

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 685
    const-string/jumbo v10, "erroredArray"

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 687
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 696
    if-eqz v8, :cond_a

    .line 697
    if-nez v9, :cond_8

    if-eqz v2, :cond_9

    .line 698
    :cond_8
    invoke-direct {p0, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    .line 648
    :goto_3
    return-void

    .line 700
    :cond_9
    const v10, 0x108071c

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_3

    .line 702
    :cond_a
    if-eqz v9, :cond_c

    .line 703
    if-eqz v2, :cond_b

    .line 704
    invoke-direct {p0, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_3

    .line 707
    :cond_b
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto :goto_3

    .line 709
    :cond_c
    if-eqz v2, :cond_d

    .line 710
    const v10, 0x108071a

    invoke-direct {p0, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_3

    .line 712
    :cond_d
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto :goto_3
.end method

.method private sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 505
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.TETHER_PROVISIONING_UI"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    const-string/jumbo v3, "extraProvisionCallback"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 510
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 504
    return-void

    .line 511
    :catchall_0
    move-exception v3

    .line 512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 511
    throw v3
.end method

.method private setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 470
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 471
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V

    .line 496
    const/4 v3, 0x5

    .line 478
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 469
    return-void

    .line 472
    :cond_0
    const-string/jumbo v2, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tried to enable bluetooth tethering with null or disabled adapter. null: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 473
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 472
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    .line 475
    return-void

    .line 473
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setWifiTethering(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 458
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 459
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    .line 461
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 462
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 465
    :cond_0
    const/4 v1, 0x5

    monitor-exit v2

    return v1

    .line 458
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private showTetheredNotification(I)V
    .locals 14
    .param p1, "icon"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 718
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 719
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-nez v7, :cond_0

    .line 720
    return-void

    .line 723
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v0, :cond_2

    .line 724
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-ne v0, p1, :cond_1

    .line 725
    return-void

    .line 727
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 728
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 727
    invoke-virtual {v7, v4, v0, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 729
    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 732
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 733
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.TetherSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 736
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 737
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    .line 736
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 739
    .local v8, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 740
    .local v9, "r":Landroid/content/res/Resources;
    const v0, 0x1040497

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 741
    .local v10, "title":Ljava/lang/CharSequence;
    const v0, 0x1040498

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 744
    .local v6, "message":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_3

    .line 745
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    .line 746
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v12, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 748
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 749
    const v3, 0x106005b

    .line 748
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 746
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 751
    const-string/jumbo v1, "status"

    .line 746
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 753
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 757
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 759
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    .line 760
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 759
    invoke-virtual {v7, v4, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 716
    return-void
.end method

.method private tetherMatchingInterfaces(ZI)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "interfaceType"    # I

    .prologue
    const/4 v5, 0x0

    .line 844
    const/4 v3, 0x0

    .line 846
    .local v3, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 851
    .local v3, "ifaces":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 852
    .local v0, "chosenIface":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 853
    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v3, v5

    .line 854
    .local v2, "iface":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v7

    if-ne v7, p2, :cond_1

    .line 855
    move-object v0, v2

    .line 860
    .end local v0    # "chosenIface":Ljava/lang/String;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_2

    .line 861
    const-string/jumbo v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "could not find iface of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void

    .line 847
    .local v3, "ifaces":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 848
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Tethering"

    const-string/jumbo v6, "Error listing Interfaces"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    return-void

    .line 853
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "chosenIface":Ljava/lang/String;
    .restart local v2    # "iface":Ljava/lang/String;
    .local v3, "ifaces":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 865
    .end local v0    # "chosenIface":Ljava/lang/String;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v4

    .line 866
    .local v4, "result":I
    :goto_1
    if-eqz v4, :cond_4

    .line 867
    const-string/jumbo v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable start or stop tethering on iface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return-void

    .line 865
    .end local v4    # "result":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 841
    .restart local v4    # "result":I
    :cond_4
    return-void
.end method

.method private trackNewTetherableInterface(Ljava/lang/String;I)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "interfaceType"    # I

    .prologue
    .line 1936
    new-instance v7, Lcom/android/server/connectivity/Tethering$TetherState;

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 1937
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move v3, p2

    move-object v6, p0

    .line 1936
    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;)V

    invoke-direct {v7, v0}, Lcom/android/server/connectivity/Tethering$TetherState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 1938
    .local v7, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    iget-object v0, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->start()V

    .line 1934
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1849
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v6, "  "

    invoke-direct {v4, p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1850
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 1851
    const-string/jumbo v7, "android.permission.DUMP"

    .line 1850
    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 1852
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1853
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1853
    const-string/jumbo v7, ", uid="

    .line 1852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1854
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1852
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1855
    return-void

    .line 1858
    :cond_0
    const-string/jumbo v6, "Tethering:"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1859
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1860
    const-string/jumbo v6, "mUpstreamIfaceTypes:"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1861
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v7

    .line 1862
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "netType$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1863
    .local v2, "netType":Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1861
    .end local v2    # "netType":Ljava/lang/Integer;
    .end local v3    # "netType$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1865
    .restart local v3    # "netType$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1867
    const-string/jumbo v6, "Tether state:"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1869
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 1870
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1871
    .local v1, "iface":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1872
    .local v5, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1874
    iget v6, v5, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    packed-switch v6, :pswitch_data_0

    .line 1885
    const-string/jumbo v6, "UnknownState"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1888
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " - lastError = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1869
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1876
    :pswitch_0
    const-string/jumbo v6, "UnavailableState"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 1879
    :pswitch_1
    const-string/jumbo v6, "AvailableState"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 1882
    :pswitch_2
    const-string/jumbo v6, "TetheredState"

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 1890
    .end local v1    # "iface":Ljava/lang/String;
    .end local v5    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 1892
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1846
    return-void

    .line 1874
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1005
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1007
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1008
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1009
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I

    if-eqz v3, :cond_0

    .line 1010
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_1
    monitor-exit v4

    .line 1014
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 1006
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 637
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 639
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_0

    .line 640
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 641
    const-string/jumbo v4, ", ignoring"

    .line 640
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 644
    :cond_0
    :try_start_1
    iget v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v1

    .line 637
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 988
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 990
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 991
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 992
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 993
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_1
    monitor-exit v4

    .line 997
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 989
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 975
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 977
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 978
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 979
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 980
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_1
    monitor-exit v4

    .line 984
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 976
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getUpstreamIfaceTypes()[I
    .locals 5

    .prologue
    .line 920
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 921
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 922
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 923
    .local v2, "values":[I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 924
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 925
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    .line 928
    return-object v2

    .line 920
    .end local v0    # "i":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "values":[I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 340
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 341
    .local v0, "interfaceType":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    monitor-exit v3

    .line 343
    return-void

    .line 346
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 347
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v1, :cond_1

    .line 348
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->trackNewTetherableInterface(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v3

    .line 337
    return-void

    .line 339
    .end local v0    # "interfaceType":I
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 294
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_0

    monitor-exit v2

    .line 364
    return-void

    .line 366
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const v3, 0x50068

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    .line 367
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 356
    return-void

    .line 358
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 266
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 267
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 268
    .local v0, "interfaceType":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    monitor-exit v3

    .line 269
    return-void

    .line 272
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 273
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz p2, :cond_2

    .line 274
    if-nez v1, :cond_1

    .line 275
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->trackNewTetherableInterface(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    .line 262
    return-void

    .line 278
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 279
    :try_start_2
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 280
    const v4, 0x50068

    .line 279
    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    .line 281
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 266
    .end local v0    # "interfaceType":I
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "who"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p3, "state"    # I
    .param p4, "error"    # I

    .prologue
    .line 1898
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1899
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 1900
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v2, p2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1901
    iput p3, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    .line 1902
    iput p4, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 1917
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v3, p1, v2}, Landroid/net/INetworkPolicyManager;->onTetheringChanged(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1922
    :goto_1
    packed-switch p3, :pswitch_data_0

    .line 1931
    :goto_2
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    .line 1897
    return-void

    .line 1898
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1917
    .restart local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1925
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v3, 0x50002

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2

    .line 1928
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v3, 0x50001

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2

    .line 1918
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1922
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z
    .locals 3
    .param p1, "ns"    # Landroid/net/NetworkState;

    .prologue
    .line 1203
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1204
    iget-object v2, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ifname$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1205
    .local v0, "ifname":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1206
    const/4 v2, 0x1

    return v2

    .line 1210
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "ifname$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public setUsbTethering(Z)I
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 887
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "usb"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 889
    .local v2, "usbManager":Landroid/hardware/usb/UsbManager;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 890
    if-eqz p1, :cond_1

    .line 891
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v3, :cond_0

    .line 892
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 894
    .local v0, "ident":J
    const/4 v3, 0x1

    const/4 v5, 0x1

    :try_start_1
    invoke-direct {p0, v3, v5}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 896
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "ident":J
    :goto_0
    monitor-exit v4

    .line 915
    return v6

    .line 895
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    .line 896
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 895
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 889
    .end local v0    # "ident":J
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 899
    :cond_0
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    .line 900
    const-string/jumbo v3, "rndis"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 903
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v0

    .line 905
    .restart local v0    # "ident":J
    const/4 v3, 0x0

    const/4 v5, 0x1

    :try_start_5
    invoke-direct {p0, v3, v5}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(ZI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 907
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 909
    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v3, :cond_2

    .line 910
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 912
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    goto :goto_0

    .line 906
    :catchall_2
    move-exception v3

    .line 907
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 906
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public startTethering(ILandroid/os/ResultReceiver;Z)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showProvisioningUi"    # Z

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    .line 375
    return-void

    .line 378
    :cond_0
    if-eqz p3, :cond_1

    .line 379
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    .line 372
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    goto :goto_0
.end method

.method public stopTethering(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 386
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    .line 387
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->cancelTetherProvisioningRechecks(I)V

    .line 385
    :cond_0
    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 595
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 597
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_0

    .line 598
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to Tether an unknown iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 599
    return v5

    .line 603
    :cond_0
    :try_start_1
    iget v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    if-eq v1, v5, :cond_1

    .line 604
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to Tether an unavailable iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    const/4 v1, 0x4

    monitor-exit v2

    return v1

    .line 607
    :cond_1
    :try_start_2
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const v3, 0x50066

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 608
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 595
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public untether(Ljava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 614
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    .line 616
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_0

    .line 617
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 620
    :cond_0
    :try_start_1
    iget v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 621
    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to untether an untethered iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    const/4 v1, 0x4

    monitor-exit v2

    return v1

    .line 624
    :cond_1
    :try_start_2
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 625
    const v3, 0x50067

    .line 624
    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 626
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 614
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public untetherAll()V
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 632
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 633
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 630
    return-void
.end method

.method updateConfiguration()V
    .locals 9

    .prologue
    .line 236
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 237
    const v7, 0x1070013

    .line 236
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "tetherableUsbRegexs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 239
    const v7, 0x1070014

    .line 238
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "tetherableWifiRegexs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 241
    const v7, 0x1070016

    .line 240
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "tetherableBluetoothRegexs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 244
    const v7, 0x1070019

    .line 243
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 245
    .local v1, "ifaceTypes":[I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v5, "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_0

    aget v0, v1, v6

    .line 247
    .local v0, "i":I
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "i":I
    :cond_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v7

    .line 251
    :try_start_0
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 252
    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 253
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 254
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 258
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    .line 235
    return-void

    .line 250
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method
