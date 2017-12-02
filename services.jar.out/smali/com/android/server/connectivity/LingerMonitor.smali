.class public Lcom/android/server/connectivity/LingerMonitor;
.super Ljava/lang/Object;
.source "LingerMonitor.java"


# static fields
.field public static final CELLULAR_SETTINGS:Landroid/content/Intent;

.field private static final DBG:Z = true

.field public static final DEFAULT_NOTIFICATION_DAILY_LIMIT:I = 0x3

.field public static final DEFAULT_NOTIFICATION_RATE_LIMIT_MILLIS:J = 0xea60L

.field public static final NOTIFY_TYPE_NONE:I = 0x0

.field public static final NOTIFY_TYPE_NOTIFICATION:I = 0x1

.field public static final NOTIFY_TYPE_TOAST:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSPORT_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VDBG:Z

.field private static sNotifyTypeNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDailyLimit:I

.field private final mEverNotified:Landroid/util/SparseBooleanArray;

.field private mFirstNotificationMillis:J

.field private mLastNotificationMillis:J

.field private mNotificationCounter:I

.field private final mNotifications:Landroid/util/SparseIntArray;

.field private final mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

.field private final mRateLimitMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    const-class v0, Lcom/android/server/connectivity/LingerMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/LingerMonitor;->TAG:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/android/server/connectivity/LingerMonitor;->makeTransportToNameMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/LingerMonitor;->TRANSPORT_NAMES:Ljava/util/HashMap;

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    .line 62
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    .line 61
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/LingerMonitor;->CELLULAR_SETTINGS:Landroid/content/Intent;

    .line 70
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/connectivity/LingerMonitor;

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "NOTIFY_TYPE_"

    aput-object v2, v1, v4

    .line 69
    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/LingerMonitor;->sNotifyTypeNames:Landroid/util/SparseArray;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/connectivity/NetworkNotificationManager;IJ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/server/connectivity/NetworkNotificationManager;
    .param p3, "dailyLimit"    # I
    .param p4, "rateLimitMillis"    # J

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    .line 85
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mEverNotified:Landroid/util/SparseBooleanArray;

    .line 89
    iput-object p1, p0, Lcom/android/server/connectivity/LingerMonitor;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    .line 91
    iput p3, p0, Lcom/android/server/connectivity/LingerMonitor;->mDailyLimit:I

    .line 92
    iput-wide p4, p0, Lcom/android/server/connectivity/LingerMonitor;->mRateLimitMillis:J

    .line 88
    return-void
.end method

