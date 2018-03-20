.class public Lcom/android/server/notification/MzDoNotDisturbHelper;
.super Ljava/lang/Object;
.source "MzDoNotDisturbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/MzDoNotDisturbHelper$1;,
        Lcom/android/server/notification/MzDoNotDisturbHelper$2;,
        Lcom/android/server/notification/MzDoNotDisturbHelper$3;,
        Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;
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

.field private static final KEY_DND_STATUSBAR_BACKGROUND_COLOR:Ljava/lang/String; = "bgColor"

.field private static final KEY_DND_STATUSBAR_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final KEY_DND_STATUSBAR_RESOURCES_ID:Ljava/lang/String; = "resId"

.field private static final KEY_DND_STATUSBAR_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final KEY_DND_STATUSBAR_TIPS:Ljava/lang/String; = "tips"

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

.field private static final WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;
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

.field private static mIfDndStatusBarCanShow:Z


# instance fields
.field private final KEY_DND_STATUSBAR_BG_COLOR_VALUE:I

.field private final MSG_DND_STATUSBAR_HIDE:I

.field private final MSG_DND_STATUSBAR_RESET:I

.field private final MSG_DND_STATUSBAR_SHOW:I

.field private mContext:Landroid/content/Context;

.field private mDndReceiverIsRegistered:Z

.field private mDndStatusBarIsShowing:Z

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreenUnLockReceiver:Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

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

