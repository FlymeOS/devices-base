.class public Lcom/android/ims/internal/uce/presence/PresCapInfo;
.super Ljava/lang/Object;
.source "PresCapInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresCapInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresCapInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

.field private mContactUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCapInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCapInfo$1;-><init>()V

    .line 83
    sput-object v0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCapInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresCapInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCapInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getCapInfo()Lcom/android/ims/internal/uce/common/CapInfo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    return-object v0
.end method

.method public getContactUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    .line 103
    const-class v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/CapInfo;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 101
    return-void
.end method

.method public setCapInfo(Lcom/android/ims/internal/uce/common/CapInfo;)V
    .locals 0
    .param p1, "capInfo"    # Lcom/android/ims/internal/uce/common/CapInfo;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 42
    return-void
.end method

.method public setContactUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactUri"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mContactUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 77
    return-void
.end method
