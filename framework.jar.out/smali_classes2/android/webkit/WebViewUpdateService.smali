.class public final Landroid/webkit/WebViewUpdateService;
.super Ljava/lang/Object;
.source "WebViewUpdateService.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 2

    .prologue
    .line 35
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v1

    invoke-interface {v1}, Landroid/webkit/IWebViewUpdateService;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v1

    invoke-interface {v1}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method public static getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 2

    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v1

    invoke-interface {v1}, Landroid/webkit/IWebViewUpdateService;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
