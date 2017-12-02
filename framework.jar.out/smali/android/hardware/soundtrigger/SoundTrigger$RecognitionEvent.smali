.class public Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final captureAvailable:Z

.field public final captureDelayMs:I

.field public captureFormat:Landroid/media/AudioFormat;

.field public final capturePreambleMs:I

.field public final captureSession:I

.field public final data:[B

.field public final soundModelHandle:I

.field public final status:I

.field public final triggerInData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 588
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent$1;-><init>()V

    .line 587
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 549
    return-void
.end method

.method public constructor <init>(IIZIIIZLandroid/media/AudioFormat;[B)V
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

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    .line 577
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    .line 578
    iput-boolean p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    .line 579
    iput p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    .line 580
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    .line 581
    iput p6, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    .line 582
    iput-boolean p7, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    .line 583
    iput-object p8, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    .line 584
    iput-object p9, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    .line 575
    return-void
.end method

.method protected static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .locals 14
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v13, 0x1

    .line 599
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 600
    .local v1, "status":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 601
    .local v2, "soundModelHandle":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v13, :cond_1

    const/4 v3, 0x1

    .line 602
    .local v3, "captureAvailable":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 603
    .local v4, "captureSession":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 604
    .local v5, "captureDelayMs":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 605
    .local v6, "capturePreambleMs":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v13, :cond_2

    const/4 v7, 0x1

    .line 606
    .local v7, "triggerInData":Z
    :goto_1
    const/4 v8, 0x0

    .line 607
    .local v8, "captureFormat":Landroid/media/AudioFormat;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v13, :cond_0

    .line 608
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 609
    .local v12, "sampleRate":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 610
    .local v11, "encoding":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 611
    .local v10, "channelMask":I
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, v10}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v8

    .line 617
    .end local v8    # "captureFormat":Landroid/media/AudioFormat;
    .end local v10    # "channelMask":I
    .end local v11    # "encoding":I
    .end local v12    # "sampleRate":I
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v9

    .line 618
    .local v9, "data":[B
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    invoke-direct/range {v0 .. v9}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B)V

    return-object v0

    .line 601
    .end local v3    # "captureAvailable":Z
    .end local v4    # "captureSession":I
    .end local v5    # "captureDelayMs":I
    .end local v6    # "capturePreambleMs":I
    .end local v7    # "triggerInData":Z
    .end local v9    # "data":[B
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "captureAvailable":Z
    goto :goto_0

    .line 605
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
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 669
    if-ne p0, p1, :cond_0

    .line 670
    return v4

    .line 671
    :cond_0
    if-nez p1, :cond_1

    .line 672
    return v3

    .line 673
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 674
    return v3

    :cond_2
    move-object v0, p1

    .line 675
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .line 676
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    iget-boolean v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    if-eq v1, v2, :cond_3

    .line 677
    return v3

    .line 678
    :cond_3
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    if-eq v1, v2, :cond_4

    .line 679
    return v3

    .line 680
    :cond_4
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    if-eq v1, v2, :cond_5

    .line 681
    return v3

    .line 682
    :cond_5
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    if-eq v1, v2, :cond_6

    .line 683
    return v3

    .line 684
    :cond_6
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_7

    .line 685
    return v3

    .line 686
    :cond_7
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    if-eq v1, v2, :cond_8

    .line 687
    return v3

    .line 688
    :cond_8
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    if-eq v1, v2, :cond_9

    .line 689
    return v3

    .line 690
    :cond_9
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    iget-boolean v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    if-eq v1, v2, :cond_a

    .line 691
    return v3

    .line 692
    :cond_a
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v1, :cond_b

    .line 693
    iget-object v1, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-eqz v1, :cond_f

    .line 694
    return v3

    .line 696
    :cond_b
    iget-object v1, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v1, :cond_c

    .line 697
    return v3

    .line 698
    :cond_c
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    if-eq v1, v2, :cond_d

    .line 699
    return v3

    .line 700
    :cond_d
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v1

    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    if-eq v1, v2, :cond_e

    .line 701
    return v3

    .line 702
    :cond_e
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v1}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    if-eq v1, v2, :cond_f

    .line 703
    return v3

    .line 705
    :cond_f
    return v4
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v4, 0x4d5

    const/16 v3, 0x4cf

    .line 649
    const/16 v0, 0x1f

    .line 651
    .local v0, "prime":I
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 652
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    add-int v1, v2, v5

    .line 653
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    add-int v1, v2, v5

    .line 654
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    add-int v1, v2, v5

    .line 655
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    if-eqz v5, :cond_2

    :goto_1
    add-int v1, v2, v3

    .line 656
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-eqz v2, :cond_0

    .line 657
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    add-int v1, v2, v3

    .line 658
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    add-int v1, v2, v3

    .line 659
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v3

    add-int v1, v2, v3

    .line 661
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 662
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    add-int v1, v2, v3

    .line 663
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    add-int v1, v2, v3

    .line 664
    return v1

    .end local v1    # "result":I
    :cond_1
    move v2, v4

    .line 651
    goto :goto_0

    .restart local v1    # "result":I
    :cond_2
    move v3, v4

    .line 655
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RecognitionEvent [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", soundModelHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 711
    const-string/jumbo v1, ", captureAvailable="

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 711
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 711
    const-string/jumbo v1, ", captureSession="

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 712
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 712
    const-string/jumbo v1, ", captureDelayMs="

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 712
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 713
    const-string/jumbo v1, ", capturePreambleMs="

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 713
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 714
    const-string/jumbo v1, ", triggerInData="

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 714
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 715
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 710
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 717
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    .line 710
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 719
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .line 710
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 721
    const-string/jumbo v1, ", data="

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 721
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 710
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 721
    const-string/jumbo v1, "]"

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 716
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", sampleRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 718
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", encoding="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 720
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", channelMask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 721
    :cond_3
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

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

    .line 629
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 632
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 636
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    if-eqz v0, :cond_2

    .line 637
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 638
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    :goto_2
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 628
    return-void

    :cond_0
    move v0, v2

    .line 631
    goto :goto_0

    :cond_1
    move v0, v2

    .line 635
    goto :goto_1

    .line 642
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2
.end method
