.class public Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
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
    name = "ConfidenceLevel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final confidenceLevel:I

.field public final userId:I


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 813
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel$1;-><init>()V

    .line 812
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 803
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "confidenceLevel"    # I

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    .line 809
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    .line 807
    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 824
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 825
    .local v1, "userId":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 826
    .local v0, "confidenceLevel":I
    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    invoke-direct {v2, v1, v0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 851
    if-ne p0, p1, :cond_0

    .line 852
    return v4

    .line 853
    :cond_0
    if-nez p1, :cond_1

    .line 854
    return v3

    .line 855
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 856
    return v3

    :cond_2
    move-object v0, p1

    .line 857
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    .line 858
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    if-eq v1, v2, :cond_3

    .line 859
    return v3

    .line 860
    :cond_3
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    if-eq v1, v2, :cond_4

    .line 861
    return v3

    .line 862
    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 842
    const/16 v0, 0x1f

    .line 844
    .local v0, "prime":I
    iget v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    add-int/lit8 v1, v2, 0x1f

    .line 845
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    add-int v1, v2, v3

    .line 846
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConfidenceLevel [userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 868
    const-string/jumbo v1, ", confidenceLevel="

    .line 867
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 868
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    .line 867
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 868
    const-string/jumbo v1, "]"

    .line 867
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
    .line 831
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    return-void
.end method
