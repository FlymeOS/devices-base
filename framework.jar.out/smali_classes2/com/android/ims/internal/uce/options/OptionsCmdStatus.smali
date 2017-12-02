.class public Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
.super Ljava/lang/Object;
.source "OptionsCmdStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/OptionsCmdStatus$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/options/OptionsCmdStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

.field private mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

.field private mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

.field private mUserData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdStatus$1;-><init>()V

    .line 125
    sput-object v0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/StatusCode;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    .line 85
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 86
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsCmdStatus;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getOptionsCmdStatusInstance()Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getCapInfo()Lcom/android/ims/internal/uce/common/CapInfo;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    return-object v0
.end method

.method public getCmdId()Lcom/android/ims/internal/uce/options/OptionsCmdId;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    return-object v0
.end method

.method public getStatus()Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    return-object v0
.end method

.method public getUserData()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    .line 143
    const-class v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 144
    const-class v0, Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    .line 145
    const-class v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/CapInfo;

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 141
    return-void
.end method

.method public setCapInfo(Lcom/android/ims/internal/uce/common/CapInfo;)V
    .locals 0
    .param p1, "capInfo"    # Lcom/android/ims/internal/uce/common/CapInfo;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 99
    return-void
.end method

.method public setCmdId(Lcom/android/ims/internal/uce/options/OptionsCmdId;)V
    .locals 0
    .param p1, "cmdId"    # Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 44
    return-void
.end method

.method public setStatus(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .locals 0
    .param p1, "status"    # Lcom/android/ims/internal/uce/common/StatusCode;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    .line 75
    return-void
.end method

.method public setUserData(I)V
    .locals 0
    .param p1, "userData"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 118
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mUserData:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mStatus:Lcom/android/ims/internal/uce/common/StatusCode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 121
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    return-void
.end method
