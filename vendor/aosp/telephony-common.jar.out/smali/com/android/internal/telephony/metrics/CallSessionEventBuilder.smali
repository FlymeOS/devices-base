.class public Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
.super Ljava/lang/Object;
.source "CallSessionEventBuilder.java"


# instance fields
.field private final mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 35
    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    return-object v0
.end method

.method public setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "callIndex"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setCallIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 61
    return-object p0
.end method

.method public setCallState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setCallState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 66
    return-object p0
.end method

.method public setDataCalls([Lcom/android/internal/telephony/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "dataCalls"    # [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 116
    return-object p0
.end method

.method public setDelay(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "delay"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setDelay(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 41
    return-object p0
.end method

.method public setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "capabilities"    # Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 111
    return-object p0
.end method

.method public setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "imsCommand"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setImsCommand(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 76
    return-object p0
.end method

.method public setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 106
    return-object p0
.end method

.method public setImsReasonInfo(Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "reasonInfo"    # Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    .line 81
    return-object p0
.end method

.method public setNITZ(J)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setNitzTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 126
    return-object p0
.end method

.method public setPhoneState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "phoneState"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setPhoneState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 121
    return-object p0
.end method

.method public setRilCalls([Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "rilCalls"    # [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 131
    return-object p0
.end method

.method public setRilError(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "rilError"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setError(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 56
    return-object p0
.end method

.method public setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "rilRequestType"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setRilRequest(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 46
    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "rilRequestId"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setRilRequestId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 51
    return-object p0
.end method

.method public setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 101
    return-object p0
.end method

.method public setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "settings"    # Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 96
    return-object p0
.end method

.method public setSrcAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "tech"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setSrcAccessTech(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 86
    return-object p0
.end method

.method public setSrvccState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "srvccState"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setSrvccState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 71
    return-object p0
.end method

.method public setTargetAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "tech"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->setTargetAccessTech(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    .line 91
    return-object p0
.end method
