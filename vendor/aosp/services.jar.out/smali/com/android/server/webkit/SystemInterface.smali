.class public interface abstract Lcom/android/server/webkit/SystemInterface;
.super Ljava/lang/Object;
.source "SystemInterface.java"


# virtual methods
.method public abstract enableFallbackLogic(Z)V
.end method

.method public abstract enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V
.end method

.method public abstract enablePackageForUser(Ljava/lang/String;ZI)V
.end method

.method public abstract getFactoryPackageVersion(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
.end method

.method public abstract isFallbackLogicEnabled()Z
.end method

.method public abstract killPackageDependents(Ljava/lang/String;)V
.end method

.method public abstract onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
.end method

.method public abstract systemIsDebuggable()Z
.end method

.method public abstract uninstallAndDisablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
.end method
