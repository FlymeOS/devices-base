.class public Lcom/android/server/notification/NotificationFirewallImpl;
.super Ljava/lang/Object;
.source "NotificationFirewallImpl.java"

# interfaces
.implements Lcom/android/server/notification/NotificationFirewall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationFirewallImpl$H;,
        Lcom/android/server/notification/NotificationFirewallImpl$StatusBarNotificationHolder;
    }
.end annotation


# static fields
.field private static final DISTINGUISH_NOTIFICATION:I = 0x1

.field private static FILTER_ACTION_NAME:Ljava/lang/String;

.field public static final INTERCEPT_SYSTEM_APP_NOTIFICATION:Z

.field private static SYSTEM_UI_TOOLS:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final INTERCEPT_NOTIFICATION_TIME_OUT:I

.field private conn:Landroid/content/ServiceConnection;

.field public final mCondition:Ljava/util/concurrent/locks/Condition;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNotificationKey:Ljava/lang/String;

.field private mResult:Lmeizu/notification/FilterResult;

.field private remoteService:Lmeizu/notification/INotificationFilterService;


# direct methods
.method static synthetic -get0(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/notification/NotificationFirewallImpl;)Lmeizu/notification/INotificationFilterService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/notification/NotificationFirewallImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/FilterResult;)Lmeizu/notification/FilterResult;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mResult:Lmeizu/notification/FilterResult;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/INotificationFilterService;)Lmeizu/notification/INotificationFilterService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/NotificationFirewallImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationFirewallImpl;->startService()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "NotificationFirewall"

    sput-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "com.meizu.notification.FILTER"

    sput-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->FILTER_ACTION_NAME:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "com.flyme.systemuitools"

    sput-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->SYSTEM_UI_TOOLS:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 46
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->INTERCEPT_NOTIFICATION_TIME_OUT:I

    .line 32
    return-void
.end method

