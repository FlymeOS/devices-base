.class public Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
.super Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyphraseRecognitionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->fromParcelForKeyphrase(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 988
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent$1;-><init>()V

    .line 987
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 974
    return-void
.end method

.method public constructor <init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "captureAvailable"    # Z
    .param p4, "captureSession"    # I
    .param p5, "captureDelayMs"    # I
    .param p6, "capturePreambleMs"    # I
    .param p7, "triggerInData"    # Z
    .param p8, "captureFormat"    # Landroid/media/AudioFormat;
    .param p9, "data"    # [B
    .param p10, "keyphraseExtras"    # [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .prologue
    .line 982
    invoke-direct/range {p0 .. p9}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B)V

    .line 984
    iput-object p10, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 981
    return-void
.end method

.method private static fromParcelForKeyphrase(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .locals 15
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v14, 0x1

    .line 999
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1000
    .local v1, "status":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1001
    .local v2, "soundModelHandle":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v14, :cond_1

    const/4 v3, 0x1

    .line 1002
    .local v3, "captureAvailable":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1003
    .local v4, "captureSession":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1004
    .local v5, "captureDelayMs":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1005
    .local v6, "capturePreambleMs":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v14, :cond_2

    const/4 v7, 0x1

    .line 1006
    .local v7, "triggerInData":Z
    :goto_1
    const/4 v8, 0x0

    .line 1007
    .local v8, "captureFormat":Landroid/media/AudioFormat;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v14, :cond_0

    .line 1008
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1009
    .local v13, "sampleRate":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1010
    .local v12, "encoding":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1011
    .local v11, "channelMask":I
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, v11}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v8

    .line 1017
    .end local v8    # "captureFormat":Landroid/media/AudioFormat;
    .end local v11    # "channelMask":I
    .end local v12    # "encoding":I
    .end local v13    # "sampleRate":I
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v9

    .line 1019
    .local v9, "data":[B
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 1020
    .local v10, "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    invoke-direct/range {v0 .. v10}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)V

    return-object v0

    .line 1001
    .end local v3    # "captureAvailable":Z
    .end local v4    # "captureSession":I
    .end local v5    # "captureDelayMs":I
    .end local v6    # "capturePreambleMs":I
    .end local v7    # "triggerInData":Z
    .end local v9    # "data":[B
    .end local v10    # "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "captureAvailable":Z
    goto :goto_0

    .line 1005
    .restart local v4    # "captureSession":I
    .restart local v5    # "captureDelayMs":I
    .restart local v6    # "capturePreambleMs":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "triggerInData":Z
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1048
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1061
    if-ne p0, p1, :cond_0

    .line 1062
    return v4

    .line 1063
    :cond_0
    invoke-super {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1064
    return v3

    .line 1065
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 1066
    return v3

    :cond_2
    move-object v0, p1

    .line 1067
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 1068
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1069
    return v3

    .line 1070
    :cond_3
    return v4
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1053
    const/16 v0, 0x1f

    .line 1054
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->hashCode()I

    move-result v1

    .line 1055
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 1056
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KeyphraseRecognitionEvent [keyphraseExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1076
    const-string/jumbo v1, ", status="

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1076
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->status:I

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1077
    const-string/jumbo v1, ", soundModelHandle="

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1077
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->soundModelHandle:I

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1077
    const-string/jumbo v1, ", captureAvailable="

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1078
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureAvailable:Z

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1078
    const-string/jumbo v1, ", captureSession="

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1078
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureSession:I

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1078
    const-string/jumbo v1, ", captureDelayMs="

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1079
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureDelayMs:I

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1079
    const-string/jumbo v1, ", capturePreambleMs="

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1079
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->capturePreambleMs:I

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1080
    const-string/jumbo v1, ", triggerInData="

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1080
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->triggerInData:Z

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1081
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 1075
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1083
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    .line 1075
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1085
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .line 1075
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1087
    const-string/jumbo v1, ", data="

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1087
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->data:[B

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 1075
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1087
    const-string/jumbo v1, "]"

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1082
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", sampleRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1084
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", encoding="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1086
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", channelMask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1087
    :cond_3
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->data:[B

    array-length v0, v0

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1027
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->soundModelHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureAvailable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1030
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureSession:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureDelayMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->capturePreambleMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->triggerInData:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1034
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-eqz v0, :cond_2

    .line 1035
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1036
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    :goto_2
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 1043
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1026
    return-void

    :cond_0
    move v0, v2

    .line 1029
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1033
    goto :goto_1

    .line 1040
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2
.end method
