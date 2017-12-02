.class Lcom/android/server/tv/TvInputHardwareManager;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Lcom/android/server/tv/TvInputHal$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputHardwareManager$1;,
        Lcom/android/server/tv/TvInputHardwareManager$Connection;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;,
        Lcom/android/server/tv/TvInputHardwareManager$Listener;,
        Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;,
        Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/tv/TvInputHardwareManager$Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentMaxIndex:I

.field private final mHal:Lcom/android/server/tv/TvInputHal;

.field private final mHandler:Landroid/os/Handler;

.field private final mHardwareInputIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHardwareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

.field private final mHdmiDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field private final mHdmiInputIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiStateMap:Landroid/util/SparseBooleanArray;

.field private final mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

.field private final mInputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingHdmiDeviceEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;
    .locals 1
    .param p1, "port"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([II)Z
    .locals 1
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/tv/TvInputHardwareManager;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->getMediaStreamVolume()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/tv/TvInputHardwareManager;Z)I
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->convertConnectedToState(Z)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/tv/TvInputHardwareManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/tv/TvInputHardwareManager$Listener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/server/tv/TvInputHal;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHal;-><init>(Lcom/android/server/tv/TvInputHal$Callback;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 99
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;)V

    .line 98
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 100
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .line 102
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;)V

    .line 101
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .line 103
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHardwareManager$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 110
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    .line 113
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    .line 114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    .line 117
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 122
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    .line 124
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 125
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHal;->init()V

    .line 121
    return-void
.end method

.method private buildHardwareListLocked()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method private checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z
    .locals 4
    .param p1, "connection"    # Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .param p2, "callingUid"    # I
    .param p3, "resolvedUserId"    # I

    .prologue
    const/4 v2, 0x1

    .line 260
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallingUidLocked()Ljava/lang/Integer;

    move-result-object v0

    .line 261
    .local v0, "connectionCallingUid":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getResolvedUserIdLocked()Ljava/lang/Integer;

    move-result-object v1

    .line 262
    .local v1, "connectionResolvedUserId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    .line 263
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private convertConnectedToState(Z)I
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private findDeviceIdForInputIdLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 425
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 426
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 427
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getInfoLocked()Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    return v1

    .line 425
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;
    .locals 4
    .param p1, "port"    # I

    .prologue
    .line 415
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "hardwareInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 416
    .local v0, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 418
    return-object v0

    .line 421
    .end local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getMediaStreamVolume()F
    .locals 2

    .prologue
    .line 549
    iget v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, -0x1

    .line 511
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 514
    const-string/jumbo v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 515
    .local v4, "streamType":I
    if-eq v4, v7, :cond_1

    .line 516
    return-void

    .line 512
    .end local v4    # "streamType":I
    :cond_0
    const-string/jumbo v5, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 526
    const-string/jumbo v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 527
    .restart local v4    # "streamType":I
    if-eq v4, v7, :cond_3

    .line 528
    return-void

    .line 518
    :cond_1
    const-string/jumbo v5, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 519
    .local v3, "index":I
    iget v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    if-ne v3, v5, :cond_2

    .line 520
    return-void

    .line 522
    :cond_2
    iput v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 538
    .end local v3    # "index":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 539
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 540
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-virtual {v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    move-result-object v1

    .line 541
    .local v1, "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    if-eqz v1, :cond_4

    .line 542
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->onMediaStreamVolumeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    .end local v1    # "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .end local v2    # "i":I
    .end local v4    # "streamType":I
    :cond_5
    sget-object v5, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unrecognized intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void

    .restart local v2    # "i":I
    .restart local v4    # "streamType":I
    :cond_6
    monitor-exit v6

    .line 510
    return-void

    .line 538
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 314
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    return v0

    .line 313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private static intArrayContains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 322
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, p0, v1

    .line 323
    .local v0, "element":I
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 322
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "element":I
    :cond_1
    return v2
.end method

.method private processPendingHdmiDeviceEventsLocked()V
    .locals 5

    .prologue
    .line 493
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 494
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 495
    .local v3, "msg":Landroid/os/Message;
    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 497
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v1

    .line 498
    .local v1, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 500
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 492
    .end local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v1    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private updateVolume()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 506
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    .line 507
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 505
    return-void
.end method


# virtual methods
.method public acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;II)Landroid/media/tv/ITvInputHardware;
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "callingUid"    # I
    .param p5, "resolvedUserId"    # I

    .prologue
    const/4 v5, 0x0

    .line 371
    if-nez p2, :cond_0

    .line 372
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 374
    :cond_0
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 375
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 376
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_1

    .line 377
    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid deviceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 378
    return-object v5

    .line 380
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p4, p5}, Lcom/android/server/tv/TvInputHardwareManager;->checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    .local v1, "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :try_start_2
    invoke-interface {p2}, Landroid/media/tv/ITvInputHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    :try_start_3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 391
    .end local v1    # "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    monitor-exit v7

    return-object v2

    .line 385
    .restart local v1    # "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :catch_0
    move-exception v6

    .line 386
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v7

    .line 387
    return-object v5

    .line 374
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v1    # "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v7

    throw v2