.method private hasRemoteInput(Landroid/service/notification/StatusBarNotification;)Z
    .locals 11
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v5, 0x0

    .line 206
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v1, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 207
    .local v1, "actions":[Landroid/app/Notification$Action;
    const/4 v2, 0x0

    .line 208
    .local v2, "hasRemoteInput":Z
    if-eqz v1, :cond_2

    .line 209
    array-length v7, v1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v1, v6

    .line 210
    .local v0, "a":Landroid/app/Notification$Action;
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v8

    array-length v9, v8

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_0

    aget-object v3, v8, v4

    .line 212
    .local v3, "ri":Landroid/app/RemoteInput;
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 213
    const/4 v2, 0x1

    .line 209
    .end local v3    # "ri":Landroid/app/RemoteInput;
    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 211
    .restart local v3    # "ri":Landroid/app/RemoteInput;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 220
    .end local v0    # "a":Landroid/app/Notification$Action;
    .end local v3    # "ri":Landroid/app/RemoteInput;
    :cond_2
    return v2
.end method

.method private startService()V
    .locals 5

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/android/server/notification/NotificationFirewallImpl;->FILTER_ACTION_NAME:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/server/notification/NotificationFirewallImpl;->SYSTEM_UI_TOOLS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl;->conn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method


# virtual methods
.method public decreaseScore(Lmeizu/notification/RankingDaily;)F
    .locals 3
    .param p1, "preDaily"    # Lmeizu/notification/RankingDaily;

    .prologue
    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v2, p1}, Lmeizu/notification/INotificationFilterService;->decreaseScore(Lmeizu/notification/RankingDaily;)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 199
    :catch_0
    move-exception v0

    .line 202
    :cond_0
    :goto_0
    iget v2, p1, Lmeizu/notification/RankingDaily;->score:F

    return v2

    .line 200
    :catch_1
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public getRankingScoreBase(Ljava/lang/String;II)F
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notificationPriority"    # I
    .param p3, "categoryPriority"    # I

    .prologue
    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v2, p1, p2, p3}, Lmeizu/notification/INotificationFilterService;->getRankingScoreBase(Ljava/lang/String;II)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 229
    :catch_0
    move-exception v0

    .line 232
    :cond_0
    :goto_0
    const/high16 v2, 0x42340000    # 45.0f

    return v2

    .line 230
    :catch_1
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public increaseScore(Lmeizu/notification/RankingDaily;)F
    .locals 3
    .param p1, "preDaily"    # Lmeizu/notification/RankingDaily;

    .prologue
    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v2, p1}, Lmeizu/notification/INotificationFilterService;->increaseScore(Lmeizu/notification/RankingDaily;)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 187
    :catch_0
    move-exception v0

    .line 190
    :cond_0
    :goto_0
    iget v2, p1, Lmeizu/notification/RankingDaily;->score:F

    return v2

    .line 188
    :catch_1
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/android/server/notification/NotificationFirewallImpl$H;

    invoke-direct {v0, p0, p2}, Lcom/android/server/notification/NotificationFirewallImpl$H;-><init>(Lcom/android/server/notification/NotificationFirewallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/android/server/notification/NotificationFirewallImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationFirewallImpl$1;-><init>(Lcom/android/server/notification/NotificationFirewallImpl;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->conn:Landroid/content/ServiceConnection;

    .line 81
    invoke-direct {p0}, Lcom/android/server/notification/NotificationFirewallImpl;->startService()V

    .line 65
    return-void
.end method

.method public interceptNotification(Landroid/service/notification/StatusBarNotification;ZZZ)I
    .locals 9
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isSystemNotification"    # Z
    .param p3, "isSystemApp"    # Z
    .param p4, "isClearable"    # Z

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "intercept":Z
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v5, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->disableAuthorityManagement:Z

    if-nez v5, :cond_0

    if-eqz p4, :cond_0

    .line 140
    sget-object v5, Lcom/android/server/notification/CloudNotificationHelper;->TOOLS_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    const/4 v5, -0x1

    return v5

    .line 138
    :cond_0
    const/4 v5, -0x1

    return v5

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/notification/CloudNotificationHelper;->getGreenChannelType(Landroid/app/Notification;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 144
    const/4 v5, -0x1

    return v5

    .line 146
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationFirewallImpl;->hasRemoteInput(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 147
    const/4 v5, -0x1

    return v5

    .line 151
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 152
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    .line 153
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mResult:Lmeizu/notification/FilterResult;

    .line 154
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-object v6, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_5

    const/4 v5, 0x1

    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 156
    .local v2, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 158
    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mResult:Lmeizu/notification/FilterResult;

    .line 159
    .local v3, "result":Lmeizu/notification/FilterResult;
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 160
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-object v6, v3, Lmeizu/notification/FilterResult;->category:Ljava/lang/String;

    iput-object v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    .line 161
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v3, Lmeizu/notification/FilterResult;->categoryPriority:I

    iput v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    .line 162
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v3, Lmeizu/notification/FilterResult;->notificationPriority:I

    iput v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    .line 163
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-object v6, v3, Lmeizu/notification/FilterResult;->tag:Ljava/lang/String;

    iput-object v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    .line 164
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-object v6, v3, Lmeizu/notification/FilterResult;->extras:Landroid/os/Bundle;

    iput-object v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    .line 165
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v6, v3, Lmeizu/notification/FilterResult;->intercept:Z

    iput-boolean v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    .line 166
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v6, v3, Lmeizu/notification/FilterResult;->shouldAffectRanking:Z

    iput-boolean v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    .line 167
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v6, v3, Lmeizu/notification/FilterResult;->shouldAffectIntercept:Z

    iput-boolean v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    .line 168
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v3, Lmeizu/notification/FilterResult;->score:F

    iput v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    .line 169
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v3, Lmeizu/notification/FilterResult;->score_scale:F

    iput v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    .line 170
    iget-boolean v1, v3, Lmeizu/notification/FilterResult;->intercept:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v1    # "intercept":Z
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "result":Lmeizu/notification/FilterResult;
    :cond_4
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    :goto_1
    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v5, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    if-eqz v5, :cond_7

    if-eqz v1, :cond_6

    const/4 v5, 0x1

    :goto_2
    return v5

    .line 155
    .restart local v1    # "intercept":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v4

    .line 176
    .local v4, "throwable":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 173
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 175
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    .line 176
    iget-object v6, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    throw v5

    .line 178
    .end local v1    # "intercept":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public offsetScore(Lmeizu/notification/RankingDaily;J)F
    .locals 4
    .param p1, "preDaily"    # Lmeizu/notification/RankingDaily;
    .param p2, "postDate"    # J

    .prologue
    .line 238
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v2, p1, p2, p3}, Lmeizu/notification/INotificationFilterService;->offsetScore(Lmeizu/notification/RankingDaily;J)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 241
    :catch_0
    move-exception v0

    .line 244
    :cond_0
    :goto_0
    iget v2, p1, Lmeizu/notification/RankingDaily;->score:F

    return v2

    .line 242
    :catch_1
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method
