.class public Landroid/bluetooth/UidTraffic;
.super Ljava/lang/Object;
.source "UidTraffic.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/UidTraffic$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/UidTraffic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppUid:I

.field private mRxBytes:J

.field private mTxBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Landroid/bluetooth/UidTraffic$1;

    invoke-direct {v0}, Landroid/bluetooth/UidTraffic$1;-><init>()V

    sput-object v0, Landroid/bluetooth/UidTraffic;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "appUid"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    .line 30
    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0
    .param p1, "appUid"    # I
    .param p2, "rx"    # J
    .param p4, "tx"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    .line 36
    iput-wide p2, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    .line 37
    iput-wide p4, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    .line 34
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    .line 40
    return-void
.end method


# virtual methods
.method public addRxBytes(J)V
    .locals 3
    .param p1, "bytes"    # J

    .prologue
    .line 62
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    .line 61
    return-void
.end method

.method public addTxBytes(J)V
    .locals 3
    .param p1, "bytes"    # J

    .prologue
    .line 66
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    .line 65
    return-void
.end method

.method public clone()Landroid/bluetooth/UidTraffic;
    .locals 6

    .prologue
    .line 88
    new-instance v0, Landroid/bluetooth/UidTraffic;

    iget v1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    iget-wide v2, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    iget-wide v4, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/UidTraffic;-><init>(IJJ)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/bluetooth/UidTraffic;->clone()Landroid/bluetooth/UidTraffic;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getRxBytes()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    return-wide v0
.end method

.method public getTxBytes()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    return v0
.end method

.method public setRxBytes(J)V
    .locals 1
    .param p1, "bytes"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    .line 53
    return-void
.end method

.method public setTxBytes(J)V
    .locals 1
    .param p1, "bytes"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UidTraffic{mAppUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    iget v1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    const-string/jumbo v1, ", mRxBytes="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    iget-wide v2, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    .line 93
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string/jumbo v1, ", mTxBytes="

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    iget-wide v2, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    .line 93
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const/16 v1, 0x7d

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 48
    iget v0, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    return-void
.end method
