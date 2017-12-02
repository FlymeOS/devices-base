.class public final Lcom/android/server/wifi/WifiService;
.super Lcom/android/server/SystemService;
.source "WifiService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiService"


# instance fields
.field final mImpl:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    .line 29
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 42
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V

    .line 41
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "WifiService"

    const-string/jumbo v1, "Registering wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string/jumbo v0, "wifi"

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 35
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mImpl:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->handleUserSwitch(I)V

    .line 48
    return-void
.end method
