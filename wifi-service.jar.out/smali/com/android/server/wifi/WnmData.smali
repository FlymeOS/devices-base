.class public Lcom/android/server/wifi/WnmData;
.super Ljava/lang/Object;
.source "WnmData.java"


# static fields
.field private static final ESS:I = 0x1


# instance fields
.field private final mBssid:J

.field private final mDeauthEvent:Z

.field private final mDelay:I

.field private final mEss:Z

.field private final mMethod:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;I)V
    .locals 3
    .param p1, "bssid"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "method"    # I

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Lcom/android/server/wifi/WnmData;->mBssid:J

    .line 73
    iput-object p3, p0, Lcom/android/server/wifi/WnmData;->mUrl:Ljava/lang/String;

    .line 74
    iput p4, p0, Lcom/android/server/wifi/WnmData;->mMethod:I

    .line 75
    iput-boolean v1, p0, Lcom/android/server/wifi/WnmData;->mEss:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WnmData;->mDelay:I

    .line 77
    iput-boolean v1, p0, Lcom/android/server/wifi/WnmData;->mDeauthEvent:Z

    .line 71
    return-void
.end method

.method private constructor <init>(JLjava/lang/String;ZI)V
    .locals 1
    .param p1, "bssid"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "ess"    # Z
    .param p5, "delay"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide p1, p0, Lcom/android/server/wifi/WnmData;->mBssid:J

    .line 82
    iput-object p3, p0, Lcom/android/server/wifi/WnmData;->mUrl:Ljava/lang/String;

    .line 83
    iput-boolean p4, p0, Lcom/android/server/wifi/WnmData;->mEss:Z

    .line 84
    iput p5, p0, Lcom/android/server/wifi/WnmData;->mDelay:I

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WnmData;->mMethod:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WnmData;->mDeauthEvent:Z

    .line 80
    return-void
.end method

.method public static buildWnmData(Ljava/lang/String;)Lcom/android/server/wifi/WnmData;
    .locals 10
    .param p0, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 39
    const-string/jumbo v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, "segments":[Ljava/lang/String;
    array-length v1, v7

    if-ge v1, v8, :cond_0

    .line 41
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Short event"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    aget-object v1, v7, v5

    const-string/jumbo v2, "HS20-SUBSCRIPTION-REMEDIATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    array-length v1, v7

    if-eq v1, v4, :cond_2

    .line 47
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Expected 4 segments"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_1
    const-string/jumbo v2, "HS20-DEAUTH-IMMINENT-NOTICE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 54
    array-length v1, v7

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    .line 55
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Expected 5 segments"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_2
    new-instance v1, Lcom/android/server/wifi/WnmData;

    aget-object v2, v7, v6

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 50
    aget-object v4, v7, v9

    .line 51
    aget-object v5, v7, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 49
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/WnmData;-><init>(JLjava/lang/String;I)V

    return-object v1

    .line 57
    :cond_3
    aget-object v1, v7, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "codeID":I
    if-ltz v0, :cond_4

    if-le v0, v5, :cond_5

    .line 59
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unknown code"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_5
    new-instance v1, Lcom/android/server/wifi/WnmData;

    aget-object v2, v7, v6

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 62
    aget-object v4, v7, v4

    .line 63
    if-ne v0, v5, :cond_6

    .line 64
    :goto_0
    aget-object v6, v7, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 61
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WnmData;-><init>(JLjava/lang/String;ZI)V

    return-object v1

    :cond_6
    move v5, v6

    .line 63
    goto :goto_0

    .line 67
    .end local v0    # "codeID":I
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unknown event type"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getBssid()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/server/wifi/WnmData;->mBssid:J

    return-wide v0
.end method

.method public getDelay()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/wifi/WnmData;->mDelay:I

    return v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/wifi/WnmData;->mMethod:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/WnmData;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDeauthEvent()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/wifi/WnmData;->mDeauthEvent:Z

    return v0
.end method

.method public isEss()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/server/wifi/WnmData;->mEss:Z

    return v0
.end method
