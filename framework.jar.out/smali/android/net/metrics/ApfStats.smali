.class public final Landroid/net/metrics/ApfStats;
.super Ljava/lang/Object;
.source "ApfStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/ApfStats$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/ApfStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final droppedRas:I

.field public final durationMs:J

.field public final matchingRas:I

.field public final maxProgramSize:I

.field public final parseErrors:I

.field public final programUpdates:I

.field public final receivedRas:I

.field public final zeroLifetimeRas:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Landroid/net/metrics/ApfStats$1;

    invoke-direct {v0}, Landroid/net/metrics/ApfStats$1;-><init>()V

    sput-object v0, Landroid/net/metrics/ApfStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>(JIIIIIII)V
    .locals 1
    .param p1, "durationMs"    # J
    .param p3, "receivedRas"    # I
    .param p4, "matchingRas"    # I
    .param p5, "droppedRas"    # I
    .param p6, "zeroLifetimeRas"    # I
    .param p7, "parseErrors"    # I
    .param p8, "programUpdates"    # I
    .param p9, "maxProgramSize"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Landroid/net/metrics/ApfStats;->durationMs:J

    .line 43
    iput p3, p0, Landroid/net/metrics/ApfStats;->receivedRas:I

    .line 44
    iput p4, p0, Landroid/net/metrics/ApfStats;->matchingRas:I

    .line 45
    iput p5, p0, Landroid/net/metrics/ApfStats;->droppedRas:I

    .line 46
    iput p6, p0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    .line 47
    iput p7, p0, Landroid/net/metrics/ApfStats;->parseErrors:I

    .line 48
    iput p8, p0, Landroid/net/metrics/ApfStats;->programUpdates:I

    .line 49
    iput p9, p0, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/ApfStats;->durationMs:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->receivedRas:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->matchingRas:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->droppedRas:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->parseErrors:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->programUpdates:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/ApfStats;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/ApfStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ApfStats("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "%dms "

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/ApfStats;->durationMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "%dB RA: {"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "%d received, "

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ApfStats;->receivedRas:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    const-string/jumbo v1, "%d matching, "

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ApfStats;->matchingRas:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "%d dropped, "

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ApfStats;->droppedRas:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "%d zero lifetime, "

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    const-string/jumbo v1, "%d parse errors, "

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ApfStats;->parseErrors:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "%d program updates})"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/ApfStats;->programUpdates:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 65
    iget-wide v0, p0, Landroid/net/metrics/ApfStats;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget v0, p0, Landroid/net/metrics/ApfStats;->receivedRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Landroid/net/metrics/ApfStats;->matchingRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Landroid/net/metrics/ApfStats;->droppedRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Landroid/net/metrics/ApfStats;->parseErrors:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Landroid/net/metrics/ApfStats;->programUpdates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return-void
.end method
