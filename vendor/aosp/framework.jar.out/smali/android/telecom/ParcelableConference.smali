.class public final Landroid/telecom/ParcelableConference;
.super Ljava/lang/Object;
.source "ParcelableConference.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableConference$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableConference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private mConnectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtras:Landroid/os/Bundle;

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Landroid/telecom/ParcelableConference$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableConference$1;-><init>()V

    .line 121
    sput-object v0, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJLandroid/telecom/StatusHints;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "state"    # I
    .param p3, "connectionCapabilities"    # I
    .param p5, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p6, "videoState"    # I
    .param p7, "connectTimeMillis"    # J
    .param p9, "statusHints"    # Landroid/telecom/StatusHints;
    .param p10, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "IJ",
            "Landroid/telecom/StatusHints;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide v0, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    .line 54
    iput-object p1, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 55
    iput p2, p0, Landroid/telecom/ParcelableConference;->mState:I

    .line 56
    iput p3, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    .line 57
    iput-object p4, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    .line 58
    iput-wide v0, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    .line 59
    iput-object p5, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 60
    iput p6, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    .line 61
    iput-wide p7, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    .line 62
    iput-object p9, p0, Landroid/telecom/ParcelableConference;->mStatusHints:Landroid/telecom/StatusHints;

    .line 63
    iput-object p10, p0, Landroid/telecom/ParcelableConference;->mExtras:Landroid/os/Bundle;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    return v0
.end method

.method public getConnectionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Landroid/telecom/ParcelableConference;->mState:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    const-string/jumbo v1, "account: "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 70
    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 71
    const-string/jumbo v1, ", state: "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 72
    iget v1, p0, Landroid/telecom/ParcelableConference;->mState:I

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 73
    const-string/jumbo v1, ", capabilities: "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 74
    iget v1, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    invoke-static {v1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 75
    const-string/jumbo v1, ", connectTime: "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 76
    iget-wide v2, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    .line 68
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 77
    const-string/jumbo v1, ", children: "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 78
    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 79
    const-string/jumbo v1, ", VideoState: "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 80
    iget v1, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 81
    const-string/jumbo v1, ", VideoProvider: "

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 82
    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 157
    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 158
    iget v1, p0, Landroid/telecom/ParcelableConference;->mState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v1, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 161
    iget-wide v2, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 162
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 164
    iget v0, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 166
    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 156
    return-void
.end method
