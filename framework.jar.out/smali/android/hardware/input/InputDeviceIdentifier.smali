.class public final Landroid/hardware/input/InputDeviceIdentifier;
.super Ljava/lang/Object;
.source "InputDeviceIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputDeviceIdentifier$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/input/InputDeviceIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDescriptor:Ljava/lang/String;

.field private final mProductId:I

.field private final mVendorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Landroid/hardware/input/InputDeviceIdentifier$1;

    invoke-direct {v0}, Landroid/hardware/input/InputDeviceIdentifier$1;-><init>()V

    .line 86
    sput-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "vendorId"    # I
    .param p3, "productId"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    .line 37
    iput p2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    .line 38
    iput p3, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 73
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 74
    :cond_0
    if-eqz p1, :cond_2

    instance-of v2, p1, Landroid/hardware/input/InputDeviceIdentifier;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 76
    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 77
    .local v0, "that":Landroid/hardware/input/InputDeviceIdentifier;
    iget v2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    iget v3, v0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    iget v3, v0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    if-ne v2, v3, :cond_1

    .line 78
    iget-object v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 77
    :cond_1
    return v1

    .line 74
    .end local v0    # "that":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_2
    return v1
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    return v0
.end method

.method public getVendorId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 54
    iget-object v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Landroid/hardware/input/InputDeviceIdentifier;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method
