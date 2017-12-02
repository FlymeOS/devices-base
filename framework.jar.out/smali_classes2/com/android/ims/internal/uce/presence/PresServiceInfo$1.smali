.class final Lcom/android/ims/internal/uce/presence/PresServiceInfo$1;
.super Ljava/lang/Object;
.source "PresServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/PresServiceInfo;
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
        "Lcom/android/ims/internal/uce/presence/PresServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 132
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/ims/internal/uce/presence/PresServiceInfo;-><init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresServiceInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 136
    new-array v0, p1, [Lcom/android/ims/internal/uce/presence/PresServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresServiceInfo$1;->newArray(I)[Lcom/android/ims/internal/uce/presence/PresServiceInfo;

    move-result-object v0

    return-object v0
.end method
