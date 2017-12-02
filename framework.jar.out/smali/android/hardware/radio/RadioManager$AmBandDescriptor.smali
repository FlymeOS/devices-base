.class public Landroid/hardware/radio/RadioManager$AmBandDescriptor;
.super Landroid/hardware/radio/RadioManager$BandDescriptor;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmBandDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$AmBandDescriptor$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$AmBandDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStereo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 607
    new-instance v0, Landroid/hardware/radio/RadioManager$AmBandDescriptor$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$AmBandDescriptor$1;-><init>()V

    .line 606
    sput-object v0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 584
    return-void
.end method

.method constructor <init>(IIIIIZ)V
    .locals 0
    .param p1, "region"    # I
    .param p2, "type"    # I
    .param p3, "lowerLimit"    # I
    .param p4, "upperLimit"    # I
    .param p5, "spacing"    # I
    .param p6, "stereo"    # Z

    .prologue
    .line 590
    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    .line 591
    iput-boolean p6, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    .line 589
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 602
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$BandDescriptor;)V

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    .line 601
    return-void

    .line 603
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$AmBandDescriptor;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 643
    if-ne p0, p1, :cond_0

    .line 644
    return v4

    .line 645
    :cond_0
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 646
    return v3

    .line 647
    :cond_1
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    if-nez v1, :cond_2

    .line 648
    return v3

    :cond_2
    move-object v0, p1

    .line 649
    check-cast v0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    .line 650
    .local v0, "other":Landroid/hardware/radio/RadioManager$AmBandDescriptor;
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->isStereoSupported()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 651
    return v3

    .line 652
    :cond_3
    return v4
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 635
    const/16 v0, 0x1f

    .line 636
    .local v0, "prime":I
    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->hashCode()I

    move-result v1

    .line 637
    .local v1, "result":I
    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    add-int v1, v3, v2

    .line 638
    return v1

    .line 637
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isStereoSupported()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AmBandDescriptor [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mStereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 619
    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 620
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->mStereo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 618
    return-void

    .line 620
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
