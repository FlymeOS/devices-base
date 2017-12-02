.class public Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;
.super Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;
.source "SelectRequestBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/SelectRequestBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceSelectRequest"
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p1, "srv"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "id"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;-><init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;)V
    .locals 0
    .param p1, "srv"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "id"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;-><init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;->isLocalDeviceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string/jumbo v0, "SelectRequestBuffer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "calling delayed deviceSelect id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;->mId:I

    iget-object v2, p0, Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 91
    :cond_0
    return-void
.end method
