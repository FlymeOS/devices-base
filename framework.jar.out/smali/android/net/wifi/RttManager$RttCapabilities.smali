.class public Landroid/net/wifi/RttManager$RttCapabilities;
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
    name = "RttCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$RttCapabilities$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RttManager$RttCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bwSupported:I

.field public lciSupported:Z

.field public lcrSupported:Z

.field public mcVersion:I

.field public oneSidedRttSupported:Z

.field public preambleSupported:I

.field public responderSupported:Z

.field public secureRttSupported:Z

.field public supportedPeerType:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public supportedType:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public twoSided11McRttSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 287
    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities$1;-><init>()V

    .line 286
    sput-object v0, Landroid/net/wifi/RttManager$RttCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 177
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "oneSidedRtt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 209
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "is Supported. "

    .line 208
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 210
    const-string/jumbo v2, "twoSided11McRtt "

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 211
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "is Supported. "

    .line 208
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 212
    const-string/jumbo v2, "lci "

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 213
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    if-eqz v1, :cond_b

    const-string/jumbo v1, "is Supported. "

    .line 208
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 214
    const-string/jumbo v2, "lcr "

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 215
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "is Supported. "

    .line 208
    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 218
    const-string/jumbo v1, "Legacy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    :cond_0
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 222
    const-string/jumbo v1, "HT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    :cond_1
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 226
    const-string/jumbo v1, "VHT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    :cond_2
    const-string/jumbo v1, "is supported. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 232
    const-string/jumbo v1, "5 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :cond_3
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 236
    const-string/jumbo v1, "10 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    :cond_4
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 240
    const-string/jumbo v1, "20 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    :cond_5
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 244
    const-string/jumbo v1, "40 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    :cond_6
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    .line 248
    const-string/jumbo v1, "80 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    :cond_7
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    .line 252
    const-string/jumbo v1, "160 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    :cond_8
    const-string/jumbo v1, "is supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    const-string/jumbo v1, " STA responder role is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 258
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "supported"

    .line 257
    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    const-string/jumbo v1, " Secure RTT protocol is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 260
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    if-eqz v1, :cond_e

    const-string/jumbo v1, "supported"

    .line 259
    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " 11mc version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 209
    :cond_9
    const-string/jumbo v1, "is not supported. "

    goto/16 :goto_0

    .line 211
    :cond_a
    const-string/jumbo v1, "is not supported. "

    goto/16 :goto_1

    .line 213
    :cond_b
    const-string/jumbo v1, "is not supported. "

    goto/16 :goto_2

    .line 215
    :cond_c
    const-string/jumbo v1, "is not supported. "

    goto/16 :goto_3

    .line 258
    :cond_d
    const-string/jumbo v1, "not supported"

    goto :goto_4

    .line 260
    :cond_e
    const-string/jumbo v1, "not supported"

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    return-void

    :cond_0
    move v0, v2

    .line 274
    goto :goto_0

    :cond_1
    move v0, v2

    .line 275
    goto :goto_1

    :cond_2
    move v0, v2

    .line 276
    goto :goto_2

    :cond_3
    move v0, v2

    .line 277
    goto :goto_3

    :cond_4
    move v0, v2

    .line 280
    goto :goto_4

    :cond_5
    move v1, v2

    .line 281
    goto :goto_5
.end method
