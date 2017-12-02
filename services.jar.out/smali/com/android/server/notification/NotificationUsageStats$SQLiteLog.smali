.class Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SQLiteLog"
.end annotation


# static fields
.field private static final COL_ACTION_COUNT:Ljava/lang/String; = "action_count"

.field private static final COL_AIRTIME_EXPANDED_MS:Ljava/lang/String; = "expansion_airtime_ms"

.field private static final COL_AIRTIME_MS:Ljava/lang/String; = "airtime_ms"

.field private static final COL_CATEGORY:Ljava/lang/String; = "category"

.field private static final COL_DEFAULTS:Ljava/lang/String; = "defaults"

.field private static final COL_DEMOTED:Ljava/lang/String; = "demoted"

.field private static final COL_EVENT_TIME:Ljava/lang/String; = "event_time_ms"

.field private static final COL_EVENT_TYPE:Ljava/lang/String; = "event_type"

.field private static final COL_EVENT_USER_ID:Ljava/lang/String; = "event_user_id"

.field private static final COL_EXPAND_COUNT:Ljava/lang/String; = "expansion_count"

.field private static final COL_FIRST_EXPANSIONTIME_MS:Ljava/lang/String; = "first_expansion_time_ms"

.field private static final COL_FLAGS:Ljava/lang/String; = "flags"

.field private static final COL_IMPORTANCE_FINAL:Ljava/lang/String; = "importance_final"

.field private static final COL_IMPORTANCE_REQ:Ljava/lang/String; = "importance_request"

.field private static final COL_KEY:Ljava/lang/String; = "key"

.field private static final COL_MUTED:Ljava/lang/String; = "muted"

.field private static final COL_NOISY:Ljava/lang/String; = "noisy"

.field private static final COL_NOTIFICATION_ID:Ljava/lang/String; = "nid"

.field private static final COL_PKG:Ljava/lang/String; = "pkg"

.field private static final COL_POSTTIME_MS:Ljava/lang/String; = "posttime_ms"

.field private static final COL_TAG:Ljava/lang/String; = "tag"

.field private static final COL_WHEN_MS:Ljava/lang/String; = "when_ms"

.field private static final DAY_MS:J = 0x5265c00L

.field private static final DB_NAME:Ljava/lang/String; = "notification_log.db"

.field private static final DB_VERSION:I = 0x5

.field private static final EVENT_TYPE_CLICK:I = 0x2

.field private static final EVENT_TYPE_DISMISS:I = 0x4

.field private static final EVENT_TYPE_POST:I = 0x1

.field private static final EVENT_TYPE_REMOVE:I = 0x3

.field private static final HORIZON_MS:J = 0x240c8400L

.field private static final MSG_CLICK:I = 0x2

.field private static final MSG_DISMISS:I = 0x4

.field private static final MSG_POST:I = 0x1

.field private static final MSG_REMOVE:I = 0x3

.field private static final PRUNE_MIN_DELAY_MS:J = 0x1499700L

.field private static final PRUNE_MIN_WRITES:J = 0x400L

.field private static final STATS_QUERY:Ljava/lang/String; = "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

.field private static final TAB_LOG:Ljava/lang/String; = "log"

.field private static final TAG:Ljava/lang/String; = "NotificationSQLiteLog"

.field private static sLastPruneMs:J

.field private static sNumWrites:J


