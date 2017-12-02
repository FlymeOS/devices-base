.class final Landroid/app/SystemServiceRegistry$17;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/os/DropBoxManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/DropBoxManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    const/4 v3, 0x0

    .line 282
    const-string/jumbo v2, "dropbox"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 283
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IDropBoxManagerService;

    move-result-object v1

    .line 284
    .local v1, "service":Lcom/android/internal/os/IDropBoxManagerService;
    if-nez v1, :cond_0

    .line 289
    return-object v3

    .line 291
    :cond_0
    new-instance v2, Landroid/os/DropBoxManager;

    invoke-direct {v2, p1, v1}, Landroid/os/DropBoxManager;-><init>(Landroid/content/Context;Lcom/android/internal/os/IDropBoxManagerService;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$17;->createService(Landroid/app/ContextImpl;)Landroid/os/DropBoxManager;

    move-result-object v0

    return-object v0
.end method