.end method

.method public addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 11
    .param p1, "deviceId"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 275
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 276
    :try_start_0
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 277
    .local v4, "oldInputId":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 278
    sget-object v8, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Trying to override previous registration: old = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 279
    iget-object v10, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 278
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 279
    const-string/jumbo v10, ":"

    .line 278
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 279
    const-string/jumbo v10, ", new = "

    .line 278
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 280
    const-string/jumbo v10, ":"

    .line 278
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 290
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v1

    .line 291
    .local v1, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    if-nez v1, :cond_2

    .line 288
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    :cond_2
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 295
    .local v3, "inputId":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 296
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 297
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/tv/TvInputHardwareManager;->convertConnectedToState(Z)I

    move-result v6

    .line 296
    const/4 v8, 0x1

    .line 297
    const/4 v9, 0x0

    .line 296
    invoke-virtual {v5, v8, v6, v9, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 299
    return-void

    .line 303
    .end local v1    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v3    # "inputId":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 304
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-eqz v0, :cond_4

    .line 305
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 306
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_5

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/server/tv/TvInputHardwareManager;->convertConnectedToState(Z)I

    move-result v5

    .line 307
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 305
    const/4 v9, 0x1

    .line 306
    const/4 v10, 0x0

    .line 305
    invoke-virtual {v8, v9, v5, v10, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v7

    .line 274
    return-void

    :cond_5
    move v5, v6

    .line 306
    goto :goto_1

    .line 275
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v2    # "i":I
    .end local v4    # "oldInputId":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method public addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;

    .prologue
    .line 329
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v3

    const/16 v4, 0x3ef

    if-eq v3, v4, :cond_0

    .line 330
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "info ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") has non-HDMI type."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    :cond_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 333
    :try_start_0
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "parentId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-static {v3, v1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v2

    .line 335
    .local v2, "parentIndex":I
    if-gez v2, :cond_1

    .line 336
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "info ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") has invalid parentId."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    .end local v1    # "parentId":Ljava/lang/String;
    .end local v2    # "parentIndex":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 338
    .restart local v1    # "parentId":Ljava/lang/String;
    .restart local v2    # "parentIndex":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    .local v0, "oldInputId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 340
    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Trying to override previous registration: old = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 341
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 340
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 341
    const-string/jumbo v6, ":"

    .line 340
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 341
    const-string/jumbo v6, ", new = "

    .line 340
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 342
    const-string/jumbo v6, ":"

    .line 340
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_2
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 328
    return-void
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
    .locals 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .param p4, "callingUid"    # I
    .param p5, "resolvedUserId"    # I

    .prologue
    const/4 v9, 0x0

    .line 461
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 462
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result v1

    .line 463
    .local v1, "deviceId":I
    if-gez v1, :cond_0

    .line 464
    sget-object v5, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid inputId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 465
    return v9

    .line 467
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 468
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    move-result-object v2

    .line 469
    .local v2, "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    if-eqz v2, :cond_3

    .line 471
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    move-result-object v4

    .line 472
    .local v4, "runnable":Ljava/lang/Runnable;
    if-eqz v4, :cond_1

    .line 473
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 474
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    .line 477
    :cond_1
    invoke-static {v2, p2, p3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->-wrap0(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v3

    .line 478
    .local v3, "result":Z
    if-eqz v3, :cond_2

    .line 479
    new-instance v5, Lcom/android/server/tv/TvInputHardwareManager$2;

    invoke-direct {v5, p0, v2, p3}, Lcom/android/server/tv/TvInputHardwareManager$2;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)V

    invoke-virtual {v0, v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v6

    .line 486
    return v3

    .end local v3    # "result":Z
    .end local v4    # "runnable":Ljava/lang/Runnable;
    :cond_3
    monitor-exit v6

    .line 489
    return v9

    .line 461
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v1    # "deviceId":I
    .end local v2    # "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 553
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v13, "  "

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v13}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 554
    .local v10, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.DUMP"

    invoke-virtual {v13, v14}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_0

    .line 556
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Permission Denial: can\'t dump TvInputHardwareManager from pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 557
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 556
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 557
    const-string/jumbo v14, ", uid="

    .line 556
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 557
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 556
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 558
    return-void

    .line 561
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 562
    :try_start_0
    const-string/jumbo v13, "TvInputHardwareManager Info:"

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 564
    const-string/jumbo v13, "mConnections: deviceId -> Connection"

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 566
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v6, v13, :cond_1

    .line 567
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 568
    .local v1, "deviceId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 569
    .local v9, "mConnection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, ": "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 566
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 572
    .end local v1    # "deviceId":I
    .end local v9    # "mConnection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :cond_1
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 574
    const-string/jumbo v13, "mHardwareList:"

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 576
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "tvInputHardwareInfo$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/tv/TvInputHardwareInfo;

    .line 577
    .local v11, "tvInputHardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 561
    .end local v6    # "i":I
    .end local v11    # "tvInputHardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v12    # "tvInputHardwareInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 579
    .restart local v6    # "i":I
    .restart local v12    # "tvInputHardwareInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 581
    const-string/jumbo v13, "mHdmiDeviceList:"

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 583
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "hdmiDeviceInfo$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 584
    .local v4, "hdmiDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v10, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 586
    .end local v4    # "hdmiDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_3
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 588
    const-string/jumbo v13, "mHardwareInputIdMap: deviceId -> inputId"

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 590
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v6, v13, :cond_4

    .line 591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 592
    .restart local v1    # "deviceId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 593
    .local v8, "inputId":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, ": "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 590
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 595
    .end local v1    # "deviceId":I
    .end local v8    # "inputId":Ljava/lang/String;
    :cond_4
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 597
    const-string/jumbo v13, "mHdmiInputIdMap: id -> inputId"

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 599
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v6, v13, :cond_5

    .line 600
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 601
    .local v7, "id":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 602
    .restart local v8    # "inputId":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, ": "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 599
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 604
    .end local v7    # "id":I
    .end local v8    # "inputId":Ljava/lang/String;
    :cond_5
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 606
    const-string/jumbo v13, "mInputMap: inputId -> inputInfo"

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 608
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 609
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/tv/TvInputInfo;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, ": "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 611
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/tv/TvInputInfo;>;"
    :cond_6
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 612
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v14

    .line 552
    return-void
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;
    .locals 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "resolvedUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v1, "configsList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvStreamConfig;>;"
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 441
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result v3

    .line 442
    .local v3, "deviceId":I
    if-gez v3, :cond_0

    .line 443
    sget-object v4, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid inputId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 444
    return-object v1

    .line 446
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 447
    .local v2, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v0, v6, v4

    .line 448
    .local v0, "config":Landroid/media/tv/TvStreamConfig;
    invoke-virtual {v0}, Landroid/media/tv/TvStreamConfig;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 449
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "config":Landroid/media/tv/TvStreamConfig;
    :cond_2
    monitor-exit v5

    .line 453
    return-object v1

    .line 440
    .end local v2    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v3    # "deviceId":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getHardwareList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getHdmiDeviceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .prologue
    .line 129
    const/16 v3, 0x1f4

    if-ne p1, v3, :cond_0

    .line 131
    const-string/jumbo v3, "hdmi_control"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 130
    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;

    move-result-object v2

    .line 132
    .local v2, "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    if-eqz v2, :cond_1

    .line 134
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 135
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 137
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .line 136
    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 138
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiControlService;->getInputDevices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v3, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V

    .line 128
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    :cond_0
    return-void

    .line 139
    .restart local v2    # "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error registering listeners to HdmiControlService:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "HdmiControlService is not available"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V
    .locals 6
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p2, "configs"    # [Landroid/media/tv/TvStreamConfig;

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 156
    :try_start_0
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-direct {v0, p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V

    .line 157
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v0, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    .line 158
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    .line 160
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 161
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 160
    invoke-virtual {v1, v3, v4, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 162
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->processPendingHdmiDeviceEventsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 154
    return-void

    .line 155
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onDeviceUnavailable(I)V
    .locals 10
    .param p1, "deviceId"    # I

    .prologue
    .line 177
    iget-object v9, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 179
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_0

    .line 180
    sget-object v1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceUnavailable: Cannot find a connection with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 181
    return-void

    .line 183
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 184
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 185
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    .line 186
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v7

    .line 187
    .local v7, "info":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v7}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 189
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 191
    .local v6, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v1

    invoke-virtual {v7}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 194
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v6    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v7    # "info":Landroid/media/tv/TvInputHardwareInfo;
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1

    .line 198
    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v7    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 199
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 198
    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v9

    .line 176
    return-void
.end method

.method public onFirstFrameCaptured(II)V
    .locals 6
    .param p1, "deviceId"    # I
    .param p2, "streamId"    # I

    .prologue
    .line 231
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 233
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_0

    .line 234
    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FirstFrameCaptured: Cannot find a connection with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 236
    return-void

    .line 238
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    move-result-object v1

    .line 239
    .local v1, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 240
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 241
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v3

    .line 230
    return-void

    .line 231
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;)V
    .locals 9
    .param p1, "deviceId"    # I
    .param p2, "configs"    # [Landroid/media/tv/TvStreamConfig;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 205
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 206
    :try_start_0
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 207
    .local v1, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v1, :cond_0

    .line 208
    sget-object v4, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "StreamConfigurationChanged: Cannot find a connection with "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 210
    return-void

    .line 212
    :cond_0
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    .line 213
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 214
    .local v3, "inputId":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 215
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 216
    array-length v8, p2

    if-lez v8, :cond_3

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager;->convertConnectedToState(Z)I

    move-result v4

    .line 215
    const/4 v5, 0x1

    .line 216
    const/4 v8, 0x0

    .line 215
    invoke-virtual {v7, v5, v4, v8, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 218
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallbackLocked()Landroid/media/tv/ITvInputHardwareCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 219
    .local v0, "callback":Landroid/media/tv/ITvInputHardwareCallback;
    if-eqz v0, :cond_2

    .line 221
    :try_start_2
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputHardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    monitor-exit v6

    .line 204
    return-void

    .end local v0    # "callback":Landroid/media/tv/ITvInputHardwareCallback;
    :cond_3
    move v4, v5

    .line 216
    goto :goto_0

    .line 222
    .restart local v0    # "callback":Landroid/media/tv/ITvInputHardwareCallback;
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v4, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "error in onStreamConfigurationChanged"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 205
    .end local v0    # "callback":Landroid/media/tv/ITvInputHardwareCallback;
    .end local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "inputId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4
.end method

.method public releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    .locals 7
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/ITvInputHardware;
    .param p3, "callingUid"    # I
    .param p4, "resolvedUserId"    # I

    .prologue
    .line 400
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 402
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_0

    .line 403
    sget-object v1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid deviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 404
    return-void

    .line 406
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 407
    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/tv/TvInputHardwareManager;->checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 406
    if-eqz v1, :cond_2

    :cond_1
    monitor-exit v6

    .line 408
    return-void

    .line 410
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    .line 399
    return-void

    .line 400
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method public removeHardwareInput(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 351
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-static {v2, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v1

    .line 353
    .local v1, "hardwareIndex":I
    if-ltz v1, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-static {v2, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v0

    .line 357
    .local v0, "deviceIndex":I
    if-ltz v0, :cond_1

    .line 358
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 349
    return-void

    .line 350
    .end local v0    # "deviceIndex":I
    .end local v1    # "hardwareIndex":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
