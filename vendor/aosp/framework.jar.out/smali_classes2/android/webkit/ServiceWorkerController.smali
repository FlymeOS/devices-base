.class public abstract Landroid/webkit/ServiceWorkerController;
.super Ljava/lang/Object;
.source "ServiceWorkerController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/webkit/ServiceWorkerController;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getServiceWorkerController()Landroid/webkit/ServiceWorkerController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getServiceWorkerWebSettings()Landroid/webkit/ServiceWorkerWebSettings;
.end method

.method public abstract setServiceWorkerClient(Landroid/webkit/ServiceWorkerClient;)V
.end method
