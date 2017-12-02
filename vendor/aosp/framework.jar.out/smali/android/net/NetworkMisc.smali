.class public Landroid/net/NetworkMisc;
.super Ljava/lang/Object;
.source "NetworkMisc.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkMisc$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkMisc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public acceptUnvalidated:Z

.field public allowBypass:Z

.field public explicitlySelected:Z

.field public provisioningNotificationDisabled:Z

.field public subscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Landroid/net/NetworkMisc$1;

    invoke-direct {v0}, Landroid/net/NetworkMisc$1;-><init>()V

    sput-object v0, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkMisc;)V
    .locals 1
    .param p1, "nm"    # Landroid/net/NetworkMisc;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->allowBypass:Z

    iput-boolean v0, p0, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 74
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    iput-boolean v0, p0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 75
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    iput-boolean v0, p0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    .line 76
    iget-object v0, p1, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    .line 77
    iget-boolean v0, p1, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    iput-boolean v0, p0, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->allowBypass:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-boolean v0, p0, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void

    :cond_0
    move v0, v2

    .line 88
    goto :goto_0

    :cond_1
    move v0, v2

    .line 89
    goto :goto_1

    :cond_2
    move v0, v2

    .line 90
    goto :goto_2

    :cond_3
    move v1, v2

    .line 92
    goto :goto_3
.end method
