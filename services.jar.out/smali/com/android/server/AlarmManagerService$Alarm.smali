.class Lcom/android/server/AlarmManagerService$Alarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Alarm"
.end annotation


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public final creatorUid:I

.field public final flags:I

.field public final listener:Landroid/app/IAlarmListener;

.field public final listenerTag:Ljava/lang/String;

.field public maxWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public final origWhen:J

.field public final packageName:Ljava/lang/String;

.field public priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

.field public repeatInterval:J

.field public final statsTag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public when:J

.field public whenElapsed:J

.field public windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .locals 2
    .param p1, "_type"    # I
    .param p2, "_when"    # J
    .param p4, "_whenElapsed"    # J
    .param p6, "_windowLength"    # J
    .param p8, "_maxWhen"    # J
    .param p10, "_interval"    # J
    .param p12, "_op"    # Landroid/app/PendingIntent;
    .param p13, "_rec"    # Landroid/app/IAlarmListener;
    .param p14, "_listenerTag"    # Ljava/lang/String;
    .param p15, "_ws"    # Landroid/os/WorkSource;
    .param p16, "_flags"    # I
    .param p17, "_info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p18, "_uid"    # I
    .param p19, "_pkgName"    # Ljava/lang/String;

    .prologue
    .line 2246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2250
    iput p1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 2251
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 2252
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 2253
    if-nez p1, :cond_1

    const/4 v1, 0x1

    .line 2252
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    .line 2254
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2255
    iput-wide p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2256
    iput-wide p6, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 2257
    iput-wide p8, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2258
    iput-wide p10, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 2259
    iput-object p12, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 2260
    iput-object p13, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    .line 2261
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    .line 2262
    move-object/from16 v0, p14

    invoke-static {p12, v0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    .line 2263
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 2264
    move/from16 v0, p16

    iput v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    .line 2265
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2266
    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    .line 2267
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    .line 2269
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 2249
    return-void

    .line 2252
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 2253
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2269
    :cond_2
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    goto :goto_1
.end method

.method public static makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 2273
    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_1

    .line 2274
    :cond_0
    const-string/jumbo v0, "*walarm*:"

    .line 2275
    .local v0, "alarmString":Ljava/lang/String;
    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 2274
    .end local v0    # "alarmString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "*alarm*:"

    .restart local v0    # "alarmString":Ljava/lang/String;
    goto :goto_0

    .line 2275
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowRTC"    # J
    .param p5, "nowELAPSED"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 2319
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 2320
    .local v0, "isRtc":Z
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "tag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "type="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2322
    const-string/jumbo v1, " whenElapsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-static {v2, v3, p5, p6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2324
    const-string/jumbo v1, " when="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2325
    if-eqz v0, :cond_4

    .line 2326
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2330
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2331
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "window="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2332
    const-string/jumbo v1, " repeatInterval="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2333
    const-string/jumbo v1, " count="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2334
    const-string/jumbo v1, " flags=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2335
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_1

    .line 2336
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Alarm clock:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2337
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "  triggerTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2338
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2339
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "  showIntent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2341
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "operation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2342
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v1, :cond_2

    .line 2343
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "listener="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2318
    :cond_2
    return-void

    .line 2319
    .end local v0    # "isRtc":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isRtc":Z
    goto/16 :goto_0

    .line 2328
    :cond_4
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v2, v3, p5, p6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_1
.end method

.method public makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;
    .locals 5
    .param p1, "nowRTC"    # J

    .prologue
    .line 2279
    new-instance v1, Lcom/android/server/AlarmManagerService$WakeupEvent;

    iget v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 2280
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2279
    :goto_0
    invoke-direct {v1, p1, p2, v2, v0}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(JILjava/lang/String;)V

    return-object v1

    .line 2282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<listener>:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "rec"    # Landroid/app/IAlarmListener;

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2287
    :goto_0
    return v0

    .line 2289
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2294
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2293
    :goto_0
    return v0

    .line 2295
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2300
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2301
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2302
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2303
    const-string/jumbo v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2304
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2305
    const-string/jumbo v1, " when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2306
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2307
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2308
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 2309
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    :goto_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2311
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
