.class public Lcom/android/server/notification/MzDoNotDisturbHelper;
.super Ljava/lang/Object;
.source "MzDoNotDisturbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/MzDoNotDisturbHelper$1;,
        Lcom/android/server/notification/MzDoNotDisturbHelper$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DND_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

.field private static final DND_BREATH_LIGHT_URI:Landroid/net/Uri;

.field private static final KEY_DND_BREATH_LIGHT:Ljava/lang/String; = "mz_do_not_disturb_wakeup_breath_light"

.field private static final KEY_DND_END_HOUR:Ljava/lang/String; = "mz_do_not_disturb_end_time_hour"

.field private static final KEY_DND_END_MINUTE:Ljava/lang/String; = "mz_do_not_disturb_end_time_minutes"

.field private static final KEY_DND_IS_WORKING:Ljava/lang/String; = "mz_do_not_disturb_is_working"

.field private static final KEY_DND_REPEAT_CALL:Ljava/lang/String; = "mz_do_not_disturb_remind_repeating_coming _call"

.field private static final KEY_DND_REPEAT_DAY:Ljava/lang/String; = "mz_do_not_disturb_repeat_days"

.field private static final KEY_DND_START_HOUR:Ljava/lang/String; = "mz_do_not_disturb_start_time_hour"

.field private static final KEY_DND_START_MINUTE:Ljava/lang/String; = "mz_do_not_disturb_start_time_minute"

.field private static final KEY_DND_TIME_SWITCH:Ljava/lang/String; = "mz_do_not_disturb_time_switch"

.field private static final KEY_DND_WHITE_LIST:Ljava/lang/String; = "white_list_disturb_enable"

.field private static final KEY_NOTIFICATION_PAULSE_LIGHT:Ljava/lang/String; = "notification_light_pulse"

.field static final SCHEDULE_RULE_NAME_FOR_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"

.field private static final UPDATE_NOTIFICATION_DELAY:J = 0xc8L

