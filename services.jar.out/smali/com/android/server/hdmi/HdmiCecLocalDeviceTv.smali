.class final Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
.super Lcom/android/server/hdmi/HdmiCecLocalDevice;
.source "HdmiCecLocalDeviceTv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiCecLocalDeviceTv"


# instance fields
.field private mArcEstablished:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

.field private mAutoDeviceOff:Z

.field private mAutoWakeup:Z

.field private final mCecSwitches:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

.field private final mDeviceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalDeviceAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevPortId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSafeAllDeviceInfos:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeExternalInputs:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

.field private mSkipRoutingControl:Z

.field private final mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

.field private mSystemAudioActivated:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSystemAudioMute:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSystemAudioVolume:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

.field private final mTvInputs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)Lcom/android/server/hdmi/SelectRequestBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;I)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addTvInput(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeTvInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->resetSelectRequestBuffer()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 73
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 76
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    .line 81
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    .line 92
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    .line 95
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    .line 132
    new-instance v0, Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 137
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    .line 185
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    .line 186
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    .line 188
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "hdmi_control_auto_wakeup_enabled"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    .line 189
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 183
    return-void
.end method

.method private addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1264
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1265
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1266
    .local v0, "oldDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_0

    .line 1267
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1269
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1270
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    .line 1271
    return-object v0
.end method

.method private addTvInput(Ljava/lang/String;I)V
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 165
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method private canStartArcUpdateAction(IZ)Z
    .locals 2
    .param p1, "avrAddress"    # I
    .param p2, "shouldCheckArcFeatureEnabled"    # Z

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1133
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_1

    .line 1134
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1135
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToArcPort(I)Z

    move-result v1

    .line 1133
    if-eqz v1, :cond_1

    .line 1136
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isDirectConnectAddress(I)Z

    move-result v1

    .line 1133
    if-eqz v1, :cond_1

    .line 1137
    if-eqz p2, :cond_0

    .line 1138
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcFeatureEnabled(I)Z

    move-result v1

    return v1

    .line 1140
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1143
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private checkRecordSource([B)Z
    .locals 1
    .param p1, "recordSource"    # [B

    .prologue
    .line 1782
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiRecordSources;->checkRecordSource([B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkRecorder(I)Z
    .locals 4
    .param p1, "recorderAddress"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1775
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1776
    .local v0, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_1

    .line 1777
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1776
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1777
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1776
    goto :goto_0
.end method

.method private checkTimerRecordingSource(I[B)Z
    .locals 1
    .param p1, "sourceType"    # I
    .param p2, "recordSource"    # [B

    .prologue
    .line 1817
    if-eqz p2, :cond_0

    .line 1818
    invoke-static {p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSource(I[B)Z

    move-result v0

    .line 1817
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearDeviceInfoList()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 840
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 841
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_0

    .line 843
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 844
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    .line 838
    return-void
.end method

.method private disableArcIfExist()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1675
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1676
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1677
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_0

    .line 1678
    return-void

    .line 1682
    :cond_0
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1683
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1684
    new-instance v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1674
    :cond_1
    return-void
.end method

.method private disableSystemAudioIfExist()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1661
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1662
    return-void

    .line 1666
    :cond_0
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1667
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1668
    const-class v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1669
    const-class v0, Lcom/android/server/hdmi/SystemAudioStatusAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1670
    const-class v0, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1659
    return-void
.end method

.method private findKeyReceiverAddress()I
    .locals 2

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    return v1

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 473
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    return v1

    .line 476
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getInputDevices()Ljava/util/List;
    .locals 4
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
    .line 1343
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    .local v2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1345
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1346
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isLocalDeviceAddress(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1344
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1349
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isSourceType()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1350
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1353
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_2
    return-object v2
.end method

.method private handleNewDeviceAtTheTailOfActivePath(I)Z
    .locals 4
    .param p1, "path"    # I

    .prologue
    const/4 v3, 0x0

    .line 668
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isTailOfActivePath(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    .line 670
    .local v0, "newPath":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 671
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 672
    const/4 v1, 0x1

    return v1

    .line 674
    .end local v0    # "newPath":I
    :cond_0
    return v3
.end method

.method private handleSelectInternalSource()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 302
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    if-eq v1, v2, :cond_1

    .line 303
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(II)V

    .line 304
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    if-eqz v1, :cond_0

    .line 305
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 306
    return-void

    .line 309
    :cond_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    .line 308
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 310
    .local v0, "activeSource":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 299
    .end local v0    # "activeSource":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_1
    return-void
.end method

.method private hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 1361
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToCecSwitch(ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1360
    :goto_0
    return v0

    .line 1361
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initLocalDeviceAddresses()Ljava/util/List;
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 221
    .local v1, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    .end local v1    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private static invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 4
    .param p0, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p1, "result"    # I

    .prologue
    .line 480
    if-nez p0, :cond_0

    .line 481
    return-void

    .line 484
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiCecLocalDeviceTv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p2, "status"    # I

    .prologue
    .line 1387
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1386
    :cond_0
    return-void
.end method

.method private static isConnectedToCecSwitch(ILjava/util/Collection;)Z
    .locals 3
    .param p0, "path"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1365
    .local p1, "switches":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "switchPath$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1366
    .local v0, "switchPath":I
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isParentPath(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1367
    const/4 v2, 0x1

    return v2

    .line 1370
    .end local v0    # "switchPath":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isDirectConnectAddress(I)Z
    .locals 1
    .param p1, "physicalAddress"    # I

    .prologue
    .line 1038
    const v0, 0xf000

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocalDeviceAddress(I)Z
    .locals 2
    .param p1, "address"    # I

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLocalDeviceAddresses:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v0, 0x0

    .line 1245
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1246
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1247
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1248
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    .line 1249
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1245
    :cond_1
    return v0
.end method

.method private static isParentPath(II)Z
    .locals 6
    .param p0, "parentPath"    # I
    .param p1, "childPath"    # I

    .prologue
    const/4 v3, 0x0

    .line 1376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0xc

    if-gt v0, v4, :cond_2

    .line 1377
    shr-int v4, p1, v0

    and-int/lit8 v1, v4, 0xf

    .line 1378
    .local v1, "nibble":I
    if-eqz v1, :cond_1

    .line 1379
    shr-int v4, p0, v0

    and-int/lit8 v2, v4, 0xf

    .line 1380
    .local v2, "parentNibble":I
    if-nez v2, :cond_0

    add-int/lit8 v4, v0, 0x4

    shr-int v4, p1, v4

    add-int/lit8 v5, v0, 0x4

    shr-int v5, p0, v5

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 1376
    .end local v2    # "parentNibble":I
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 1383
    .end local v1    # "nibble":I
    :cond_2
    return v3
.end method

.method static isTailOfActivePath(II)Z
    .locals 5
    .param p0, "path"    # I
    .param p1, "activePath"    # I

    .prologue
    const/4 v4, 0x0

    .line 687
    if-nez p1, :cond_0

    .line 688
    return v4

    .line 690
    :cond_0
    const/16 v2, 0xc

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 691
    shr-int v3, p1, v2

    and-int/lit8 v0, v3, 0xf

    .line 692
    .local v0, "curActivePath":I
    if-nez v0, :cond_1

    .line 693
    const/4 v3, 0x1

    return v3

    .line 695
    :cond_1
    shr-int v3, p0, v2

    and-int/lit8 v1, v3, 0xf

    .line 696
    .local v1, "curPath":I
    if-eq v1, v0, :cond_2

    .line 697
    return v4

    .line 690
    :cond_2
    add-int/lit8 v2, v2, -0x4

    goto :goto_0

    .line 701
    .end local v0    # "curActivePath":I
    .end local v1    # "curPath":I
    :cond_3
    return v4
.end method

.method private launchDeviceDiscovery()V
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 790
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->clearDeviceInfoList()V

    .line 791
    new-instance v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 792
    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    .line 791
    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    .line 823
    .local v0, "action":Lcom/android/server/hdmi/DeviceDiscoveryAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 788
    return-void
.end method

.method private notifyArcStatusToAudioService(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    .line 966
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 965
    const/high16 v4, 0x40000

    .line 964
    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 962
    return-void

    .line 966
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeCecSwitches(I)V
    .locals 3
    .param p1, "portId"    # I

    .prologue
    .line 1604
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1605
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1606
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1607
    .local v1, "path":I
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->pathToPortId(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1608
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1603
    .end local v1    # "path":I
    :cond_1
    return-void
.end method

.method private removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1285
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1286
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1287
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_0

    .line 1288
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1290
    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    .line 1291
    return-object v0
.end method

.method private removeTvInput(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 171
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method private resetSelectRequestBuffer()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 236
    sget-object v0, Lcom/android/server/hdmi/SelectRequestBuffer;->EMPTY_BUFFER:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSelectRequestBuffer(Lcom/android/server/hdmi/SelectRequestBuffer;)V

    .line 234
    return-void
.end method

.method private sendClearTimerMessage(II[B)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B

    .prologue
    .line 1849
    const/4 v0, 0x0

    .line 1850
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    packed-switch p2, :pswitch_data_0

    .line 1864
    const-string/jumbo v1, "HdmiCecLocalDeviceTv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid source type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    const/16 v1, 0xa1

    .line 1865
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1867
    return-void

    .line 1852
    :pswitch_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v1, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 1870
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 1848
    return-void

    .line 1856
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :pswitch_1
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v1, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    goto :goto_0

    .line 1860
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :pswitch_2
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v1, p1, p3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    goto :goto_0

    .line 1850
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateArcFeatureStatus(IZ)V
    .locals 3
    .param p1, "portId"    # I
    .param p2, "isConnected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 936
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v1

    .line 937
    .local v1, "portInfo":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 938
    return-void

    .line 940
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 941
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_2

    .line 942
    if-eqz p2, :cond_1

    .line 945
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 947
    :cond_1
    return-void

    .line 951
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 952
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeArcFeatureEnabled(IZ)V

    .line 934
    :cond_3
    return-void
.end method

.method private updateAudioManagerForSystemAudio(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    .line 884
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setHdmiSystemAudioSupported(Z)I

    move-result v0

    .line 885
    .local v0, "device":I
    const-string/jumbo v1, "[A]UpdateSystemAudio mode[on=%b] output=[%X]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    return-void
.end method

.method private updateSafeDeviceInfoList()V
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1327
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1328
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    .line 1329
    .local v0, "copiedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getInputDevices()Ljava/util/List;

    move-result-object v1

    .line 1330
    .local v1, "externalInputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1331
    :try_start_0
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 1332
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1326
    return-void

    .line 1330
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method final addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1462
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1463
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1464
    .local v0, "old":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    if-ne v1, v2, :cond_0

    .line 1466
    return-void

    .line 1468
    :cond_0
    if-nez v0, :cond_2

    .line 1469
    invoke-direct {p0, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1461
    :cond_1
    :goto_0
    return-void

    .line 1470
    :cond_2
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1471
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1472
    invoke-direct {p0, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    goto :goto_0
.end method

.method announceClearTimerRecordingResult(II)V
    .locals 1
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeClearTimerRecordingResult(II)V

    .line 1240
    return-void
.end method

.method announceOneTouchRecordResult(II)V
    .locals 1
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeOneTouchRecordResult(II)V

    .line 1232
    return-void
.end method

.method announceTimerRecordingResult(II)V
    .locals 1
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeTimerRecordingResult(II)V

    .line 1236
    return-void
.end method

.method broadcastMenuLanguage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 578
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    .line 577
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 579
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    if-eqz v0, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 581
    const/4 v1, 0x1

    return v1

    .line 583
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method changeArcFeatureEnabled(IZ)V
    .locals 1
    .param p1, "portId"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 987
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 989
    if-eqz p2, :cond_1

    .line 990
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    if-nez v0, :cond_0

    .line 991
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    if-eqz v0, :cond_0

    .line 995
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    goto :goto_0
.end method

.method changeMute(Z)V
    .locals 4
    .param p1, "mute"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1086
    const-string/jumbo v0, "[A]:Change mute:%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1088
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    if-ne v0, p1, :cond_0

    .line 1089
    const-string/jumbo v0, "No need to change mute."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1090
    return-void

    :cond_0
    monitor-exit v1

    .line 1093
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1094
    const-string/jumbo v0, "[A]:System audio is not activated."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    return-void

    .line 1087
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1099
    :cond_1
    const-class v0, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1100
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 1101
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->getMuteKey(Z)I

    move-result v1

    .line 1100
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->sendUserControlPressedAndReleased(II)V

    .line 1084
    return-void
.end method

.method changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 850
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 851
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 852
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    .line 853
    const/4 v1, 0x6

    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 854
    return-void

    .line 856
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 857
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_2

    .line 858
    invoke-virtual {p0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    .line 859
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 860
    return-void

    .line 864
    :cond_2
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 863
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 849
    return-void
.end method

.method changeVolume(III)V
    .locals 8
    .param p1, "curVolume"    # I
    .param p2, "delta"    # I
    .param p3, "maxVolume"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1057
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1061
    add-int v2, p1, p2

    .line 1062
    .local v2, "targetVolume":I
    invoke-static {v2, p3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCecVolume(II)I

    move-result v1

    .line 1063
    .local v1, "cecVolume":I
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1066
    :try_start_0
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    if-ne v1, v3, :cond_1

    .line 1068
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1069
    iget v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    invoke-static {v4, p3}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCustomVolume(II)I

    move-result v4

    .line 1068
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/android/server/hdmi/HdmiControlService;->setAudioStatus(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1070
    return-void

    .line 1058
    .end local v1    # "cecVolume":I
    .end local v2    # "targetVolume":I
    :cond_0
    return-void

    .restart local v1    # "cecVolume":I
    .restart local v2    # "targetVolume":I
    :cond_1
    monitor-exit v6

    .line 1074
    const-class v3, Lcom/android/server/hdmi/VolumeControlAction;

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1075
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/VolumeControlAction;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1076
    new-instance v6, Lcom/android/server/hdmi/VolumeControlAction;

    .line 1077
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v7

    if-lez p2, :cond_2

    move v3, v4

    .line 1076
    :goto_0
    invoke-direct {v6, p0, v7, v3}, Lcom/android/server/hdmi/VolumeControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    invoke-virtual {p0, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1055
    :goto_1
    return-void

    .line 1063
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/VolumeControlAction;>;"
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .restart local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/VolumeControlAction;>;"
    :cond_2
    move v3, v5

    .line 1077
    goto :goto_0

    .line 1079
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/VolumeControlAction;

    if-lez p2, :cond_4

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/VolumeControlAction;->handleVolumeChange(Z)V

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method clearTimerRecording(II[B)V
    .locals 3
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1824
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1825
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    const-string/jumbo v1, "Can not start one touch record. CEC control is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const/16 v0, 0xa2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1827
    return-void

    .line 1830
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1831
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid recorder address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    const/16 v0, 0xa0

    .line 1832
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1834
    return-void

    .line 1837
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkTimerRecordingSource(I[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1838
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid record source."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const/16 v0, 0xa1

    .line 1839
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 1841
    return-void

    .line 1844
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->sendClearTimerMessage(II[B)V

    .line 1822
    return-void
.end method

.method deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 268
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 269
    .local v2, "targetDevice":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v2, :cond_0

    .line 270
    const/4 v3, 0x3

    invoke-static {p2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 271
    return-void

    .line 273
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 274
    .local v1, "targetAddress":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    .line 275
    .local v0, "active":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v3

    if-nez v3, :cond_1

    .line 276
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->isValid()Z

    move-result v3

    .line 275
    if-eqz v3, :cond_1

    .line 277
    iget v3, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne v1, v3, :cond_1

    .line 278
    invoke-static {p2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 279
    return-void

    .line 281
    :cond_1
    if-nez v1, :cond_2

    .line 282
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleSelectInternalSource()V

    .line 284
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActiveSource(II)V

    .line 285
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 286
    invoke-static {p2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 287
    return-void

    .line 289
    :cond_2
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 290
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 291
    const/4 v3, 0x6

    invoke-static {p2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 292
    return-void

    .line 294
    :cond_3
    const-class v3, Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 295
    new-instance v3, Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/server/hdmi/DeviceSelectAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 266
    return-void
.end method

.method protected disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 2
    .param p1, "initiatedByCec"    # Z
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1635
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1636
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 1641
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1642
    const-class v0, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1643
    const-class v0, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1645
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1646
    const-class v0, Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1648
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableSystemAudioIfExist()V

    .line 1649
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArcIfExist()V

    .line 1651
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 1652
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->clearDeviceInfoList()V

    .line 1653
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 1654
    const v0, 0xffff

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 1655
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkIfPendingActionsCleared()V

    .line 1634
    return-void
.end method

.method dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 253
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->handleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    return v0

    .line 256
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0
.end method

.method displayOsd(I)V
    .locals 1
    .param p1, "messageId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1712
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1713
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->displayOsd(I)V

    .line 1711
    return-void
.end method

.method displayOsd(II)V
    .locals 1
    .param p1, "messageId"    # I
    .param p2, "extra"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1718
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1719
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->displayOsd(II)V

    .line 1717
    return-void
.end method

.method doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 5
    .param p1, "portId"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 387
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 389
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->isValidPortId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    invoke-static {p2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 391
    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 394
    invoke-static {p2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 395
    return-void

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 398
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePortId(I)V

    .line 400
    invoke-static {p2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 401
    return-void

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 404
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v1

    .line 405
    .local v1, "oldPath":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 406
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    if-eqz v2, :cond_4

    .line 407
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 408
    return-void

    .line 404
    .end local v1    # "oldPath":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    goto :goto_0

    .line 410
    .restart local v1    # "oldPath":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    .line 411
    .local v0, "newPath":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 386
    return-void
.end method

.method protected dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1935
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mArcEstablished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mArcFeatureEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSystemAudioActivated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSystemAudioMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAutoDeviceOff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAutoWakeup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSkipRoutingControl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPrevPortId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1944
    const-string/jumbo v2, "CEC devices:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1946
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1947
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 1949
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1934
    return-void
.end method

.method getAutoWakeup()Z
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1628
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1629
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    return v0
.end method

.method getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1399
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2
    .param p1, "logicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1414
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    return-object v0
.end method

.method final getDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3
    .param p1, "path"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1537
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1538
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1539
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1540
    return-object v0

    .line 1543
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method getDeviceInfoList(Z)Ljava/util/List;
    .locals 4
    .param p1, "includeLocalDevice"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1304
    if-eqz p1, :cond_0

    .line 1305
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 1307
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1308
    .local v2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1309
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1310
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isLocalDeviceAddress(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1311
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1314
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_2
    return-object v2
.end method

.method getPortId(I)I
    .locals 1
    .param p1, "physicalAddress"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    return v0
.end method

.method getPowerStatus()I
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 432
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPowerStatus()I

    move-result v0

    return v0
.end method

.method protected getPreferredAddress()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method getPrevPortId()I
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getSafeAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1

    .prologue
    .line 1422
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 4
    .param p1, "logicalAddress"    # I

    .prologue
    .line 1433
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1434
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1435
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, p1, :cond_0

    monitor-exit v3

    .line 1436
    return-object v0

    .line 1439
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    return-object v2

    .line 1433
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method getSafeCecDevicesLocked()Ljava/util/List;
    .locals 4
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
    .line 1444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1445
    .local v2, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1446
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isLocalDeviceAddress(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1449
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1451
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1
    return-object v2
.end method

.method getSafeDeviceInfoByPath(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 4
    .param p1, "path"    # I

    .prologue
    .line 1555
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1556
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeAllDeviceInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1557
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, p1, :cond_0

    monitor-exit v3

    .line 1558
    return-object v0

    .line 1561
    .end local v0    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    return-object v2

    .line 1555
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method getSafeExternalInputsLocked()Ljava/util/List;
    .locals 1
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
    .line 1322
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSafeExternalInputs:Ljava/util/List;

    return-object v0
.end method

.method getSystemAudioModeSetting()Z
    .locals 3

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "hdmi_system_audio_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 9
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 494
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    .line 495
    .local v2, "logicalAddress":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v3

    .line 496
    .local v3, "physicalAddress":I
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 497
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v1, :cond_1

    .line 498
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleNewDeviceAtTheTailOfActivePath(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 499
    const-string/jumbo v4, "Device info %X not found; buffering the command"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v4, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 511
    :cond_0
    :goto_0
    return v8

    .line 502
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInputReady(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 503
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 504
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateDevicePowerStatus(II)V

    .line 505
    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    .line 506
    .local v0, "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    invoke-static {p0, v6}, Lcom/android/server/hdmi/ActiveSourceHandler;->create(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/ActiveSourceHandler;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/android/server/hdmi/ActiveSourceHandler;->process(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    goto :goto_0

    .line 508
    .end local v0    # "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    :cond_3
    const-string/jumbo v4, "Input not ready for device: %X; buffering the command"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v4, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0
.end method

.method protected handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 568
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to respond to <Get Menu Language>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    return v0
.end method

.method protected handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 517
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 521
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v2

    iget v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 522
    return v4

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 525
    return v4

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPrevPortId()I

    move-result v1

    .line 528
    .local v1, "portId":I
    if-eq v1, v5, :cond_4

    .line 531
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 532
    .local v0, "inactiveSource":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_2

    .line 533
    return v4

    .line 535
    :cond_2
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 536
    return v4

    .line 540
    :cond_3
    invoke-virtual {p0, v1, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 541
    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 549
    .end local v0    # "inactiveSource":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_0
    return v4

    .line 545
    :cond_4
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 546
    const v2, 0xffff

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 547
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    sget-object v3, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_0
.end method

.method protected handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1107
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1109
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->canStartArcUpdateAction(IZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1110
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1113
    return v3

    .line 1115
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1116
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToArcPort(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1117
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(I)V

    .line 1119
    :cond_1
    return v3

    .line 1124
    :cond_2
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1125
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 1126
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 1125
    invoke-direct {v0, p0, v1, v3}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 1127
    .local v0, "action":Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1128
    return v3
.end method

.method protected handleMenuStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 1902
    const/4 v0, 0x1

    return v0
.end method

.method protected handleRecordStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 631
    const/4 v0, 0x1

    return v0
.end method

.method protected handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1203
    const-class v5, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 1204
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/OneTouchRecordAction;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1206
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 1207
    .local v0, "action":Lcom/android/server/hdmi/OneTouchRecordAction;
    invoke-virtual {v0}, Lcom/android/server/hdmi/OneTouchRecordAction;->getRecorderAddress()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 1209
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v5

    .line 1210
    const/16 v6, 0x30

    .line 1208
    invoke-virtual {p0, v5, v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1212
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v5

    return v5

    .line 1215
    .end local v0    # "action":Lcom/android/server/hdmi/OneTouchRecordAction;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v4

    .line 1216
    .local v4, "recorderAddress":I
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v4}, Lcom/android/server/hdmi/HdmiControlService;->invokeRecordRequestListener(I)[B

    move-result-object v3

    .line 1217
    .local v3, "recordSource":[B
    invoke-virtual {p0, v4, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startOneTouchRecord(I[B)I

    move-result v2

    .line 1218
    .local v2, "reason":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 1219
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 1221
    :cond_2
    const/4 v5, 0x1

    return v5
.end method

.method handleRemoveActiveRoutingPath(I)V
    .locals 4
    .param p1, "path"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1492
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1494
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isTailOfActivePath(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1495
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v0

    .line 1496
    .local v0, "newPath":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1491
    .end local v0    # "newPath":I
    :cond_0
    return-void
.end method

.method protected handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 723
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 725
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    .line 726
    .local v1, "params":[B
    aget-byte v5, v1, v3

    and-int/lit16 v0, v5, 0x80

    .line 727
    .local v0, "mute":I
    aget-byte v5, v1, v3

    and-int/lit8 v2, v5, 0x7f

    .line 728
    .local v2, "volume":I
    const/16 v5, 0x80

    if-ne v0, v5, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p0, v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    .line 729
    return v4
.end method

.method protected handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 8
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 589
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 590
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v2

    .line 591
    .local v2, "path":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 592
    .local v1, "address":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    const/4 v5, 0x2

    aget-byte v4, v3, v5

    .line 594
    .local v4, "type":I
    invoke-virtual {p0, v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateCecSwitchInfo(III)Z

    move-result v3

    if-eqz v3, :cond_0

    return v7

    .line 597
    :cond_0
    const-class v3, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    const-string/jumbo v3, "HdmiCecLocalDeviceTv"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignored while Device Discovery Action is in progress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return v7

    .line 602
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInDeviceList(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 603
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleNewDeviceAtTheTailOfActivePath(I)Z

    .line 608
    :cond_2
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPortId(I)I

    move-result v3

    .line 609
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v6

    const v5, 0xffffff

    .line 608
    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    .line 610
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 611
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V

    .line 612
    return v7
.end method

.method protected handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 617
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 618
    .local v0, "newStatus":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateDevicePowerStatus(II)V

    .line 619
    const/4 v1, 0x1

    return v1
.end method

.method protected handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 557
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne v0, v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 559
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    .line 558
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 561
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 707
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 709
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    .line 710
    .local v2, "params":[B
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    move-result v0

    .line 711
    .local v0, "currentPath":I
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v3

    invoke-static {v3, v0}, Lcom/android/server/hdmi/HdmiUtils;->isAffectingActiveRoutingPath(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 712
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 713
    const-class v3, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 714
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v1

    .line 715
    .local v1, "newPath":I
    new-instance v3, Lcom/android/server/hdmi/RoutingControlAction;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v5, v4}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 717
    .end local v1    # "newPath":I
    :cond_0
    return v5
.end method

.method protected handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 11
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 761
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v9

    .line 762
    .local v9, "source":I
    invoke-virtual {p0, v9}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v7

    .line 764
    .local v7, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v7, :cond_0

    .line 765
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No source device info for <Set Osd Name>."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    return v10

    .line 768
    :cond_0
    const/4 v6, 0x0

    .line 770
    .local v6, "osdName":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/String;

    .end local v6    # "osdName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    const-string/jumbo v1, "US-ASCII"

    invoke-direct {v6, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    .local v6, "osdName":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignore incoming <Set Osd Name> having same osd name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return v10

    .line 771
    .end local v6    # "osdName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 772
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid <Set Osd Name> request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    return v10

    .line 781
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "osdName":Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 782
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v3

    .line 783
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result v4

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v5

    .line 781
    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 784
    return v10
.end method

.method protected handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1169
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1170
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1177
    :goto_0
    return v3

    .line 1174
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid <Set System Audio Mode> message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_0

    .line 1179
    :cond_1
    const-class v1, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1180
    new-instance v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    .line 1181
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v2

    .line 1180
    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1182
    .local v0, "action":Lcom/android/server/hdmi/SystemAudioActionFromAvr;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1183
    return v3
.end method

.method protected handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1189
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1190
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid <System Audio Mode Status> message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1193
    return v2

    .line 1195
    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    .line 1196
    return v2
.end method

.method protected handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1150
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1151
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    .line 1153
    return v3

    .line 1158
    :cond_0
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1159
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 1160
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 1159
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 1161
    .local v0, "action":Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1162
    return v3
.end method

.method protected handleTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 744
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 747
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 1226
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    .line 1227
    .local v0, "params":[B
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 1228
    .local v1, "timerClearedStatusData":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 1229
    const/4 v2, 0x1

    return v2
.end method

.method protected handleTimerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method hasSystemAudioDevice()Z
    .locals 1

    .prologue
    .line 1418
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getSafeAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isArcEstablished()Z
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 975
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    if-eqz v1, :cond_1

    .line 976
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 977
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 976
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 980
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method isArcFeatureEnabled(I)Z
    .locals 1
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1004
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method isConnected(I)Z
    .locals 1
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 959
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->isConnected(I)Z

    move-result v0

    return v0
.end method

.method isInDeviceList(II)Z
    .locals 3
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1576
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1577
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1578
    .local v0, "device":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_0

    .line 1579
    return v1

    .line 1581
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    if-ne v2, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected isInputReady(I)Z
    .locals 2
    .param p1, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 178
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isPowerStandbyOrTransient()Z
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    return v0
.end method

.method isProhibitMode()Z
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    move-result v0

    return v0
.end method

.method isSystemAudioActivated()Z
    .locals 2

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasSystemAudioDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    const/4 v0, 0x0

    return v0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 893
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 892
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method launchRoutingControl(Z)V
    .locals 4
    .param p1, "routingForBootup"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1510
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1511
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1507
    :cond_0
    :goto_0
    return-void

    .line 1512
    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result v1

    .line 1513
    .local v1, "newPath":I
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePath()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_0

    .line 1517
    .end local v1    # "newPath":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v0

    .line 1518
    .local v0, "activePath":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 1519
    if-nez p1, :cond_0

    .line 1520
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/DelayedMessageBuffer;->isBuffered(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1521
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0
.end method

.method protected onAddressAllocated(II)V
    .locals 9
    .param p1, "logicalAddress"    # I
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 196
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v2

    .line 197
    .local v2, "ports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "port$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 198
    .local v0, "port":Landroid/hardware/hdmi/HdmiPortInfo;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v6

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 200
    .end local v0    # "port":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Landroid/media/tv/TvInputManager$TvInputCallback;

    invoke-virtual {v3, v6}, Lcom/android/server/hdmi/HdmiControlService;->registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 201
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 202
    iget v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v7

    iget v8, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceType:I

    .line 201
    invoke-static {v6, v7, v8}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 203
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 204
    iget v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    iget-object v7, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v7

    .line 203
    invoke-static {v6, v7}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 205
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 207
    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 208
    if-eqz p2, :cond_1

    .line 209
    if-eq p2, v4, :cond_1

    move v5, v4

    .line 208
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchRoutingControl(Z)V

    .line 210
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->initLocalDeviceAddresses()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLocalDeviceAddresses:Ljava/util/List;

    .line 211
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->resetSelectRequestBuffer()V

    .line 212
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchDeviceDiscovery()V

    .line 194
    return-void

    :cond_2
    move v3, v5

    .line 207
    goto :goto_1
.end method

.method onHotplug(IZ)V
    .locals 2
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1587
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1589
    if-nez p2, :cond_0

    .line 1590
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeCecSwitches(I)V

    .line 1593
    :cond_0
    const-class v1, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1594
    .local v0, "hotplugActions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HotplugDetectionAction;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1598
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevicesNow()V

    .line 1600
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateArcFeatureStatus(IZ)V

    .line 1586
    return-void
.end method

.method onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 2
    .param p1, "avr"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 829
    new-instance v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 830
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    const-class v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(Z)V

    goto :goto_0
.end method

.method protected onStandby(ZI)V
    .locals 3
    .param p1, "initiatedByCec"    # Z
    .param p2, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1691
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1693
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1694
    return-void

    .line 1696
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    if-eqz v0, :cond_1

    .line 1697
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1698
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    const/16 v2, 0xf

    .line 1697
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1690
    :cond_1
    return-void
.end method

.method processAllDelayedMessages()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1917
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1918
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processAllMessages()V

    .line 1916
    return-void
.end method

.method processDelayedActiveSource(I)V
    .locals 1
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1929
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1930
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processActiveSource(I)V

    .line 1928
    return-void
.end method

.method processDelayedMessages(I)V
    .locals 1
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1923
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1924
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->processMessagesForDevice(I)V

    .line 1922
    return-void
.end method

.method final removeCecDevice(I)V
    .locals 2
    .param p1, "address"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1483
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1484
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1486
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->flushMessagesFrom(I)V

    .line 1487
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1482
    return-void
.end method

.method protected sendKeyEvent(IZ)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "isPressed"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 445
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isSupportedKeycode(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    const-string/jumbo v2, "HdmiCecLocalDeviceTv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void

    .line 449
    :cond_0
    const-class v2, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 450
    .local v0, "action":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/SendKeyAction;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->findKeyReceiverAddress()I

    move-result v1

    .line 451
    .local v1, "logicalAddress":I
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    if-ne v1, v2, :cond_1

    .line 452
    const-string/jumbo v2, "HdmiCecLocalDeviceTv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Discard key event to itself :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pressed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void

    .line 455
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 456
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/hdmi/SendKeyAction;->processKeyEvent(IZ)V

    .line 443
    :goto_0
    return-void

    .line 458
    :cond_2
    if-eqz p2, :cond_3

    .line 459
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 460
    new-instance v2, Lcom/android/server/hdmi/SendKeyAction;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/hdmi/SendKeyAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 461
    return-void

    .line 464
    :cond_3
    const-string/jumbo v2, "HdmiCecLocalDeviceTv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Discard key event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pressed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendStandby(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .prologue
    .line 1907
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1908
    .local v1, "targetDevice":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v1, :cond_0

    .line 1909
    return-void

    .line 1911
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 1912
    .local v0, "targetAddress":I
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v3, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1906
    return-void
.end method

.method setArcStatus(Z)Z
    .locals 5
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 910
    const-string/jumbo v1, "Set Arc Status[old:%b new:%b]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 913
    .local v0, "oldStatus":Z
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioReturnChannel(Z)V

    .line 915
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->notifyArcStatusToAudioService(Z)V

    .line 917
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 918
    return v0
.end method

.method setAudioReturnChannel(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 927
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 928
    .local v0, "avr":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v0, :cond_0

    .line 929
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->setAudioReturnChannel(IZ)V

    .line 925
    :cond_0
    return-void
.end method

.method setAudioStatus(ZI)V
    .locals 4
    .param p1, "mute"    # Z
    .param p2, "volume"    # I

    .prologue
    .line 1042
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1043
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    .line 1044
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    .line 1045
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    .line 1046
    const/4 v3, 0x3

    .line 1045
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 1047
    .local v0, "maxVolume":I
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1048
    invoke-static {p2, v0}, Lcom/android/server/hdmi/VolumeControlAction;->scaleToCustomVolume(II)I

    move-result v3

    .line 1047
    invoke-virtual {v1, p1, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAudioStatus(ZI)V

    .line 1050
    if-eqz p1, :cond_0

    const/16 p2, 0x65

    .line 1049
    .end local p2    # "volume":I
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1041
    return-void

    .line 1042
    .end local v0    # "maxVolume":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method setAutoDeviceOff(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1616
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1617
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoDeviceOff:Z

    .line 1615
    return-void
.end method

.method setAutoWakeup(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1623
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAutoWakeup:Z

    .line 1621
    return-void
.end method

.method protected setPreferredAddress(I)V
    .locals 2
    .param p1, "addr"    # I

    .prologue
    .line 246
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    const-string/jumbo v1, "Preferred addres will not be stored for TV"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method setPrevPortId(I)V
    .locals 2
    .param p1, "portId"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 357
    return-void

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setSelectRequestBuffer(Lcom/android/server/hdmi/SelectRequestBuffer;)V
    .locals 0
    .param p1, "requestBuffer"    # Lcom/android/server/hdmi/SelectRequestBuffer;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 230
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 228
    return-void
.end method

.method setSystemAudioMode(ZZ)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "updateSetting"    # Z

    .prologue
    .line 869
    const-string/jumbo v0, "System Audio Mode change[old:%b new:%b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    if-eqz p2, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const-string/jumbo v1, "hdmi_system_audio_enabled"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->writeBooleanSetting(Ljava/lang/String;Z)V

    .line 874
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateAudioManagerForSystemAudio(Z)V

    .line 875
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 876
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    if-eq v0, p1, :cond_1

    .line 877
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioActivated:Z

    .line 878
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceSystemAudioModeChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 868
    return-void

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method startArcAction(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1011
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_0

    .line 1012
    const-string/jumbo v1, "HdmiCecLocalDeviceTv"

    const-string/jumbo v2, "Failed to start arc action; No AVR device."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return-void

    .line 1015
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->canStartArcUpdateAction(IZ)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1016
    const-string/jumbo v1, "HdmiCecLocalDeviceTv"

    const-string/jumbo v2, "Failed to start arc action; ARC configuration check failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isConnectedToArcPort(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1020
    :cond_1
    :goto_0
    return-void

    .line 1018
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->displayOsd(I)V

    goto :goto_0

    .line 1024
    :cond_3
    if-eqz p1, :cond_5

    .line 1025
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1026
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1027
    new-instance v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/RequestArcInitiationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1008
    :cond_4
    :goto_1
    return-void

    .line 1030
    :cond_5
    const-class v1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1031
    const-class v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasAction(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1032
    new-instance v1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_1
.end method

.method startNewDeviceAction(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;I)V
    .locals 5
    .param p1, "activeSource"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .param p2, "deviceType"    # I

    .prologue
    .line 648
    const-class v2, Lcom/android/server/hdmi/NewDeviceAction;

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActions(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "action$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/NewDeviceAction;

    .line 657
    .local v0, "action":Lcom/android/server/hdmi/NewDeviceAction;
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/NewDeviceAction;->isActionOf(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    return-void

    .line 662
    .end local v0    # "action":Lcom/android/server/hdmi/NewDeviceAction;
    :cond_1
    new-instance v2, Lcom/android/server/hdmi/NewDeviceAction;

    iget v3, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 663
    iget v4, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 662
    invoke-direct {v2, p0, v3, v4, p2}, Lcom/android/server/hdmi/NewDeviceAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 647
    return-void
.end method

.method startOneTouchRecord(I[B)I
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "recordSource"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1725
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1726
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1727
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    const-string/jumbo v1, "Can not start one touch record. CEC control is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const/16 v0, 0x33

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1729
    return v3

    .line 1732
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1733
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid recorder address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/16 v0, 0x31

    .line 1734
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1736
    return v3

    .line 1739
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecordSource([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1740
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid record source."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    const/16 v0, 0x32

    .line 1741
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1743
    const/4 v0, 0x2

    return v0

    .line 1746
    :cond_2
    new-instance v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchRecordAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I[B)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1747
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start new [One Touch Record]-Target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", recordSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1748
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    .line 1747
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    const/4 v0, -0x1

    return v0
.end method

.method startRoutingControl(IIZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2
    .param p1, "oldPath"    # I
    .param p2, "newPath"    # I
    .param p3, "queryDevicePowerStatus"    # Z
    .param p4, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 418
    if-ne p1, p2, :cond_0

    .line 419
    return-void

    .line 422
    :cond_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 423
    .local v0, "routingChange":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 424
    const-class v1, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 426
    new-instance v1, Lcom/android/server/hdmi/RoutingControlAction;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 425
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 416
    return-void
.end method

.method startTimerRecording(II[B)V
    .locals 3
    .param p1, "recorderAddress"    # I
    .param p2, "sourceType"    # I
    .param p3, "recordSource"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1787
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1788
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1789
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    const-string/jumbo v1, "Can not start one touch record. CEC control is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    const/4 v0, 0x3

    .line 1790
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 1792
    return-void

    .line 1795
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1796
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid recorder address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    const/4 v0, 0x1

    .line 1797
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 1799
    return-void

    .line 1802
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkTimerRecordingSource(I[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1803
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid record source."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    const/4 v0, 0x2

    .line 1804
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 1807
    return-void

    .line 1811
    :cond_2
    new-instance v0, Lcom/android/server/hdmi/TimerRecordingAction;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/TimerRecordingAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II[B)V

    .line 1810
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 1812
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start [Timer Recording]-Target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", SourceType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1813
    const-string/jumbo v2, ", RecordSource:"

    .line 1812
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1813
    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    .line 1812
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    return-void
.end method

.method stopOneTouchRecord(I)V
    .locals 3
    .param p1, "recorderAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1754
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 1755
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1756
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    const-string/jumbo v1, "Can not stop one touch record. CEC control is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    const/16 v0, 0x33

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1758
    return-void

    .line 1761
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1762
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid recorder address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const/16 v0, 0x31

    .line 1763
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 1765
    return-void

    .line 1769
    :cond_1
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->removeAction(Ljava/lang/Class;)V

    .line 1770
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 1771
    const-string/jumbo v0, "HdmiCecLocalDeviceTv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stop [One Touch Record]-Target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    return-void
.end method

.method updateActiveInput(IZ)V
    .locals 4
    .param p1, "path"    # I
    .param p2, "notifyInputChange"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    .line 370
    if-eqz p2, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    .line 372
    .local v0, "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 373
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v1, :cond_0

    .line 374
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 375
    if-nez v1, :cond_0

    .line 378
    new-instance v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    .line 381
    .restart local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 364
    .end local v0    # "activeSource":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_1
    return-void
.end method

.method updateActiveSource(II)V
    .locals 1
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 317
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 315
    return-void
.end method

.method updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V
    .locals 3
    .param p1, "newActive"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->assertRunOnServiceThread()V

    .line 324
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)V

    .line 328
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 329
    .local v0, "logicalAddress":I
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mAddress:I

    if-eq v0, v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 321
    :cond_1
    return-void
.end method

.method updateCecSwitchInfo(III)Z
    .locals 2
    .param p1, "address"    # I
    .param p2, "type"    # I
    .param p3, "path"    # I

    .prologue
    .line 635
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 636
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateSafeDeviceInfoList()V

    .line 639
    const/4 v0, 0x1

    return v0

    .line 641
    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mCecSwitches:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method updateDevicePowerStatus(II)V
    .locals 5
    .param p1, "logicalAddress"    # I
    .param p2, "newPowerStatus"    # I

    .prologue
    .line 1882
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 1883
    .local v0, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-nez v0, :cond_0

    .line 1884
    const-string/jumbo v2, "HdmiCecLocalDeviceTv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can not update power status of non-existing device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    return-void

    .line 1888
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 1889
    return-void

    .line 1892
    :cond_1
    invoke-static {v0, p2}, Lcom/android/server/hdmi/HdmiUtils;->cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 1894
    .local v1, "newInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1896
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1881
    return-void
.end method
