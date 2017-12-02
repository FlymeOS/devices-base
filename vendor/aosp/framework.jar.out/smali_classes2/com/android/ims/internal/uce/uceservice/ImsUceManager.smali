.class public Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
.super Ljava/lang/Object;
.source "ImsUceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final ACTION_UCE_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_DOWN"

.field public static final ACTION_UCE_SERVICE_UP:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_UP"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUceManager"

.field private static final UCE_SERVICE:Ljava/lang/String; = "uce"

.field public static final UCE_SERVICE_STATUS_CLOSED:I = 0x2

.field public static final UCE_SERVICE_STATUS_FAILURE:I = 0x0

.field public static final UCE_SERVICE_STATUS_ON:I = 0x1

.field public static final UCE_SERVICE_STATUS_READY:I = 0x3

.field private static sUceManagerInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/internal/uce/uceservice/ImsUceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

.field private mPhoneId:I

.field private mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;


# direct methods
.method static synthetic -get0(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/IUceService;)Lcom/android/ims/internal/uce/uceservice/IUceService;
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    sput-object v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    .line 50
    new-instance v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;-><init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;)V

    iput-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    .line 110
    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    .line 111
    iput p2, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->createUceService(Z)V

    .line 108
    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    .line 93
    sget-object v2, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    monitor-enter v2

    .line 94
    :try_start_0
    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 97
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;-><init>(Landroid/content/Context;I)V

    .line 98
    .local v0, "uceMgr":Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 99
    return-object v0

    .line 93
    .end local v0    # "uceMgr":Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getUceServiceName(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 133
    const-string/jumbo v0, "uce"

    return-object v0
.end method


# virtual methods
.method public createUceService(Z)V
    .locals 5
    .param p1, "checkService"    # Z

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget v3, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    invoke-direct {p0, v3}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 148
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 150
    return-void

    .line 153
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_0
    iget v3, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mPhoneId:I

    invoke-direct {p0, v3}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 155
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    .line 143
    return-void

    .line 158
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getUceServiceInstance()Lcom/android/ims/internal/uce/uceservice/IUceService;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object v0
.end method
