.class public final Lcom/android/server/twilight/TwilightState;
.super Ljava/lang/Object;
.source "TwilightState.java"


# instance fields
.field private final mSunriseTimeMillis:J

.field private final mSunsetTimeMillis:J


# direct methods
.method constructor <init>(JJ)V
    .locals 1
    .param p1, "sunriseTimeMillis"    # J
    .param p3, "sunsetTimeMillis"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    .line 36
    iput-wide p3, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/twilight/TwilightState;)Z
    .locals 6
    .param p1, "other"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v0, 0x0

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    iget-wide v4, p1, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 89
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    iget-wide v4, p1, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 87
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 83
    instance-of v0, p1, Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/twilight/TwilightState;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/twilight/TwilightState;->equals(Lcom/android/server/twilight/TwilightState;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isNight()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 78
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public sunrise()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 52
    .local v0, "sunrise":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 53
    return-object v0
.end method

.method public sunriseTimeMillis()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    return-wide v0
.end method

.method public sunset()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    .local v0, "sunset":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 70
    return-object v0
.end method

.method public sunsetTimeMillis()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TwilightState { sunrise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "MM-dd HH:mm"

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string/jumbo v1, " sunset="

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string/jumbo v1, "MM-dd HH:mm"

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    const-string/jumbo v1, " }"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
