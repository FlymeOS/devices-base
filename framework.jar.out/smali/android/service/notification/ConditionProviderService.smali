.class public abstract Landroid/service/notification/ConditionProviderService;
.super Landroid/app/Service;
.source "ConditionProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ConditionProviderService$H;,
        Landroid/service/notification/ConditionProviderService$Provider;
    }
.end annotation


# static fields
.field public static final EXTRA_RULE_ID:Ljava/lang/String; = "android.service.notification.extra.RULE_ID"

.field public static final META_DATA_CONFIGURATION_ACTIVITY:Ljava/lang/String; = "android.service.zen.automatic.configurationActivity"

.field public static final META_DATA_RULE_INSTANCE_LIMIT:Ljava/lang/String; = "android.service.zen.automatic.ruleInstanceLimit"

.field public static final META_DATA_RULE_TYPE:Ljava/lang/String; = "android.service.zen.automatic.ruleType"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.ConditionProviderService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mHandler:Landroid/service/notification/ConditionProviderService$H;

.field private mNoMan:Landroid/app/INotificationManager;

.field private mProvider:Landroid/service/notification/ConditionProviderService$Provider;


# direct methods
.method static synthetic -get0(Landroid/service/notification/ConditionProviderService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mHandler:Landroid/service/notification/ConditionProviderService$H;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/notification/ConditionProviderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "["

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Landroid/service/notification/ConditionProviderService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "]"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/service/notification/ConditionProviderService$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/notification/ConditionProviderService$H;-><init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$H;)V

    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->mHandler:Landroid/service/notification/ConditionProviderService$H;

    .line 59
    return-void
.end method

.method private final getNotificationInterface()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mNoMan:Landroid/app/INotificationManager;

    if-nez v0, :cond_0

    .line 123
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->mNoMan:Landroid/app/INotificationManager;

    .line 125
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mNoMan:Landroid/app/INotificationManager;

    return-object v0
.end method

.method private isBound()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Condition provider service not yet bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final notifyCondition(Landroid/service/notification/Condition;)V
    .locals 2
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 137
    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/service/notification/Condition;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/service/notification/ConditionProviderService;->notifyConditions([Landroid/service/notification/Condition;)V

    .line 136
    return-void
.end method

.method public final varargs notifyConditions([Landroid/service/notification/Condition;)V
    .locals 4
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    .line 149
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/notification/ConditionProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    invoke-interface {v1, v2, v3, p1}, Landroid/app/INotificationManager;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Landroid/service/notification/ConditionProviderService$Provider;

    invoke-direct {v0, p0, v1}, Landroid/service/notification/ConditionProviderService$Provider;-><init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$Provider;)V

    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    return-object v0
.end method

.method public abstract onConnected()V
.end method

.method public onRequestConditions(I)V
    .locals 0
    .param p1, "relevance"    # I

    .prologue
    .line 106
    return-void
.end method

.method public abstract onSubscribe(Landroid/net/Uri;)V
.end method

.method public abstract onUnsubscribe(Landroid/net/Uri;)V
.end method
