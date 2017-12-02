.class Lcom/android/server/ContextHubSystemService;
.super Lcom/android/server/SystemService;
.source "ContextHubSystemService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextHubSystemService"


# instance fields
.field private final mContextHubService:Landroid/hardware/location/ContextHubService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/hardware/location/ContextHubService;

    invoke-direct {v0, p1}, Landroid/hardware/location/ContextHubService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Landroid/hardware/location/ContextHubService;

    .line 27
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 38
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 39
    const-string/jumbo v0, "ContextHubSystemService"

    const-string/jumbo v1, "onBootPhase: PHASE_SYSTEM_SERVICES_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string/jumbo v0, "contexthub_service"

    iget-object v1, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Landroid/hardware/location/ContextHubService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ContextHubSystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 37
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
