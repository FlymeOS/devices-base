.class public abstract Landroid/webkit/IWebViewUpdateService$Stub;
.super Landroid/os/Binder;
.source "IWebViewUpdateService.java"

# interfaces
.implements Landroid/webkit/IWebViewUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/IWebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/IWebViewUpdateService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.webkit.IWebViewUpdateService"

.field static final TRANSACTION_changeProviderAndSetting:I = 0x3

.field static final TRANSACTION_enableFallbackLogic:I = 0x8

.field static final TRANSACTION_getAllWebViewPackages:I = 0x5

.field static final TRANSACTION_getCurrentWebViewPackageName:I = 0x6

.field static final TRANSACTION_getValidWebViewPackages:I = 0x4

.field static final TRANSACTION_isFallbackPackage:I = 0x7

.field static final TRANSACTION_notifyRelroCreationCompleted:I = 0x1

.field static final TRANSACTION_waitForAndGetProvider:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p0, p0, v0}, Landroid/webkit/IWebViewUpdateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.webkit.IWebViewUpdateService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/webkit/IWebViewUpdateService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/webkit/IWebViewUpdateService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 46
    :sswitch_0
    const-string/jumbo v6, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v7

    .line 51
    :sswitch_1
    const-string/jumbo v6, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->notifyRelroCreationCompleted()V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v7

    .line 58
    :sswitch_2
    const-string/jumbo v8, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v2

    .line 60
    .local v2, "_result":Landroid/webkit/WebViewProviderResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v2, p3, v7}, Landroid/webkit/WebViewProviderResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    :goto_0
    return v7

    .line 66
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v2    # "_result":Landroid/webkit/WebViewProviderResponse;
    :sswitch_3
    const-string/jumbo v6, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/webkit/IWebViewUpdateService$Stub;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return v7

    .line 82
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v6, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v5

    .line 84
    .local v5, "_result":[Landroid/webkit/WebViewProviderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v5, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 86
    return v7

    .line 90
    .end local v5    # "_result":[Landroid/webkit/WebViewProviderInfo;
    :sswitch_5
    const-string/jumbo v6, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v5

    .line 92
    .restart local v5    # "_result":[Landroid/webkit/WebViewProviderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v5, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 94
    return v7

    .line 98
    .end local v5    # "_result":[Landroid/webkit/WebViewProviderInfo;
    :sswitch_6
    const-string/jumbo v6, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v3

    .line 100
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v7

    .line 106
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v8, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/webkit/IWebViewUpdateService$Stub;->isFallbackPackage(Ljava/lang/String;)Z

    move-result v4

    .line 110
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v7

    .line 116
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_8
    const-string/jumbo v8, "android.webkit.IWebViewUpdateService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v1, v7

    .line 119
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Landroid/webkit/IWebViewUpdateService$Stub;->enableFallbackLogic(Z)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    return v7

    .end local v1    # "_arg0":Z
    :cond_2
    move v1, v6

    .line 118
    goto :goto_1

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
