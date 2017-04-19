.class public Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
.super Ljava/lang/Object;
.source "DcSwitchAsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestInfo"
.end annotation


# instance fields
.field executedPhoneId:I

.field final priority:I

.field final request:Landroid/net/NetworkRequest;

.field private final requestLog:Landroid/util/LocalLog;


# direct methods
.method public constructor <init>(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)V
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "priority"    # I
    .param p3, "l"    # Landroid/util/LocalLog;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    .line 75
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    .line 76
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->requestLog:Landroid/util/LocalLog;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executedPhoneId:I

    .line 73
    return-void
.end method


# virtual methods
.method public getLog()Landroid/util/LocalLog;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->requestLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->requestLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", executedPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executedPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string/jumbo v1, ", priority="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "]"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