.method private everNotified(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mEverNotified:Landroid/util/SparseBooleanArray;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method private getNotificationSource(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 3
    .param p1, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    if-ne v1, v2, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    return v1

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static hasTransport(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .locals 1
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p1, "transport"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method private isAboveDailyLimit(J)Z
    .locals 9
    .param p1, "now"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 290
    iget-wide v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mFirstNotificationMillis:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 291
    iput-wide p1, p0, Lcom/android/server/connectivity/LingerMonitor;->mFirstNotificationMillis:J

    .line 293
    :cond_0
    iget-wide v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mFirstNotificationMillis:J

    sub-long v0, p1, v2

    .line 294
    .local v0, "millisSinceFirst":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 295
    iput v4, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotificationCounter:I

    .line 296
    iput-wide v6, p0, Lcom/android/server/connectivity/LingerMonitor;->mFirstNotificationMillis:J

    .line 298
    :cond_1
    iget v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotificationCounter:I

    iget v3, p0, Lcom/android/server/connectivity/LingerMonitor;->mDailyLimit:I

    if-lt v2, v3, :cond_2

    .line 299
    const/4 v2, 0x1

    return v2

    .line 301
    :cond_2
    iget v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotificationCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotificationCounter:I

    .line 302
    return v4
.end method

.method private isRateLimited(J)Z
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 281
    iget-wide v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mLastNotificationMillis:J

    sub-long v0, p1, v2

    .line 282
    .local v0, "millisSinceLast":J
    iget-wide v2, p0, Lcom/android/server/connectivity/LingerMonitor;->mRateLimitMillis:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 283
    const/4 v2, 0x1

    return v2

    .line 285
    :cond_0
    iput-wide p1, p0, Lcom/android/server/connectivity/LingerMonitor;->mLastNotificationMillis:J

    .line 286
    const/4 v2, 0x0

    return v2
.end method

.method private static makeTransportToNameMap()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 97
    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/net/NetworkCapabilities;

    aput-object v4, v3, v6

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "TRANSPORT_"

    aput-object v5, v4, v6

    .line 96
    invoke-static {v3, v4}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 98
    .local v2, "numberToName":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v1, "nameToNumber":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 102
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-object v1
.end method

.method private maybeStopNotifying(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/LingerMonitor;->getNotificationSource(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    .line 165
    .local v0, "fromNetId":I
    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 167
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 163
    :cond_0
    return-void
.end method

.method private notify(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .locals 7
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "forceToast"    # Z

    .prologue
    const/4 v6, 0x1

    .line 175
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 176
    .local v0, "notifyType":I
    if-ne v0, v6, :cond_0

    if-eqz p3, :cond_0

    .line 177
    const/4 v0, 0x2

    .line 184
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 194
    sget-object v1, Lcom/android/server/connectivity/LingerMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown notify type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void

    .line 186
    :pswitch_0
    return-void

    .line 188
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/LingerMonitor;->showNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 199
    :goto_0
    sget-object v2, Lcom/android/server/connectivity/LingerMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notifying switch from="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " to="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    const-string/jumbo v3, " type="

    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    sget-object v1, Lcom/android/server/connectivity/LingerMonitor;->sNotifyTypeNames:Landroid/util/SparseArray;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    iget-object v3, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mEverNotified:Landroid/util/SparseBooleanArray;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 173
    return-void

    .line 191
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/NetworkNotificationManager;->showToast(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 7
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 153
    invoke-virtual {p0}, Lcom/android/server/connectivity/LingerMonitor;->createNotificationIntent()Landroid/app/PendingIntent;

    move-result-object v5

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    .line 152
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    .line 151
    return-void
.end method


# virtual methods
.method protected createNotificationIntent()Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/connectivity/LingerMonitor;->CELLULAR_SETTINGS:Landroid/content/Intent;

    .line 159
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 158
    const/4 v1, 0x0

    .line 159
    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    .line 158
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public isNotificationEnabled(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 13
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 128
    iget-object v5, p0, Lcom/android/server/connectivity/LingerMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "notifySwitches":[Ljava/lang/String;
    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v1, v2, v6

    .line 135
    .local v1, "notifySwitch":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    :cond_0
    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 136
    :cond_1
    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "transports":[Ljava/lang/String;
    array-length v5, v4

    if-eq v5, v12, :cond_2

    .line 138
    sget-object v5, Lcom/android/server/connectivity/LingerMonitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid network switch notification configuration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 141
    :cond_2
    sget-object v5, Lcom/android/server/connectivity/LingerMonitor;->TRANSPORT_NAMES:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "TRANSPORT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    .local v0, "fromTransport":I
    sget-object v5, Lcom/android/server/connectivity/LingerMonitor;->TRANSPORT_NAMES:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "TRANSPORT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 143
    .local v3, "toTransport":I
    invoke-static {p1, v0}, Lcom/android/server/connectivity/LingerMonitor;->hasTransport(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2, v3}, Lcom/android/server/connectivity/LingerMonitor;->hasTransport(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    return v11

    .line 148
    .end local v0    # "fromTransport":I
    .end local v1    # "notifySwitch":Ljava/lang/String;
    .end local v3    # "toTransport":I
    .end local v4    # "transports":[Ljava/lang/String;
    :cond_3
    return v7
.end method

.method public noteDisconnect(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mNotifications:Landroid/util/SparseIntArray;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 275
    iget-object v0, p0, Lcom/android/server/connectivity/LingerMonitor;->mEverNotified:Landroid/util/SparseBooleanArray;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/LingerMonitor;->maybeStopNotifying(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 273
    return-void
.end method

.method public noteLingerDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p1, "fromNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "toNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/LingerMonitor;->maybeStopNotifying(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 231
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v1, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 248
    const/16 v4, 0x11

    .line 247
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 252
    .local v0, "forceToast":Z
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/LingerMonitor;->everNotified(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    return-void

    .line 263
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v1, :cond_2

    return-void

    .line 265
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/LingerMonitor;->isNotificationEnabled(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 267
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 268
    .local v2, "now":J
    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/LingerMonitor;->isRateLimited(J)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/LingerMonitor;->isAboveDailyLimit(J)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    return-void

    .line 270
    :cond_5
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/connectivity/LingerMonitor;->notify(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 208
    return-void
.end method
