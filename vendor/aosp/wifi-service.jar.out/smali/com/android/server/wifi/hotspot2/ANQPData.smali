.class public Lcom/android/server/wifi/hotspot2/ANQPData;
.super Ljava/lang/Object;
.source "ANQPData.java"


# static fields
.field private static final ANQP_HOLDOFF_TIME:J = 0x2710L

.field private static final ANQP_QUALIFIED_CACHE_TIMEOUT:J = 0x36ee80L

.field private static final ANQP_UNQUALIFIED_CACHE_TIMEOUT:J = 0x493e0L

.field private static final MAX_RETRY:I = 0x6


# instance fields
.field private final mANQPElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mCtime:J

.field private final mExpiry:J

.field private final mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

.field private final mRetry:I


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/hotspot2/NetworkDetail;Lcom/android/server/wifi/hotspot2/ANQPData;)V
    .locals 4
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;
    .param p2, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p3, "existing"    # Lcom/android/server/wifi/hotspot2/ANQPData;

    .prologue
    const-wide/16 v2, 0x2710

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    .line 64
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 65
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    .line 67
    if-nez p3, :cond_0

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    .line 69
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    .line 62
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-direct {p3}, Lcom/android/server/wifi/hotspot2/ANQPData;->getRetry()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    .line 73
    iget v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 4
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;
    .param p2, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/Clock;",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    .line 47
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .line 48
    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :cond_0
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    .line 50
    iput v2, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    .line 51
    if-nez p3, :cond_1

    .line 52
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    .line 44
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v0

    if-nez v0, :cond_2

    .line 55
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    goto :goto_0

    .line 58
    :cond_2
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    goto :goto_0
.end method

.method private getRetry()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    return v0
.end method


# virtual methods
.method public disjoint(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    const/4 v3, 0x0

    .line 78
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 81
    return-object v3

    .line 84
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "additions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "element$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .line 86
    .local v1, "element":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v1    # "element":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v3

    .end local v0    # "additions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    :cond_3
    return-object v0
.end method

.method public expired()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    move-result v0

    return v0
.end method

.method public expired(J)Z
    .locals 3
    .param p1, "at"    # J

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getANQPElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    return-object v0
.end method

.method protected hasData()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValid(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z
    .locals 6
    .param p1, "nwk"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 123
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 121
    :cond_0
    return v0
.end method

.method protected merge(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 114
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 8
    .param p1, "brief"    # Z

    .prologue
    const/16 v4, 0x2d

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toKeyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", domid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 134
    const-string/jumbo v3, ", unresolved, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 140
    .local v0, "now":J
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " old, expires in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 141
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 141
    const/16 v5, 0x20

    .line 140
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    if-eqz p1, :cond_4

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x78

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    if-nez v3, :cond_0

    const/16 v4, 0x75

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 137
    .end local v0    # "now":J
    :cond_2
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " elements, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .restart local v0    # "now":J
    :cond_3
    move v3, v4

    .line 143
    goto :goto_1

    .line 146
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 147
    const-string/jumbo v3, " data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
