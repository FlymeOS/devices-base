.class final Landroid/print/PrintJobId$1;
.super Ljava/lang/Object;
.source "PrintJobId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintJobId;
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
        "Landroid/print/PrintJobId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintJobId;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 116
    new-instance v1, Landroid/print/PrintJobId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/print/PrintJobId;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Landroid/print/PrintJobId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintJobId;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/print/PrintJobId;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 121
    new-array v0, p1, [Landroid/print/PrintJobId;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Landroid/print/PrintJobId$1;->newArray(I)[Landroid/print/PrintJobId;

    move-result-object v0

    return-object v0
.end method
