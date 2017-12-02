.class public Landroid/hardware/location/ContextHubMessage;
.super Ljava/lang/Object;
.source "ContextHubMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubMessage$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/ContextHubMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContextHubMessage"


# instance fields
.field private mData:[B

.field private mType:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Landroid/hardware/location/ContextHubMessage$1;

    invoke-direct {v0}, Landroid/hardware/location/ContextHubMessage$1;-><init>()V

    .line 124
    sput-object v0, Landroid/hardware/location/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .param p1, "msgType"    # I
    .param p2, "version"    # I
    .param p3, "data"    # [B

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    .line 101
    iput p2, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    .line 102
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    .line 99
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, "bufferLength":I
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    .line 114
    iget-object v1, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/ContextHubMessage;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/location/ContextHubMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    iget-object v1, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    return v0
.end method

.method public setMsgData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 89
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    .line 88
    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .param p1, "msgType"    # I

    .prologue
    .line 71
    iput p1, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    .line 70
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 80
    iput p1, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 118
    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/hardware/location/ContextHubMessage;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Landroid/hardware/location/ContextHubMessage;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 117
    return-void
.end method
