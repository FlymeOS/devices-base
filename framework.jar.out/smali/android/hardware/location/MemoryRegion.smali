.class public Landroid/hardware/location/MemoryRegion;
.super Ljava/lang/Object;
.source "MemoryRegion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/MemoryRegion$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/MemoryRegion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsExecutable:Z

.field private mIsReadable:Z

.field private mIsWritable:Z

.field private mSizeBytes:I

.field private mSizeBytesFree:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Landroid/hardware/location/MemoryRegion$1;

    invoke-direct {v0}, Landroid/hardware/location/MemoryRegion$1;-><init>()V

    .line 130
    sput-object v0, Landroid/hardware/location/MemoryRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 125
    goto :goto_0

    :cond_1
    move v0, v2

    .line 126
    goto :goto_1

    :cond_2
    move v1, v2

    .line 127
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getCapacityBytes()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    return v0
.end method

.method public getFreeCapacityBytes()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    return v0
.end method

.method public isExecutable()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    return v0
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    const-string/jumbo v0, ""

    .line 85
    .local v0, "mask":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_1
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isExecutable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "retVal":Ljava/lang/String;
    return-object v1

    .line 88
    .end local v1    # "retVal":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 100
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return-void

    :cond_0
    move v0, v2

    .line 117
    goto :goto_0

    :cond_1
    move v0, v2

    .line 118
    goto :goto_1

    :cond_2
    move v1, v2

    .line 119
    goto :goto_2
.end method
