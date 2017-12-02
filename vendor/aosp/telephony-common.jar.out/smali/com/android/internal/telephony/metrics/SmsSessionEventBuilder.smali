.class public Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
.super Ljava/lang/Object;
.source "SmsSessionEventBuilder.java"


# instance fields
.field mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 34
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setType(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 33
    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    return-object v0
.end method

.method public setDataCalls([Lcom/android/internal/telephony/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "dataCalls"    # [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 79
    return-object p0
.end method

.method public setDelay(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "delay"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setDelay(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 39
    return-object p0
.end method

.method public setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setErrorCode(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 49
    return-object p0
.end method

.method public setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setFormat(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 89
    return-object p0
.end method

.method public setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "capabilities"    # Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 74
    return-object p0
.end method

.method public setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 69
    return-object p0
.end method

.method public setRilErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "errno"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setError(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 54
    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setRilRequestId(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 84
    return-object p0
.end method

.method public setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 64
    return-object p0
.end method

.method public setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "settings"    # Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 59
    return-object p0
.end method

.method public setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "tech"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->setTech(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 44
    return-object p0
.end method
