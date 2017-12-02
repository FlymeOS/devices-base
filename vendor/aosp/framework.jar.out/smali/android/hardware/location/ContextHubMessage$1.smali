.class final Landroid/hardware/location/ContextHubMessage$1;
.super Ljava/lang/Object;
.source "ContextHubMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubMessage;
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
        "Landroid/hardware/location/ContextHubMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ContextHubMessage;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 127
    new-instance v0, Landroid/hardware/location/ContextHubMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/location/ContextHubMessage;-><init>(Landroid/os/Parcel;Landroid/hardware/location/ContextHubMessage;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Landroid/hardware/location/ContextHubMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ContextHubMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/location/ContextHubMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Landroid/hardware/location/ContextHubMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/hardware/location/ContextHubMessage$1;->newArray(I)[Landroid/hardware/location/ContextHubMessage;

    move-result-object v0

    return-object v0
.end method
