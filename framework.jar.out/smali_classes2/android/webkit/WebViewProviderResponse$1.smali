.class final Landroid/webkit/WebViewProviderResponse$1;
.super Ljava/lang/Object;
.source "WebViewProviderResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewProviderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/webkit/WebViewProviderResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/webkit/WebViewProviderResponse;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 35
    new-instance v0, Landroid/webkit/WebViewProviderResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/os/Parcel;Landroid/webkit/WebViewProviderResponse;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewProviderResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/webkit/WebViewProviderResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/webkit/WebViewProviderResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 39
    new-array v0, p1, [Landroid/webkit/WebViewProviderResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewProviderResponse$1;->newArray(I)[Landroid/webkit/WebViewProviderResponse;

    move-result-object v0

    return-object v0
.end method
