.class public final Landroid/app/admin/ConnectEvent;
.super Landroid/app/admin/NetworkEvent;
.source "ConnectEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/ConnectEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/ConnectEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ipAddress:Ljava/lang/String;

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Landroid/app/admin/ConnectEvent$1;

    invoke-direct {v0}, Landroid/app/admin/ConnectEvent$1;-><init>()V

    .line 62
    sput-object v0, Landroid/app/admin/ConnectEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/admin/NetworkEvent;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ConnectEvent;->ipAddress:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/ConnectEvent;->port:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/NetworkEvent;->packageName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/NetworkEvent;->timestamp:J

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/admin/ConnectEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/admin/ConnectEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    .line 36
    invoke-direct {p0, p3, p4, p5}, Landroid/app/admin/NetworkEvent;-><init>(Ljava/lang/String;J)V

    .line 37
    iput-object p1, p0, Landroid/app/admin/ConnectEvent;->ipAddress:Ljava/lang/String;

    .line 38
    iput p2, p0, Landroid/app/admin/ConnectEvent;->port:I

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/admin/ConnectEvent;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Landroid/app/admin/ConnectEvent;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    const-string/jumbo v0, "ConnectEvent(%s, %d, %d, %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/app/admin/ConnectEvent;->ipAddress:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/app/admin/ConnectEvent;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/app/admin/NetworkEvent;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 59
    iget-object v2, p0, Landroid/app/admin/NetworkEvent;->packageName:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 58
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Landroid/app/admin/ConnectEvent;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget v0, p0, Landroid/app/admin/ConnectEvent;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Landroid/app/admin/NetworkEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-wide v0, p0, Landroid/app/admin/NetworkEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    return-void
.end method