# instance fields
.field private final mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mWriteHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;JILcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "eventTimeMs"    # J
    .param p3, "eventType"    # I
    .param p4, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->writeEvent(JILcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    new-instance v6, Landroid/os/HandlerThread;

    const-string/jumbo v0, "notification-sqlite-log"

    .line 1056
    const/16 v1, 0xa

    .line 1055
    invoke-direct {v6, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1057
    .local v6, "backgroundThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 1058
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$1;-><init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    .line 1082
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;

    const-string/jumbo v3, "notification_log.db"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog$2;-><init>(Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 1054
    return-void
.end method

.method private getMidnightMs()J
    .locals 7

    .prologue
    const/16 v5, 0x3b

    .line 1195
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1196
    .local v0, "midnight":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 1197
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v4, 0x17

    move v6, v5

    .line 1196
    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 1198
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private jsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 20
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1139
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1140
    .local v7, "frequencies":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1141
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->getMidnightMs()J

    move-result-wide v8

    .line 1142
    .local v8, "midnight":J
    const-string/jumbo v16, "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v17, v19

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1143
    .local v13, "q":Ljava/lang/String;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1145
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v16

    if-nez v16, :cond_2

    .line 1146
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1147
    .local v15, "userId":I
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1148
    .local v12, "pkg":Ljava/lang/String;
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1149
    :cond_0
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1150
    .local v4, "day":I
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1151
    .local v2, "count":I
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1152
    .local v10, "muted":I
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1153
    .local v11, "noisy":I
    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1154
    .local v6, "demoted":I
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 1155
    .local v14, "row":Lorg/json/JSONObject;
    const-string/jumbo v16, "user_id"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1156
    const-string/jumbo v16, "package"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1157
    const-string/jumbo v16, "day"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1158
    const-string/jumbo v16, "count"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1159
    const-string/jumbo v16, "noisy"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1160
    const-string/jumbo v16, "muted"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1161
    const-string/jumbo v16, "demoted"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1162
    invoke-virtual {v7, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1145
    .end local v2    # "count":I
    .end local v4    # "day":I
    .end local v6    # "demoted":I
    .end local v10    # "muted":I
    .end local v11    # "noisy":I
    .end local v14    # "row":Lorg/json/JSONObject;
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1164
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v15    # "userId":I
    :catchall_0
    move-exception v16

    .line 1165
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1164
    throw v16

    .line 1165
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1167
    return-object v7
.end method

.method private pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1223
    .local v4, "nowMs":J
    sget-wide v6, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    const-wide/16 v8, 0x400

    cmp-long v1, v6, v8

    if-gtz v1, :cond_0

    .line 1224
    sget-wide v6, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sLastPruneMs:J

    sub-long v6, v4, v6

    const-wide/32 v8, 0x1499700

    cmp-long v1, v6, v8

    if-lez v1, :cond_1

    .line 1225
    :cond_0
    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    .line 1226
    sput-wide v4, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sLastPruneMs:J

    .line 1227
    const-wide/32 v6, 0x240c8400

    sub-long v2, v4, v6

    .line 1228
    .local v2, "horizonStartMs":J
    const-string/jumbo v1, "log"

    const-string/jumbo v6, "event_time_ms < ?"

    .line 1229
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 1228
    invoke-virtual {p1, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1230
    .local v0, "deletedRows":I
    const-string/jumbo v1, "NotificationSQLiteLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Pruned event entries: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    .end local v0    # "deletedRows":I
    .end local v2    # "horizonStartMs":J
    :cond_1
    return-void
.end method

.method private static putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .locals 8
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1240
    const-string/jumbo v3, "nid"

    iget-object v6, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1241
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1242
    const-string/jumbo v3, "tag"

    iget-object v6, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    :cond_0
    const-string/jumbo v3, "when_ms"

    iget-object v6, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1245
    const-string/jumbo v3, "flags"

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1246
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v1, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    .line 1247
    .local v1, "before":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    .line 1248
    .local v0, "after":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v2, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    .line 1249
    .local v2, "noisy":Z
    const-string/jumbo v3, "importance_request"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1250
    const-string/jumbo v3, "importance_final"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1251
    const-string/jumbo v6, "demoted"

    if-ge v0, v1, :cond_3

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1252
    const-string/jumbo v3, "noisy"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1253
    if-eqz v2, :cond_4

    const/4 v3, 0x4

    if-ge v0, v3, :cond_4

    .line 1254
    const-string/jumbo v3, "muted"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1258
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1259
    const-string/jumbo v3, "category"

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    :cond_1
    const-string/jumbo v3, "action_count"

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v4, :cond_2

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v5, v4

    .line 1261
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1239
    return-void

    :cond_3
    move v3, v5

    .line 1251
    goto :goto_0

    .line 1256
    :cond_4
    const-string/jumbo v3, "muted"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private static putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    .prologue
    .line 1235
    const-string/jumbo v0, "key"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string/jumbo v0, "pkg"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    return-void
.end method

.method private static putPosttimeVisibility(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "outCv"    # Landroid/content/ContentValues;

    .prologue
    .line 1266
    const-string/jumbo v0, "posttime_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentPosttimeMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1267
    const-string/jumbo v0, "airtime_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentAirtimeMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1268
    const-string/jumbo v0, "expansion_count"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-wide v2, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1269
    const-string/jumbo v0, "expansion_airtime_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->getCurrentAirtimeExpandedMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1270
    const-string/jumbo v0, "first_expansion_time_ms"

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-wide v2, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1265
    return-void
.end method

.method private writeEvent(JILcom/android/server/notification/NotificationRecord;)V
    .locals 7
    .param p1, "eventTimeMs"    # J
    .param p3, "eventType"    # I
    .param p4, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 1202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1203
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "event_user_id"

    iget-object v3, p4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1204
    const-string/jumbo v2, "event_time_ms"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1205
    const-string/jumbo v2, "event_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1206
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putNotificationIdentifiers(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    .line 1207
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 1208
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putNotificationDetails(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    .line 1212
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1213
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "log"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1214
    const-string/jumbo v2, "NotificationSQLiteLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error while trying to insert values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    sget-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->sNumWrites:J

    .line 1217
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->pruneIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1201
    return-void

    .line 1210
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    invoke-static {p4, v0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->putPosttimeVisibility(Lcom/android/server/notification/NotificationRecord;Landroid/content/ContentValues;)V

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 1274
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1273
    return-void
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 1278
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1280
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "post_frequency"

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->jsonPostFrequencies(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1281
    const-string/jumbo v2, "since"

    iget-wide v4, p1, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1282
    const-string/jumbo v2, "now"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    :goto_0
    return-object v0

    .line 1283
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public logClicked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1126
    return-void
.end method

.method public logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1134
    return-void
.end method

.method public logPosted(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1122
    return-void
.end method

.method public logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1130
    return-void
.end method

.method public printPostFrequencies(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 1171
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1172
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->getMidnightMs()J

    move-result-wide v8

    .line 1173
    .local v8, "midnight":J
    const-string/jumbo v14, "SELECT event_user_id, pkg, CAST(((%d - event_time_ms) / 86400000) AS int) AS day, COUNT(*) AS cnt, SUM(muted) as muted, SUM(noisy) as noisy, SUM(demoted) as demoted FROM log WHERE event_type=1 AND event_time_ms > %d  GROUP BY event_user_id, day, pkg"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1174
    .local v12, "q":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v5, v12, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1176
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14

    if-nez v14, :cond_2

    .line 1177
    const/4 v14, 0x0

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1178
    .local v13, "userId":I
    const/4 v14, 0x1

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1179
    .local v11, "pkg":Ljava/lang/String;
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1180
    :cond_0
    const/4 v14, 0x2

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1181
    .local v4, "day":I
    const/4 v14, 0x3

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1182
    .local v2, "count":I
    const/4 v14, 0x4

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1183
    .local v7, "muted":I
    const/4 v14, 0x5

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1184
    .local v10, "noisy":I
    const/4 v14, 0x6

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1185
    .local v6, "demoted":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "post_frequency{user_id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ",pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1186
    const-string/jumbo v15, ",day="

    .line 1185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1186
    const-string/jumbo v15, ",count="

    .line 1185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1186
    const-string/jumbo v15, ",muted="

    .line 1185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1186
    const-string/jumbo v15, "/"

    .line 1185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1187
    const-string/jumbo v15, ",demoted="

    .line 1185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1187
    const-string/jumbo v15, "}"

    .line 1185
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    .end local v2    # "count":I
    .end local v4    # "day":I
    .end local v6    # "demoted":I
    .end local v7    # "muted":I
    .end local v10    # "noisy":I
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1189
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v13    # "userId":I
    :catchall_0
    move-exception v14

    .line 1190
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1189
    throw v14

    .line 1190
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1170
    return-void
.end method
