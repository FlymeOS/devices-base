.class public Lcom/android/server/accounts/AccountManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 151
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Lifecycle;->mService:Lcom/android/server/accounts/AccountManagerService;

    .line 158
    const-string/jumbo v0, "account"

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Lifecycle;->mService:Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 156
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Lifecycle;->mService:Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUnlockUser(I)V

    .line 162
    return-void
.end method
