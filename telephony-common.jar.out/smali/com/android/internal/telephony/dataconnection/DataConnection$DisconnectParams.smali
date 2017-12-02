.class public Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisconnectParams"
.end annotation


# instance fields
.field public mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

.field mOnCompletedMsg:Landroid/os/Message;

.field mReason:Ljava/lang/String;

.field mTag:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 137
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 135
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mApnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    const-string/jumbo v1, " mReason="

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    const-string/jumbo v1, " mOnCompletedMsg="

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap6(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "}"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
