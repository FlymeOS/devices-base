.class public final Landroid/telephony/CellIdentityGsm;
.super Ljava/lang/Object;
.source "CellIdentityGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellIdentityGsm$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellIdentityGsm"


# instance fields
.field private final mArfcn:I

.field private final mBsic:I

.field private final mCid:I

.field private final mLac:I

.field private final mMcc:I

.field private final mMnc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Landroid/telephony/CellIdentityGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityGsm$1;-><init>()V

    .line 230
    sput-object v0, Landroid/telephony/CellIdentityGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    .line 51
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    .line 52
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    .line 53
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    .line 54
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    .line 55
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    .line 49
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 7
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "lac"    # I
    .param p4, "cid"    # I

    .prologue
    const v5, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    .line 67
    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentityGsm;-><init>(IIIIII)V

    .line 66
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "lac"    # I
    .param p4, "cid"    # I
    .param p5, "arfcn"    # I
    .param p6, "bsic"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    .line 83
    iput p2, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    .line 84
    iput p3, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    .line 85
    iput p4, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    .line 86
    iput p5, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    .line 87
    iput p6, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    .local v0, "bsic":I
    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    .line 223
    :cond_0
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    .line 213
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityGsm;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityGsm;)V
    .locals 1
    .param p1, "cid"    # Landroid/telephony/CellIdentityGsm;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mMcc:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    .line 92
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mMnc:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    .line 93
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mLac:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    .line 94
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mCid:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    .line 95
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    .line 96
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mBsic:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    .line 90
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 247
    const-string/jumbo v0, "CellIdentityGsm"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityGsm;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/telephony/CellIdentityGsm;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    if-ne p0, p1, :cond_0

    .line 164
    return v1

    .line 167
    :cond_0
    instance-of v3, p1, Landroid/telephony/CellIdentityGsm;

    if-nez v3, :cond_1

    .line 168
    return v2

    :cond_1
    move-object v0, p1

    .line 171
    check-cast v0, Landroid/telephony/CellIdentityGsm;

    .line 172
    .local v0, "o":Landroid/telephony/CellIdentityGsm;
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    if-ne v3, v4, :cond_3

    .line 173
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    if-ne v3, v4, :cond_3

    .line 174
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mLac:I

    if-ne v3, v4, :cond_3

    .line 175
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mCid:I

    if-ne v3, v4, :cond_3

    .line 176
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    if-ne v3, v4, :cond_3

    .line 177
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    if-ne v3, v4, :cond_2

    .line 172
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 177
    goto :goto_0

    :cond_3
    move v1, v2

    .line 172
    goto :goto_0
.end method

.method public getArfcn()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    return v0
.end method

.method public getBsic()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    return v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    return v0
.end method

.method public getPsc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    const v0, 0x7fffffff

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CellIdentityGsm:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v1, " mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v1, " mLac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    const-string/jumbo v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const-string/jumbo v1, " mArfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    const-string/jumbo v1, " mBsic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 204
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return-void
.end method
