.class public Lcom/android/internal/telephony/gsm/SsData;
.super Ljava/lang/Object;
.source "SsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SsData$RequestType;,
        Lcom/android/internal/telephony/gsm/SsData$ServiceType;,
        Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
    }
.end annotation


# instance fields
.field public cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

.field public requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public result:I

.field public serviceClass:I

.field public serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public ssInfo:[I

.field public teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public RequestTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->values()[Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object v1

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v1, "GsmCdmaPhone"

    const-string/jumbo v2, "Invalid Request type"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x0

    return-object v1
.end method

.method public ServiceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 123
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->values()[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object v1

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v1, "GsmCdmaPhone"

    const-string/jumbo v2, "Invalid Service type"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v1, 0x0

    return-object v1
.end method

.method public TeleserviceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->values()[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    move-result-object v1

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v1, "GsmCdmaPhone"

    const-string/jumbo v2, "Invalid Teleservice type"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[SsData] ServiceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    const-string/jumbo v1, " RequestType: "

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    const-string/jumbo v1, " TeleserviceType: "

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SsData;->teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    const-string/jumbo v1, " ServiceClass: "

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    iget v1, p0, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    const-string/jumbo v1, " Result: "

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    iget v1, p0, Lcom/android/internal/telephony/gsm/SsData;->result:I

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    const-string/jumbo v1, " Is Service Type CF: "

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
