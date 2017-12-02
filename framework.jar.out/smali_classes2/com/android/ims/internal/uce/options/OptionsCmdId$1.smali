.class final Lcom/android/ims/internal/uce/options/OptionsCmdId$1;
.super Ljava/lang/Object;
.source "OptionsCmdId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/OptionsCmdId;
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
        "Lcom/android/ims/internal/uce/options/OptionsCmdId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/options/OptionsCmdId;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 82
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/ims/internal/uce/options/OptionsCmdId;-><init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsCmdId;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCmdId$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/options/OptionsCmdId;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/ims/internal/uce/options/OptionsCmdId;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 86
    new-array v0, p1, [Lcom/android/ims/internal/uce/options/OptionsCmdId;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCmdId$1;->newArray(I)[Lcom/android/ims/internal/uce/options/OptionsCmdId;

    move-result-object v0

    return-object v0
.end method
