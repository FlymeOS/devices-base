.class final Landroid/telecom/ParcelableConference$1;
.super Ljava/lang/Object;
.source "ParcelableConference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableConference;
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
        "Landroid/telecom/ParcelableConference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConference;
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 99
    const-class v1, Landroid/telecom/ParcelableConference;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 100
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 101
    .local v2, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 102
    .local v3, "state":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 103
    .local v4, "capabilities":I
    new-instance v5, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v5, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v5, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 107
    .local v6, "connectTimeMillis":J
    new-instance v1, Landroid/telecom/ParcelableConference;

    invoke-direct/range {v1 .. v7}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;J)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConference$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConference;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/ParcelableConference;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 113
    new-array v0, p1, [Landroid/telecom/ParcelableConference;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConference$1;->newArray(I)[Landroid/telecom/ParcelableConference;

    move-result-object v0

    return-object v0
.end method
