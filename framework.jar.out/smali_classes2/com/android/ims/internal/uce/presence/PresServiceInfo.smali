.class public Lcom/android/ims/internal/uce/presence/PresServiceInfo;
.super Ljava/lang/Object;
.source "PresServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final UCE_PRES_MEDIA_CAP_FULL_AUDIO_AND_VIDEO:I = 0x2

.field public static final UCE_PRES_MEDIA_CAP_FULL_AUDIO_ONLY:I = 0x1

.field public static final UCE_PRES_MEDIA_CAP_NONE:I = 0x0

.field public static final UCE_PRES_MEDIA_CAP_UNKNOWN:I = 0x3


# instance fields
.field private mMediaCap:I

.field private mServiceDesc:Ljava/lang/String;

.field private mServiceID:Ljava/lang/String;

.field private mServiceVer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresServiceInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresServiceInfo$1;-><init>()V

    .line 128
    sput-object v0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mMediaCap:I

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceID:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceDesc:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceVer:Ljava/lang/String;

    .line 111
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mMediaCap:I

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceID:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceDesc:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceVer:Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresServiceInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mMediaCap:I

    return v0
.end method

.method public getServiceDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceID:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceVer:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceID:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceDesc:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceVer:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mMediaCap:I

    .line 146
    return-void
.end method

.method public setMediaType(I)V
    .locals 0
    .param p1, "nMediaCap"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mMediaCap:I

    .line 56
    return-void
.end method

.method public setServiceDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceDesc"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceDesc:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceID"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceID:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setServiceVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceVer"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceVer:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mServiceVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->mMediaCap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void
.end method
