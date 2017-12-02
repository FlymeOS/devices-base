.class public Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
.super Ljava/lang/Object;
.source "TelephonyEventBuilder.java"


# instance fields
.field private final mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    .line 38
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setPhoneId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 42
    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    return-object v0
.end method

.method public setDataCalls([Lcom/android/internal/telephony/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "dataCalls"    # [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 104
    return-object p0
.end method

.method public setDataStallRecoveryAction(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setDataStallAction(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 74
    return-object p0
.end method

.method public setDeactivateDataCall(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 92
    return-object p0
.end method

.method public setDeactivateDataCallResponse(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "errno"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setError(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 98
    return-object p0
.end method

.method public setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "capabilities"    # Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 68
    return-object p0
.end method

.method public setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 62
    return-object p0
.end method

.method public setNITZ(J)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setNitzTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 110
    return-object p0
.end method

.method public setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 56
    return-object p0
.end method

.method public setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "settings"    # Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 50
    return-object p0
.end method

.method public setSetupDataCall(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 80
    return-object p0
.end method

.method public setSetupDataCallResponse(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "rsp"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 86
    return-object p0
.end method
