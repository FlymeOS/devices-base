.class public Lcom/android/ims/ImsStreamMediaProfile;
.super Ljava/lang/Object;
.source "ImsStreamMediaProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsStreamMediaProfile$1;
    }
.end annotation


# static fields
.field public static final AUDIO_QUALITY_AMR:I = 0x1

.field public static final AUDIO_QUALITY_AMR_WB:I = 0x2

.field public static final AUDIO_QUALITY_EVRC:I = 0x4

.field public static final AUDIO_QUALITY_EVRC_B:I = 0x5

.field public static final AUDIO_QUALITY_EVRC_NW:I = 0x7

.field public static final AUDIO_QUALITY_EVRC_WB:I = 0x6

.field public static final AUDIO_QUALITY_GSM_EFR:I = 0x8

.field public static final AUDIO_QUALITY_GSM_FR:I = 0x9

.field public static final AUDIO_QUALITY_GSM_HR:I = 0xa

.field public static final AUDIO_QUALITY_NONE:I = 0x0

.field public static final AUDIO_QUALITY_QCELP13K:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsStreamMediaProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECTION_INACTIVE:I = 0x0

.field public static final DIRECTION_INVALID:I = -0x1

.field public static final DIRECTION_RECEIVE:I = 0x1

.field public static final DIRECTION_SEND:I = 0x2

.field public static final DIRECTION_SEND_RECEIVE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ImsStreamMediaProfile"

.field public static final VIDEO_QUALITY_NONE:I = 0x0

.field public static final VIDEO_QUALITY_QCIF:I = 0x1

.field public static final VIDEO_QUALITY_QVGA_LANDSCAPE:I = 0x2

.field public static final VIDEO_QUALITY_QVGA_PORTRAIT:I = 0x4

.field public static final VIDEO_QUALITY_VGA_LANDSCAPE:I = 0x8

.field public static final VIDEO_QUALITY_VGA_PORTRAIT:I = 0x10


# instance fields
.field public mAudioDirection:I

.field public mAudioQuality:I

.field public mVideoDirection:I

.field public mVideoQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile$1;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile$1;-><init>()V

    .line 128
    sput-object v0, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 78
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "audioQuality"    # I
    .param p2, "audioDirection"    # I
    .param p3, "videoQuality"    # I
    .param p4, "videoDirection"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 88
    iput p2, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 89
    iput p3, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 90
    iput p4, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-direct {p0, p1}, Lcom/android/ims/ImsStreamMediaProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 74
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 121
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 94
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 95
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 96
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 97
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 93
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ audioQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string/jumbo v1, ", audioDirection="

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const-string/jumbo v1, ", videoQuality="

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string/jumbo v1, ", videoDirection="

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string/jumbo v1, " }"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return-void
.end method