.method static synthetic -get2(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mIfDndStatusBarCanShow:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mUpdateNotificationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/notification/MzDoNotDisturbHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/notification/MzDoNotDisturbHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndStatusBarIsShowing:Z

    return p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mIfDndStatusBarCanShow:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/server/notification/MzDoNotDisturbHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/MzDoNotDisturbHelper;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isShowDndStatusBar"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->showDoNotDisturbStatusBar(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotificationPulseLight()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
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

    .line 47
    const-string/jumbo v3, "zen_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 49
    const-string/jumbo v3, "mz_do_not_disturb_wakeup_breath_light"

    .line 48
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_BREATH_LIGHT_URI:Landroid/net/Uri;

    .line 75
    new-instance v3, Landroid/content/ComponentName;

    .line 76
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.meizu.settings.MzSettingsActivity$DoNotDisturbActivity"

    .line 75
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    .line 80
    const/4 v3, 0x7

    new-array v3, v3, [[I

    .line 82
    const/4 v4, 0x6

    .line 81
    filled-new-array {v4, v6}, [I

    move-result-object v4

    aput-object v4, v3, v7

    .line 84
    const/4 v4, 0x5

    const/4 v5, 0x7

    .line 83
    filled-new-array {v4, v5}, [I

    move-result-object v4

    aput-object v4, v3, v6

    .line 86
    const/4 v4, 0x6

    .line 85
    filled-new-array {v10, v4}, [I

    move-result-object v4

    aput-object v4, v3, v8

    .line 88
    const/4 v4, 0x5

    .line 87
    filled-new-array {v9, v4}, [I

    move-result-object v4

    aput-object v4, v3, v9

    .line 89
    filled-new-array {v8, v10}, [I

    move-result-object v4

    aput-object v4, v3, v10

    .line 91
    filled-new-array {v6, v9}, [I

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 93
    filled-new-array {v7, v8}, [I

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 80
    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    .line 97
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    .line 98
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;

    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 102
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    aget-object v3, v3, v1

    aget v0, v3, v7

    .line 103
    .local v0, "bitSetIndex":I
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    aget-object v3, v3, v1

    aget v2, v3, v6

    .line 104
    .local v2, "value":I
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
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

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const v0, -0xd1ba7b

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->KEY_DND_STATUSBAR_BG_COLOR_VALUE:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->MSG_DND_STATUSBAR_SHOW:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->MSG_DND_STATUSBAR_HIDE:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->MSG_DND_STATUSBAR_RESET:I

    .line 113
    iput v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    .line 120
    new-instance v0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/MzDoNotDisturbHelper$1;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/MzDoNotDisturbHelper$2;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mUpdateNotificationRunnable:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/MzDoNotDisturbHelper$3;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mObserver:Landroid/database/ContentObserver;

    .line 170
    iput-object p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    .line 171
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    .line 172
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 173
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    .line 174
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 175
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotification()V

    .line 176
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotificationPulseLight()V

    .line 177
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_BREATH_LIGHT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    return-void
.end method

.method public static binaryToRepeatDay(I)[I
    .locals 8
    .param p0, "binary"    # I

    .prologue
    const/4 v6, 0x0

    .line 325
    if-gez p0, :cond_0

    .line 326
    new-array v6, v6, [I

    return-object v6

    .line 329
    :cond_0
    const/4 v1, 0x0

    .line 332
    .local v1, "dayCount":I
    move v4, p0

    .line 333
    .local v4, "tmpBinary":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v0, "bitSetIndexs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 330
    .local v2, "i":I
    :goto_0
    const/4 v6, 0x6

    .line 334
    if-gt v2, v6, :cond_2

    .line 335
    shr-int v6, v4, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 336
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_1
    move v4, p0

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [I

    .line 341
    .local v3, "repeatDays":[I
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 342
    sget-object v6, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 343
    .local v5, "value":I
    aput v5, v3, v2

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 345
    .end local v5    # "value":I
    :cond_3
    return-object v3
.end method

.method private clearDoNotDisturbNotification()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 216
    const-string/jumbo v0, "ZenModeHelper"

    const-string/jumbo v1, "clearDoNotDisturbNotification return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/flyme/internal/R$string;->do_not_disturb_notification_title:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 214
    return-void
.end method

.method private getNotificationContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    sget v0, Lcom/flyme/internal/R$string;->do_not_disturb_notification_content:I

    .line 246
    .local v0, "strResId":I
    iget v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 247
    sget v0, Lcom/flyme/internal/R$string;->do_not_disturb_notification_priority_only_content:I

    .line 253
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 248
    :cond_1
    iget v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 249
    sget v0, Lcom/flyme/internal/R$string;->do_not_disturb_notification_alarm_only_content:I

    goto :goto_0

    .line 250
    :cond_2
    iget v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 251
    sget v0, Lcom/flyme/internal/R$string;->do_not_disturb_notification_none_content:I

    goto :goto_0
.end method

.method public static importConfigFromOldDb(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 274
    .local v11, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v18, "mz_do_not_disturb_time_switch"

    .line 275
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 274
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    .line 276
    .local v16, "timeSwitch":I
    const-string/jumbo v18, "mz_do_not_disturb_start_time_hour"

    .line 277
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 276
    const/16 v20, 0x17

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 278
    .local v14, "startHour":I
    const-string/jumbo v18, "mz_do_not_disturb_start_time_minute"

    .line 279
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 278
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 280
    .local v15, "startMinute":I
    const-string/jumbo v18, "mz_do_not_disturb_end_time_hour"

    .line 281
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 280
    const/16 v20, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 282
    .local v6, "endHour":I
    const-string/jumbo v18, "mz_do_not_disturb_end_time_minutes"

    .line 283
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 282
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 284
    .local v7, "endMinute":I
    const-string/jumbo v18, "mz_do_not_disturb_repeat_days"

    .line 285
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 284
    const/16 v20, 0x7f

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 286
    .local v10, "repeatDay":I
    const-string/jumbo v18, "mz_do_not_disturb_remind_repeating_coming _call"

    .line 287
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 286
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 288
    .local v9, "repeatCall":I
    const-string/jumbo v18, "white_list_disturb_enable"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 289
    .local v17, "whiteListEnable":I
    const-string/jumbo v18, "mz_do_not_disturb_is_working"

    .line 290
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 289
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 291
    .local v5, "dndIsWorking":I
    new-instance v4, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v4}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 292
    .local v4, "dndConfig":Landroid/service/notification/ZenModeConfig;
    if-eqz v17, :cond_1

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 293
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v4, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 294
    if-eqz v9, :cond_2

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 295
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 296
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 297
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 298
    if-eqz v5, :cond_0

    .line 299
    new-instance v8, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v8}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 300
    .local v8, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 301
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 302
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 303
    iput-object v8, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 306
    .end local v8    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    new-instance v12, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v12}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 307
    .local v12, "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v10}, Lcom/android/server/notification/MzDoNotDisturbHelper;->binaryToRepeatDay(I)[I

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 308
    iput v14, v12, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 309
    iput v15, v12, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 310
    iput v6, v12, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 311
    iput v7, v12, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 312
    new-instance v13, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v13}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 313
    .local v13, "scheduleRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 314
    const-string/jumbo v18, "com.android.settings"

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 315
    invoke-static {v12}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 316
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 317
    sget-object v18, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 318
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 320
    iget-object v0, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    iget-object v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    return-object v4

    .line 292
    .end local v12    # "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .end local v13    # "scheduleRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 294
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_1
.end method

.method private registerDndReceiver()V
    .locals 3

    .prologue
    .line 195
    new-instance v1, Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    iput-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mScreenUnLockReceiver:Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mScreenUnLockReceiver:Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndReceiverIsRegistered:Z

    .line 194
    return-void
.end method

.method public static repeatDayToBinary([I)I
    .locals 7
    .param p0, "repeatDays"    # [I

    .prologue
    const/4 v3, 0x0

    .line 349
    if-nez p0, :cond_0

    .line 350
    return v3

    .line 352
    :cond_0
    const/4 v0, 0x0

    .line 353
    .local v0, "binay":I
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget v1, p0, v4

    .line 354
    .local v1, "day":I
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 355
    .local v2, "index":I
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    or-int/2addr v0, v3

    .line 353
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 357
    .end local v1    # "day":I
    .end local v2    # "index":I
    :cond_1
    return v0
.end method

.method private showDoNotDisturbNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 223
    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v4, :cond_0

    .line 224
    const-string/jumbo v4, "ZenModeHelper"

    const-string/jumbo v5, "showDoNotDisturbNotification return"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 227
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 229
    sget v4, Lcom/flyme/internal/R$drawable;->do_not_disturb_status_bar_icon:I

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 230
    iget-object v5, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    sget v6, Lcom/flyme/internal/R$string;->do_not_disturb_notification_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 229
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 231
    iget-object v5, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    sget v6, Lcom/flyme/internal/R$string;->do_not_disturb_notification_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 229
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 232
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->getNotificationContent()Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 233
    iget-object v4, v0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    .line 234
    sget v5, Lcom/flyme/internal/R$drawable;->do_not_disturb_notification_icon:I

    .line 233
    invoke-virtual {v4, v5}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    .line 235
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 236
    sget-object v4, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    invoke-static {v4}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 237
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v2, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 238
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 239
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 240
    .local v3, "n":Landroid/app/Notification;
    const/16 v4, 0x20

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 241
    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    sget v5, Lcom/flyme/internal/R$string;->do_not_disturb_notification_title:I

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 222
    return-void
.end method

.method private showDoNotDisturbStatusBar(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isShowDndStatusBar"    # Z

    .prologue
    .line 372
    const-string/jumbo v3, "flyme_statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 371
    invoke-static {v3}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v2

    .line 374
    .local v2, "iFlymeStatusBarService":Lmeizu/statusbar/IFlymeStatusBarService;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 375
    :cond_0
    return-void

    .line 378
    :cond_1
    if-eqz p2, :cond_2

    .line 379
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string/jumbo v3, "tips"

    .line 383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    sget v6, Lcom/flyme/internal/R$string;->do_not_disturb_mode_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string/jumbo v3, "textColor"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    const-string/jumbo v3, "bgColor"

    const v4, -0xd1ba7b

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    const-string/jumbo v3, "resId"

    .line 388
    sget v4, Lcom/flyme/internal/R$drawable;->do_not_disturb_status_bar_icon:I

    .line 386
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 390
    :try_start_0
    invoke-interface {v2, v0}, Lmeizu/statusbar/IFlymeStatusBarService;->showAlwaysTextAndIcon(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 391
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 396
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    invoke-interface {v2, p1}, Lmeizu/statusbar/IFlymeStatusBarService;->hideAlwaysTextAndIcon(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 397
    :catch_1
    move-exception v1

    .line 398
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private unRegisterDndReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    iget-boolean v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndStatusBarIsShowing:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->showDoNotDisturbStatusBar(Ljava/lang/String;Z)V

    .line 208
    iput-boolean v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndStatusBarIsShowing:Z

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mScreenUnLockReceiver:Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    iput-boolean v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndReceiverIsRegistered:Z

    .line 202
    return-void
.end method

.method private updateNotification()V
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    if-nez v0, :cond_1

    .line 183
    iget-boolean v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndReceiverIsRegistered:Z

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->unRegisterDndReceiver()V

    .line 186
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mIfDndStatusBarCanShow:Z

    .line 187
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->clearDoNotDisturbNotification()V

    .line 181
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->registerDndReceiver()V

    .line 190
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->showDoNotDisturbNotification()V

    goto :goto_0
.end method

.method private updateNotificationPulseLight()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 257
    iget v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    if-nez v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "notification_light_pulse"

    .line 260
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 259
    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    .line 263
    const-string/jumbo v3, "notification_light_pulse"

    .line 262
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 264
    .local v1, "notificationPulseLightSwitch":I
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "mz_do_not_disturb_wakeup_breath_light"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 265
    .local v0, "breathLightSwitch":I
    if-eq v0, v1, :cond_0

    .line 266
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "notification_light_pulse"

    .line 267
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 266
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
