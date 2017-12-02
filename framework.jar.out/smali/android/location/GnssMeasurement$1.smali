.class final Landroid/location/GnssMeasurement$1;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurement;
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
        "Landroid/location/GnssMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 852
    new-instance v0, Landroid/location/GnssMeasurement;

    invoke-direct {v0}, Landroid/location/GnssMeasurement;-><init>()V

    .line 854
    .local v0, "gnssMeasurement":Landroid/location/GnssMeasurement;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set9(Landroid/location/GnssMeasurement;I)I

    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set17(Landroid/location/GnssMeasurement;I)I

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set8(Landroid/location/GnssMeasurement;I)I

    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set18(Landroid/location/GnssMeasurement;D)D

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set16(Landroid/location/GnssMeasurement;I)I

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set13(Landroid/location/GnssMeasurement;J)J

    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set14(Landroid/location/GnssMeasurement;J)J

    .line 861
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set7(Landroid/location/GnssMeasurement;D)D

    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set11(Landroid/location/GnssMeasurement;D)D

    .line 863
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set12(Landroid/location/GnssMeasurement;D)D

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set1(Landroid/location/GnssMeasurement;I)I

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set0(Landroid/location/GnssMeasurement;D)D

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set2(Landroid/location/GnssMeasurement;D)D

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set4(Landroid/location/GnssMeasurement;F)F

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set3(Landroid/location/GnssMeasurement;J)J

    .line 869
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set5(Landroid/location/GnssMeasurement;D)D

    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set6(Landroid/location/GnssMeasurement;D)D

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-set10(Landroid/location/GnssMeasurement;I)I

    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GnssMeasurement;->-set15(Landroid/location/GnssMeasurement;D)D

    .line 874
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/GnssMeasurement;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 879
    new-array v0, p1, [Landroid/location/GnssMeasurement;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 878
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->newArray(I)[Landroid/location/GnssMeasurement;

    move-result-object v0

    return-object v0
.end method
