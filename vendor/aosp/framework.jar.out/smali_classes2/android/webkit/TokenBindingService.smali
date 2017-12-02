.class public abstract Landroid/webkit/TokenBindingService;
.super Ljava/lang/Object;
.source "TokenBindingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/TokenBindingService$TokenBindingKey;
    }
.end annotation


# static fields
.field public static final KEY_ALGORITHM_ECDSAP256:Ljava/lang/String; = "ECDSAP256"

.field public static final KEY_ALGORITHM_RSA2048_PKCS_1_5:Ljava/lang/String; = "RSA2048_PKCS_1.5"

.field public static final KEY_ALGORITHM_RSA2048_PSS:Ljava/lang/String; = "RSA2048PSS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/webkit/TokenBindingService;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getTokenBindingService()Landroid/webkit/TokenBindingService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract deleteAllKeys(Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteKey(Landroid/net/Uri;Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract enableTokenBinding()V
.end method

.method public abstract getKey(Landroid/net/Uri;[Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/webkit/TokenBindingService$TokenBindingKey;",
            ">;)V"
        }
    .end annotation
.end method
