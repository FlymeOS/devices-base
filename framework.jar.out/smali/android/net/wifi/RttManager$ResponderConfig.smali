.class public Landroid/net/wifi/RttManager$ResponderConfig;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponderConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$ResponderConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RttManager$ResponderConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public centerFreq0:I

.field public centerFreq1:I

.field public channelWidth:I

.field public frequency:I

.field public macAddress:Ljava/lang/String;

.field public preamble:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1074
    new-instance v0, Landroid/net/wifi/RttManager$ResponderConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ResponderConfig$1;-><init>()V

    .line 1073
    sput-object v0, Landroid/net/wifi/RttManager$ResponderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1007
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    .line 1007
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1059
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1048
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "macAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1049
    const-string/jumbo v2, " frequency = "

    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1049
    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1050
    const-string/jumbo v2, " centerFreq0 = "

    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1050
    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1051
    const-string/jumbo v2, " centerFreq1 = "

    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1051
    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1052
    const-string/jumbo v2, " channelWidth = "

    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1052
    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1053
    const-string/jumbo v2, " preamble = "

    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1053
    iget v2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    .line 1048
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1054
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1064
    iget-object v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1065
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    iget v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    return-void
.end method