.field private static final WEEK_DAYS_ARRAYS:[[I

.field private static final WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZEN_MODE_URI:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUpdateNotificationRunnable:Ljava/lang/Runnable;

.field private mZenMode:I


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_BREATH_LIGHT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mUpdateNotificationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/notification/MzDoNotDisturbHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/notification/MzDoNotDisturbHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotificationPulseLight()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 37
    const-string/jumbo v3, "zen_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 39
    const-string/jumbo v3, "mz_do_not_disturb_wakeup_breath_light"

    .line 38
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_BREATH_LIGHT_URI:Landroid/net/Uri;

    .line 54
    new-instance v3, Landroid/content/ComponentName;

    .line 55
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.meizu.settings.MzSettingsActivity$DoNotDisturbActivity"

    .line 54
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    .line 59
    const/4 v3, 0x7

    new-array v3, v3, [[I

    const/4 v4, 0x6

    filled-new-array {v4, v6}, [I

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x5

    const/4 v5, 0x7

    filled-new-array {v4, v5}, [I

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x6

    filled-new-array {v10, v4}, [I

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x5

    filled-new-array {v9, v4}, [I

    move-result-object v4

    aput-object v4, v3, v9

    filled-new-array {v8, v10}, [I

    move-result-object v4

    aput-object v4, v3, v10

    filled-new-array {v6, v9}, [I

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    filled-new-array {v7, v8}, [I

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    .line 60
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 64
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    aget-object v3, v3, v1

    aget v0, v3, v7

    .line 65
    .local v0, "bitSetIndex":I
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    aget-object v3, v3, v1

    aget v2, v3, v6

    .line 66
    .local v2, "value":I
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "bitSetIndex":I
    .end local v2    # "value":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/MzDoNotDisturbHelper$1;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mUpdateNotificationRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/MzDoNotDisturbHelper$2;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mObserver:Landroid/database/ContentObserver;

    .line 110
    iput-object p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    .line 111
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    .line 112
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 113
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    .line 114
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 115
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotification()V

    .line 116
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotificationPulseLight()V

    .line 117
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_BREATH_LIGHT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 109
    return-void
.end method

.method private static binaryToRepeatDay(I)[I
    .locals 8
    .param p0, "binary"    # I

    .prologue
    const/4 v6, 0x0

    .line 283
    if-gez p0, :cond_0

    .line 284
    new-array v6, v6, [I

    return-object v6

    .line 287
    :cond_0
    const/4 v1, 0x0

    .line 290
    .local v1, "dayCount":I
    move v4, p0

    .line 291
    .local v4, "tmpBinary":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v0, "bitSetIndexs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 288
    .local v2, "i":I
    :goto_0
    const/4 v6, 0x6

    .line 292
    if-gt v2, v6, :cond_2

    .line 293
    shr-int v6, v4, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 294
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_1
    move v4, p0

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [I

    .line 299
    .local v3, "repeatDays":[I
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 300
    sget-object v6, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 301
    .local v5, "value":I
    aput v5, v3, v2

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 303
    .end local v5    # "value":I
    :cond_3
    return-object v3
.end method

.method private clearDoNotDisturbNotification()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 131
    const-string/jumbo v0, "ZenModeHelper"

    const-string/jumbo v1, "clearDoNotDisturbNotification return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/flyme/internal/R$string;->do_not_disturb_notification_title:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 129
    return-void
.end method

.method public static ensureDndRuleExsit(Landroid/service/notification/ZenModeConfig;)V
    .locals 10
    .param p0, "currentConfig"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 188
    if-eqz p0, :cond_0

    iget-object v6, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-nez v6, :cond_1

    .line 189
    :cond_0
    const-string/jumbo v6, "ZenModeHelper"

    const-string/jumbo v7, "ensureDndRuleExsit error,return"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 192
    :cond_1
    iget-object v6, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 193
    .local v4, "size":I
    const/4 v1, 0x0

    .line 194
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 195
    iget-object v6, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 196
    .local v5, "tmp":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v5, :cond_4

    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const-string/jumbo v7, "com.android.settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 197
    move-object v1, v5

    .line 201
    .end local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v5    # "tmp":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    if-nez v1, :cond_3

    .line 202
    const-string/jumbo v6, "ZenModeHelper"

    const-string/jumbo v7, "dnd rule not exsit, create it"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 204
    .local v2, "ruleForDnd":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string/jumbo v6, "com.android.settings"

    iput-object v6, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 205
    const/4 v6, 0x1

    iput v6, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 206
    iput-object v8, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 207
    iput-boolean v9, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 208
    iput-boolean v9, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 209
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 210
    .local v3, "scheduleInfoForDnd":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const/16 v6, 0x17

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 211
    iput v9, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 212
    const/4 v6, 0x7

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 213
    iput v9, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 214
    sget-object v6, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 215
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 216
    iget-object v6, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .end local v2    # "ruleForDnd":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "scheduleInfoForDnd":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_3
    return-void

    .line 194
    .restart local v1    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v5    # "tmp":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getNotificationContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    sget v0, Lcom/flyme/internal/R$string;->do_not_disturb_notification_content:I

    .line 161
    .local v0, "strResId":I
    iget v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 162
    sget v0, Lcom/flyme/internal/R$string;->do_not_disturb_notification_priority_only_content:I

    .line 168
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 163
    :cond_1
    iget v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 164
    sget v0, Lcom/flyme/internal/R$string;->do_not_disturb_notification_alarm_only_content:I

    goto :goto_0

    .line 165
    :cond_2
    iget v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 166
    sget v0, Lcom/flyme/internal/R$string;->do_not_disturb_notification_none_content:I

    goto :goto_0
.end method

.method public static importConfigFromOldDb(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 222
    .local v11, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v18, "mz_do_not_disturb_time_switch"

    .line 223
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 222
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    .line 224
    .local v16, "timeSwitch":I
    const-string/jumbo v18, "mz_do_not_disturb_start_time_hour"

    .line 225
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 224
    const/16 v20, 0x17

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 226
    .local v14, "startHour":I
    const-string/jumbo v18, "mz_do_not_disturb_start_time_minute"

    .line 227
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 226
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 228
    .local v15, "startMinute":I
    const-string/jumbo v18, "mz_do_not_disturb_end_time_hour"

    .line 229
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 228
    const/16 v20, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 230
    .local v5, "endHour":I
    const-string/jumbo v18, "mz_do_not_disturb_end_time_minutes"

    .line 231
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 230
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 232
    .local v6, "endMinute":I
    const-string/jumbo v18, "mz_do_not_disturb_repeat_days"

    .line 233
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 232
    const/16 v20, 0x7f

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 234
    .local v10, "repeatDay":I
    const-string/jumbo v18, "mz_do_not_disturb_remind_repeating_coming _call"

    .line 235
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 234
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 236
    .local v9, "repeatCall":I
    const-string/jumbo v18, "white_list_disturb_enable"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 237
    .local v17, "whiteListEnable":I
    const-string/jumbo v18, "mz_do_not_disturb_is_working"

    .line 238
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 237
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 241
    .local v4, "dndIsWorking":I
    const-string/jumbo v18, "ZenModeHelper"

    .line 242
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "importConfigFromOldDb timeSwitch = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " startHour = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 243
    const-string/jumbo v20, " startMinute = "

    .line 242
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 243
    const-string/jumbo v20, " endHour = "

    .line 242
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 244
    const-string/jumbo v20, " endMinute = "

    .line 242
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 244
    const-string/jumbo v20, " repeatCall = "

    .line 242
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 245
    const-string/jumbo v20, " whiteListEnable = "

    .line 242
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 245
    const-string/jumbo v20, " dndIsWorking = "

    .line 242
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 241
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v3, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 249
    .local v3, "dndConfig":Landroid/service/notification/ZenModeConfig;
    if-eqz v17, :cond_1

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    iput-boolean v0, v3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 250
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 251
    if-eqz v9, :cond_2

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    iput-boolean v0, v3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 252
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 253
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 254
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v3, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 255
    if-eqz v4, :cond_0

    .line 256
    new-instance v8, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v8}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 257
    .local v8, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 258
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 259
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 260
    iput-object v8, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 262
    .end local v8    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    new-instance v12, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v12}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 263
    .local v12, "ruleForDnd":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string/jumbo v18, "com.android.settings"

    move-object/from16 v0, v18

    iput-object v0, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 264
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 265
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 266
    if-eqz v16, :cond_3

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    iput-boolean v0, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 267
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 268
    new-instance v13, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v13}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 269
    .local v13, "scheduleInfoForDnd":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iput v14, v13, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 270
    iput v15, v13, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 271
    iput v5, v13, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 272
    iput v6, v13, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 273
    invoke-static {v10}, Lcom/android/server/notification/MzDoNotDisturbHelper;->binaryToRepeatDay(I)[I

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 274
    invoke-static {v13}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 275
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, "id":Ljava/lang/String;
    iput-object v7, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 277
    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-object v3

    .line 249
    .end local v7    # "id":Ljava/lang/String;
    .end local v12    # "ruleForDnd":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v13    # "scheduleInfoForDnd":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 251
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 266
    .restart local v12    # "ruleForDnd":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_3
    const/16 v18, 0x0

    goto :goto_2
.end method

.method private showDoNotDisturbNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 138
    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v4, :cond_0

    .line 139
    const-string/jumbo v4, "ZenModeHelper"

    const-string/jumbo v5, "showDoNotDisturbNotification return"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 142
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 144
    sget v4, Lcom/flyme/internal/R$drawable;->do_not_disturb_status_bar_icon:I

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 145
    iget-object v5, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    sget v6, Lcom/flyme/internal/R$string;->do_not_disturb_notification_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 144
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 146
    iget-object v5, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    sget v6, Lcom/flyme/internal/R$string;->do_not_disturb_notification_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 144
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 147
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->getNotificationContent()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 148
    iget-object v4, v0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    .line 149
    sget v5, Lcom/flyme/internal/R$drawable;->do_not_disturb_notification_icon:I

    .line 148
    invoke-virtual {v4, v5}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    .line 150
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 151
    sget-object v4, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    invoke-static {v4}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 152
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v2, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 153
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 154
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 155
    .local v3, "n":Landroid/app/Notification;
    const/16 v4, 0x20

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 156
    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    sget v5, Lcom/flyme/internal/R$string;->do_not_disturb_notification_title:I

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 137
    return-void
.end method

.method private updateNotification()V
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->clearDoNotDisturbNotification()V

    .line 121
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->showDoNotDisturbNotification()V

    goto :goto_0
.end method

.method private updateNotificationPulseLight()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 172
    iget v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    if-nez v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "notification_light_pulse"

    .line 175
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 174
    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    .line 178
    const-string/jumbo v3, "notification_light_pulse"

    .line 177
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 179
    .local v1, "notificationPulseLightSwitch":I
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "mz_do_not_disturb_wakeup_breath_light"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 180
    .local v0, "breathLightSwitch":I
    if-eq v0, v1, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "notification_light_pulse"

    .line 182
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 181
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
