.class public Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
.super Ljava/lang/Object;
.source "NetworkAgentInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkAgentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LingerTimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;",
        ">;"
    }
.end annotation


# instance fields
.field public final expiryMs:J

.field public final request:Landroid/net/NetworkRequest;


# direct methods
.method public constructor <init>(Landroid/net/NetworkRequest;J)V
    .locals 0
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "expiryMs"    # J

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    .line 169
    iput-wide p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    .line 167
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;)I
    .locals 4
    .param p1, "other"    # Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    iget-wide v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 181
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    iget-wide v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 180
    :goto_0
    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->compareTo(Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 172
    instance-of v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 173
    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    .line 174
    .local v0, "other":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    iget-wide v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 177
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 185
    const-string/jumbo v0, "%s, expires %dms"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 186
    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 185
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
