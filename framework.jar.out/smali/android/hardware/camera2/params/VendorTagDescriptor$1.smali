.class final Landroid/hardware/camera2/params/VendorTagDescriptor$1;
.super Ljava/lang/Object;
.source "VendorTagDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/VendorTagDescriptor;
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
        "Landroid/hardware/camera2/params/VendorTagDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/VendorTagDescriptor;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 40
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/params/VendorTagDescriptor;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/hardware/camera2/params/VendorTagDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/VendorTagDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .local v1, "vendorDescriptor":Landroid/hardware/camera2/params/VendorTagDescriptor;
    return-object v1

    .line 42
    .end local v1    # "vendorDescriptor":Landroid/hardware/camera2/params/VendorTagDescriptor;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "VendorTagDescriptor"

    const-string/jumbo v3, "Exception creating VendorTagDescriptor from parcel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/VendorTagDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/camera2/params/VendorTagDescriptor;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 50
    new-array v0, p1, [Landroid/hardware/camera2/params/VendorTagDescriptor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/VendorTagDescriptor$1;->newArray(I)[Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object v0

    return-object v0
.end method
