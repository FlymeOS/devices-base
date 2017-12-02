.class final Landroid/webkit/WebViewProviderInfo$1;
.super Ljava/lang/Object;
.source "WebViewProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewProviderInfo;
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
        "Landroid/webkit/WebViewProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/webkit/WebViewProviderInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    new-instance v0, Landroid/webkit/WebViewProviderInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/webkit/WebViewProviderInfo;-><init>(Landroid/os/Parcel;Landroid/webkit/WebViewProviderInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewProviderInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/webkit/WebViewProviderInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 48
    new-array v0, p1, [Landroid/webkit/WebViewProviderInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewProviderInfo$1;->newArray(I)[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method
