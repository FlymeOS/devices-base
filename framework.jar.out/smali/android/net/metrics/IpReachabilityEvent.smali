.class public final Landroid/net/metrics/IpReachabilityEvent;
.super Ljava/lang/Object;
.source "IpReachabilityEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/IpReachabilityEvent$1;,
        Landroid/net/metrics/IpReachabilityEvent$Decoder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/IpReachabilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUD_FAILED:I = 0x200

.field public static final NUD_FAILED_ORGANIC:I = 0x400

.field public static final PROBE:I = 0x100

.field public static final PROVISIONING_LOST:I = 0x300

.field public static final PROVISIONING_LOST_ORGANIC:I = 0x500


# instance fields
.field public final eventType:I

.field public final ifName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroid/net/metrics/IpReachabilityEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/IpReachabilityEvent$1;-><init>()V

    .line 76
    sput-object v0, Landroid/net/metrics/IpReachabilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/IpReachabilityEvent;->ifName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/IpReachabilityEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/IpReachabilityEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "eventType"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/net/metrics/IpReachabilityEvent;->ifName:Ljava/lang/String;

    .line 57
    iput p2, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    .line 55
    return-void
.end method

.method public static logNudFailed(Ljava/lang/String;)V
    .locals 0
    .param p0, "ifName"    # Ljava/lang/String;

    .prologue
    .line 90
    return-void
.end method

.method public static logProbeEvent(Ljava/lang/String;I)V
    .locals 0
    .param p0, "ifName"    # Ljava/lang/String;
    .param p1, "nlErrorCode"    # I

    .prologue
    .line 87
    return-void
.end method

.method public static logProvisioningLost(Ljava/lang/String;)V
    .locals 0
    .param p0, "ifName"    # Ljava/lang/String;

    .prologue
    .line 93
    return-void
.end method

.method public static nudFailureEventType(ZZ)I
    .locals 1
    .param p0, "isFromProbe"    # Z
    .param p1, "isProvisioningLost"    # Z

    .prologue
    .line 101
    if-eqz p0, :cond_1

    .line 102
    if-eqz p1, :cond_0

    const/16 v0, 0x300

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x200

    goto :goto_0

    .line 104
    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x500

    :goto_1
    return v0

    :cond_2
    const/16 v0, 0x400

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 110
    iget v3, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    const v4, 0xff00

    and-int v1, v3, v4

    .line 111
    .local v1, "hi":I
    iget v3, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    and-int/lit16 v2, v3, 0xff

    .line 112
    .local v2, "lo":I
    sget-object v3, Landroid/net/metrics/IpReachabilityEvent$Decoder;->constants:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    .local v0, "eventName":Ljava/lang/String;
    const-string/jumbo v3, "IpReachabilityEvent(%s, %s:%02x)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/net/metrics/IpReachabilityEvent;->ifName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget-object v0, p0, Landroid/net/metrics/IpReachabilityEvent;->ifName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget v0, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method
