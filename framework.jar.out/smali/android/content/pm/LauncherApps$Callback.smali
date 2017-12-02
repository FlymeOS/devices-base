.class public abstract Landroid/content/pm/LauncherApps$Callback;
.super Ljava/lang/Object;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
.end method

.method public onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 152
    return-void
.end method

.method public abstract onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 164
    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    return-void
.end method
