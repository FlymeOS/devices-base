.class public Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataAllowFailReason"
.end annotation


# instance fields
.field private mDataAllowFailReasonSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    .line 164
    return-void
.end method


# virtual methods
.method public addDataAllowFailReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)V
    .locals 1
    .param p1, "type"    # Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public clearAllReasons()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 185
    return-void
.end method

.method public getDataAllowFailReason()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "failureReason":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "isDataAllowed: No"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "reason$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    .line 175
    .local v1, "reason":Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;
    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->mFailReasonStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 177
    .end local v1    # "reason":Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public isFailForSingleReason(Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;)Z
    .locals 2
    .param p1, "failReasonType"    # Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
