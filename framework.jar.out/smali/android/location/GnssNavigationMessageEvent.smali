.class public final Landroid/location/GnssNavigationMessageEvent;
.super Ljava/lang/Object;
.source "GnssNavigationMessageEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessageEvent$1;,
        Landroid/location/GnssNavigationMessageEvent$Callback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssNavigationMessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_GNSS_LOCATION_DISABLED:I = 0x2

.field public static final STATUS_NOT_SUPPORTED:I = 0x0

.field public static final STATUS_READY:I = 0x1


# instance fields
.field private final mNavigationMessage:Landroid/location/GnssNavigationMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Landroid/location/GnssNavigationMessageEvent$1;

    invoke-direct {v0}, Landroid/location/GnssNavigationMessageEvent$1;-><init>()V

    .line 93
    sput-object v0, Landroid/location/GnssNavigationMessageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/location/GnssNavigationMessage;)V
    .locals 2
    .param p1, "message"    # Landroid/location/GnssNavigationMessage;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Parameter \'message\' must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p1, p0, Landroid/location/GnssNavigationMessageEvent;->mNavigationMessage:Landroid/location/GnssNavigationMessage;

    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMessage()Landroid/location/GnssNavigationMessage;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/location/GnssNavigationMessageEvent;->mNavigationMessage:Landroid/location/GnssNavigationMessage;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[ GnssNavigationMessageEvent:\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/location/GnssNavigationMessageEvent;->mNavigationMessage:Landroid/location/GnssNavigationMessage;

    invoke-virtual {v1}, Landroid/location/GnssNavigationMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    iget-object v0, p0, Landroid/location/GnssNavigationMessageEvent;->mNavigationMessage:Landroid/location/GnssNavigationMessage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 114
    return-void
.end method
