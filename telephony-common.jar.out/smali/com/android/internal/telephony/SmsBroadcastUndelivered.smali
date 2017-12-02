.class public Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;,
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;,
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final PARTIAL_SEGMENT_EXPIRE_AGE:J = 0x9a7ec800L

.field private static final PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmsBroadcastUndelivered"

.field private static instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private final mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "pdu"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "sequence"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "destination_port"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "date"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "reference_number"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "count"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "address"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "message_body"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "display_originating_addr"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 54
    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    .line 126
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 127
    iput-object p3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 129
    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 131
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    new-instance v2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->start()V

    .line 124
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v0, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 227
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 232
    .local v0, "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :goto_0
    if-eqz v0, :cond_1

    .line 233
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 225
    :goto_1
    return-void

    .line 230
    .end local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .restart local v0    # "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    goto :goto_0

    .line 235
    :cond_1
    const-string/jumbo v1, "SmsBroadcastUndelivered"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "null handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " format, can\'t deliver."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p2, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .prologue
    const/4 v1, 0x6

    .line 107
    sget-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    .line 115
    :cond_0
    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(I)V

    .line 118
    :cond_1
    if-eqz p2, :cond_2

    .line 119
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(I)V

    .line 106
    :cond_2
    return-void
.end method

.method private scanRawTable()V
    .locals 26

    .prologue
    .line 144
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    const-string/jumbo v3, "scanning raw table for undelivered messages"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 147
    .local v20, "startTime":J
    new-instance v14, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v14, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 148
    .local v14, "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/HashSet;

    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 149
    .local v16, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;>;"
    const/4 v8, 0x0

    .line 152
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 153
    const-string/jumbo v5, "deleted = 0"

    const/4 v6, 0x0

    .line 154
    const/4 v7, 0x0

    .line 152
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 155
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 156
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    const-string/jumbo v3, "error getting pending message cursor"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    if-eqz v8, :cond_0

    .line 215
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_0
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finished scanning raw table in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v20

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 217
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    const-string/jumbo v4, " ms"

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 160
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->isCurrentFormat3gpp2()Z

    move-result v11

    .line 161
    .local v11, "isCurrentFormat3gpp2":Z
    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_8

    .line 164
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, v8, v11}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v22

    .line 171
    .local v22, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 173
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 211
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "isCurrentFormat3gpp2":Z
    .end local v22    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :catch_0
    move-exception v9

    .line 212
    .local v9, "e":Landroid/database/SQLException;
    :try_start_4
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    const-string/jumbo v3, "error reading pending SMS messages"

    invoke-static {v2, v3, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    if-eqz v8, :cond_3

    .line 215
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_3
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finished scanning raw table in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v20

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 217
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    const-string/jumbo v4, " ms"

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v9    # "e":Landroid/database/SQLException;
    :goto_1
    return-void

    .line 166
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "isCurrentFormat3gpp2":Z
    :catch_1
    move-exception v10

    .line 167
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error loading SmsTracker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 213
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "isCurrentFormat3gpp2":Z
    :catchall_0
    move-exception v2

    .line 214
    if-eqz v8, :cond_4

    .line 215
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_4
    const-string/jumbo v3, "SmsBroadcastUndelivered"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "finished scanning raw table in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 218
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v20

    const-wide/32 v24, 0xf4240

    div-long v6, v6, v24

    .line 217
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 218
    const-string/jumbo v5, " ms"

    .line 217
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    throw v2

    .line 175
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "isCurrentFormat3gpp2":Z
    .restart local v22    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_5
    :try_start_6
    new-instance v18, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;-><init>(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 176
    .local v18, "reference":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 177
    .local v17, "receivedCount":Ljava/lang/Integer;
    if-nez v17, :cond_6

    .line 178
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v2

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide v6, 0x9a7ec800L

    sub-long/2addr v4, v6

    .line 179
    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 182
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 185
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v15, v2, 0x1

    .line 186
    .local v15, "newCount":I
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    if-ne v15, v2, :cond_7

    .line 189
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    const-string/jumbo v3, "found complete multi-part message"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 192
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 194
    :cond_7
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 200
    .end local v15    # "newCount":I
    .end local v17    # "receivedCount":Ljava/lang/Integer;
    .end local v18    # "reference":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v22    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "message$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    .line 202
    .local v12, "message":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    .line 203
    const-string/jumbo v4, "address=? AND reference_number=? AND count=? AND deleted=0"

    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 204
    .local v19, "rows":I
    if-nez v19, :cond_9

    .line 205
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    const-string/jumbo v3, "No rows were deleted from raw table!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 207
    :cond_9
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " rows from raw table for incomplete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 208
    iget v4, v12, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 208
    const-string/jumbo v4, " part message"

    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 214
    .end local v12    # "message":Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
    .end local v19    # "rows":I
    :cond_a
    if-eqz v8, :cond_b

    .line 215
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_b
    const-string/jumbo v2, "SmsBroadcastUndelivered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finished scanning raw table in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v20

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 217
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    const-string/jumbo v4, " ms"

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
