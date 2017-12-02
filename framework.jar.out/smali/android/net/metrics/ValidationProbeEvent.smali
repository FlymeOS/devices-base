.class public final Landroid/net/metrics/ValidationProbeEvent;
.super Ljava/lang/Object;
.source "ValidationProbeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/ValidationProbeEvent$1;,
        Landroid/net/metrics/ValidationProbeEvent$Decoder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/ValidationProbeEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DNS_FAILURE:I = 0x0

.field public static final DNS_SUCCESS:I = 0x1

.field private static final FIRST_VALIDATION:I = 0x100

.field public static final PROBE_DNS:I = 0x0

.field public static final PROBE_FALLBACK:I = 0x4

.field public static final PROBE_HTTP:I = 0x1

.field public static final PROBE_HTTPS:I = 0x2

.field public static final PROBE_PAC:I = 0x3

.field private static final REVALIDATION:I = 0x200


# instance fields
.field public final durationMs:J

.field public final netId:I

.field public final probeType:I

.field public final returnCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Landroid/net/metrics/ValidationProbeEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/ValidationProbeEvent$1;-><init>()V

    .line 94
    sput-object v0, Landroid/net/metrics/ValidationProbeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method public constructor <init>(IJII)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "durationMs"    # J
    .param p4, "probeType"    # I
    .param p5, "returnCode"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    .line 69
    iput-wide p2, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    .line 70
    iput p4, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    .line 71
    iput p5, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/ValidationProbeEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/ValidationProbeEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getProbeName(I)Ljava/lang/String;
    .locals 3
    .param p0, "probeType"    # I

    .prologue
    .line 112
    sget-object v0, Landroid/net/metrics/ValidationProbeEvent$Decoder;->constants:Landroid/util/SparseArray;

    and-int/lit16 v1, p0, 0xff

    const-string/jumbo v2, "PROBE_???"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getValidationStage(I)Ljava/lang/String;
    .locals 3
    .param p0, "probeType"    # I

    .prologue
    .line 117
    sget-object v0, Landroid/net/metrics/ValidationProbeEvent$Decoder;->constants:Landroid/util/SparseArray;

    const v1, 0xff00

    and-int/2addr v1, p0

    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static logEvent(IJII)V
    .locals 0
    .param p0, "netId"    # I
    .param p1, "durationMs"    # J
    .param p3, "probeType"    # I
    .param p4, "returnCode"    # I

    .prologue
    .line 120
    return-void
.end method

.method public static makeProbeType(IZ)I
    .locals 2
    .param p0, "probeType"    # I
    .param p1, "firstValidation"    # Z

    .prologue
    .line 107
    and-int/lit16 v1, p0, 0xff

    if-eqz p1, :cond_0

    const/16 v0, 0x100

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x200

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    const-string/jumbo v0, "ValidationProbeEvent(%d, %s:%d %s, %dms)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 126
    iget v2, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    invoke-static {v2}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    invoke-static {v2}, Landroid/net/metrics/ValidationProbeEvent;->getValidationStage(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 125
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    iget v0, p0, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-wide v0, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget v0, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void
.end method
