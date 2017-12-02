.class public Lcom/android/server/notification/ScheduleCalendar;
.super Ljava/lang/Object;
.source "ScheduleCalendar.java"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mDays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    .line 26
    return-void
.end method

.method private addDays(JI)J
    .locals 3
    .param p1, "time"    # J
    .param p3, "days"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 118
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 119
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getDayOfWeek(J)I
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 104
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private getNextTime(JII)J
    .locals 3
    .param p1, "now"    # J
    .param p3, "hr"    # I
    .param p4, "min"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v0

    .line 66
    .local v0, "time":J
    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide v0

    .end local v0    # "time":J
    :cond_0
    return-wide v0
.end method

.method private getTime(JII)J
    .locals 3
    .param p1, "millis"    # J
    .param p3, "hour"    # I
    .param p4, "min"    # I

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 71
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 72
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 73
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 74
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 75
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private isInSchedule(IJJJ)Z
    .locals 6
    .param p1, "daysOffset"    # I
    .param p2, "time"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .prologue
    const/4 v2, 0x0

    .line 95
    const/4 v1, 0x7

    .line 96
    .local v1, "n":I
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/ScheduleCalendar;->getDayOfWeek(J)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v4, p1, 0x7

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x7

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v0, v3, 0x1

    .line 97
    .local v0, "day":I
    invoke-direct {p0, p4, p5, p1}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide p4

    .line 98
    invoke-direct {p0, p6, p7, p1}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide p6

    .line 99
    iget-object v3, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    cmp-long v3, p2, p4

    if-ltz v3, :cond_0

    cmp-long v3, p2, p6

    if-gez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private updateDays()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 109
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_0

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getNextChangeTime(J)J
    .locals 9
    .param p1, "now"    # J

    .prologue
    .line 56
    iget-object v6, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    return-wide v6

    .line 57
    :cond_0
    iget-object v6, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v6, v6, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v7, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v7, v7, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, p1, p2, v6, v7}, Lcom/android/server/notification/ScheduleCalendar;->getNextTime(JII)J

    move-result-wide v4

    .line 58
    .local v4, "nextStart":J
    iget-object v6, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v6, v6, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v7, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v7, v7, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {p0, p1, p2, v6, v7}, Lcom/android/server/notification/ScheduleCalendar;->getNextTime(JII)J

    move-result-wide v0

    .line 59
    .local v0, "nextEnd":J
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 61
    .local v2, "nextScheduleTime":J
    return-wide v2
.end method

.method public isInSchedule(J)Z
    .locals 11
    .param p1, "time"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 79
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v9

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v4

    .line 81
    .local v4, "start":J
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/notification/ScheduleCalendar;->getTime(JII)J

    move-result-wide v6

    .line 82
    .local v6, "end":J
    cmp-long v0, v6, v4

    if-gtz v0, :cond_2

    .line 83
    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/notification/ScheduleCalendar;->addDays(JI)J

    move-result-wide v6

    .line 85
    :cond_2
    const/4 v1, -0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    move v1, v9

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/ScheduleCalendar;->isInSchedule(IJJJ)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    move v0, v8

    goto :goto_0
.end method

.method public maybeSetNextAlarm(JJ)V
    .locals 3
    .param p1, "now"    # J
    .param p3, "nextAlarm"    # J

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iput-wide p3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    .line 43
    :cond_0
    return-void
.end method

.method public setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V
    .locals 1
    .param p1, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 40
    invoke-direct {p0}, Lcom/android/server/notification/ScheduleCalendar;->updateDays()V

    .line 37
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/notification/ScheduleCalendar;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 51
    return-void
.end method

.method public shouldExitForAlarm(J)Z
    .locals 7
    .param p1, "time"    # J

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-wide v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->nextAlarm:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 89
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ScheduleCalendar[mDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSchedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ScheduleCalendar;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
