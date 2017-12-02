.class public final Lcom/android/server/RecoverySystemService;
.super Lcom/android/server/SystemService;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RecoverySystemService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INIT_SERVICE_CLEAR_BCB:Ljava/lang/String; = "init.svc.clear-bcb"

.field private static final INIT_SERVICE_SETUP_BCB:Ljava/lang/String; = "init.svc.setup-bcb"

.field private static final INIT_SERVICE_UNCRYPT:Ljava/lang/String; = "init.svc.uncrypt"

.field private static final SOCKET_CONNECTION_MAX_RETRY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "RecoverySystemService"

.field private static final UNCRYPT_SOCKET:Ljava/lang/String; = "uncrypt"

.field private static final sRequestLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object p1, p0, Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 72
    const-string/jumbo v0, "recovery"

    new-instance v1, Lcom/android/server/RecoverySystemService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/RecoverySystemService$BinderService;-><init>(Lcom/android/server/RecoverySystemService;Lcom/android/server/RecoverySystemService$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/RecoverySystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 71
    return-void
.end method
