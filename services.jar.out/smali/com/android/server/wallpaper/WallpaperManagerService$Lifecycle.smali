.class public Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 133
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->mService:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->mService:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->mService:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 128
    const-string/jumbo v0, "wallpaper"

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->mService:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 126
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->mService:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onUnlockUser(I)V

    .line 141
    return-void
.end method
