.class public final Landroid/net/metrics/RaEvent;
.super Ljava/lang/Object;
.source "RaEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/RaEvent$1;,
        Landroid/net/metrics/RaEvent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/RaEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LIFETIME:J = -0x1L


# instance fields
.field public final dnsslLifetime:J

.field public final prefixPreferredLifetime:J

.field public final prefixValidLifetime:J

.field public final rdnssLifetime:J

.field public final routeInfoLifetime:J

.field public final routerLifetime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Landroid/net/metrics/RaEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/RaEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/RaEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>(JJJJJJ)V
    .locals 1
    .param p1, "routerLifetime"    # J
    .param p3, "prefixValidLifetime"    # J
    .param p5, "prefixPreferredLifetime"    # J
    .param p7, "routeInfoLifetime"    # J
    .param p9, "rdnssLifetime"    # J
    .param p11, "dnsslLifetime"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    .line 46
    iput-wide p3, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    .line 47
    iput-wide p5, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    .line 48
    iput-wide p7, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    .line 49
    iput-wide p9, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    .line 50
    iput-wide p11, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/RaEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/RaEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RaEvent(lifetimes: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v1, "router=%ds, "

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    const-string/jumbo v1, "prefix_valid=%ds, "

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "prefix_preferred=%ds, "

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "route_info=%ds, "

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "rdnss=%ds, "

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "dnssl=%ds)"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
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
    .line 64
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    return-void
.end method
