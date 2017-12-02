.class public final Landroid/net/metrics/ApfProgramEvent;
.super Ljava/lang/Object;
.source "ApfProgramEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/ApfProgramEvent$1;,
        Landroid/net/metrics/ApfProgramEvent$Decoder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/ApfProgramEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_HAS_IPV4_ADDRESS:I = 0x1

.field public static final FLAG_MULTICAST_FILTER_ON:I


# instance fields
.field public final currentRas:I

.field public final filteredRas:I

.field public final flags:I

.field public final lifetime:J

.field public final programLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Landroid/net/metrics/ApfProgramEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/ApfProgramEvent$1;-><init>()V

    .line 97
    sput-object v0, Landroid/net/metrics/ApfProgramEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method public constructor <init>(JIIII)V
    .locals 1
    .param p1, "lifetime"    # J
    .param p3, "filteredRas"    # I
    .param p4, "currentRas"    # I
    .param p5, "programLength"    # I
    .param p6, "flags"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    .line 62
    iput p3, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    .line 63
    iput p4, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    .line 64
    iput p5, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    .line 65
    iput p6, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/ApfProgramEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/ApfProgramEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static flagsFor(ZZ)I
    .locals 1
    .param p0, "hasIPv4"    # Z
    .param p1, "multicastFilterOn"    # Z

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "bitfield":I
    if-eqz p0, :cond_0

    .line 112
    const/4 v0, 0x2

    .line 114
    :cond_0
    if-eqz p1, :cond_1

    .line 115
    or-int/lit8 v0, v0, 0x1

    .line 117
    :cond_1
    return v0
.end method

.method private static namesOf(I)Ljava/lang/String;
    .locals 7
    .param p0, "bitfield"    # I

    .prologue
    const/4 v6, 0x0

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    new-array v3, v3, [J

    const v4, 0x7fffffff

    and-int/2addr v4, p0

    int-to-long v4, v4

    aput-wide v4, v3, v6

    invoke-static {v3}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v2

    .line 124
    .local v2, "set":Ljava/util/BitSet;
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .local v0, "bit":I
    :goto_0
    if-ltz v0, :cond_0

    .line 125
    sget-object v3, Landroid/net/metrics/ApfProgramEvent$Decoder;->constants:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    .line 127
    :cond_0
    const-string/jumbo v3, "|"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 92
    iget-wide v2, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "lifetimeString":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "ApfProgramEvent(%d/%d RAs %dB %s %s)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 94
    iget v3, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    aput-object v0, v2, v3

    iget v3, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    invoke-static {v3}, Landroid/net/metrics/ApfProgramEvent;->namesOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 93
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    .end local v0    # "lifetimeString":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "forever"

    .restart local v0    # "lifetimeString":Ljava/lang/String;
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 78
    iget-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
