.class final Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;
.super Ljava/lang/Object;
.source "OptionsCapInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/OptionsCapInfo;
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
        "Lcom/android/ims/internal/uce/options/OptionsCapInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 71
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;-><init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsCapInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 75
    new-array v0, p1, [Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;->newArray(I)[Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    move-result-object v0

    return-object v0
.end method
