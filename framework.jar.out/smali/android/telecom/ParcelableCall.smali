.class public final Landroid/telecom/ParcelableCall;
.super Ljava/lang/Object;
.source "ParcelableCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCall$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mCallerDisplayName:Ljava/lang/String;

.field private final mCallerDisplayNamePresentation:I

.field private final mCannedSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapabilities:I

.field private final mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectTimeMillis:J

.field private final mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mExtras:Landroid/os/Bundle;

.field private final mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final mHandle:Landroid/net/Uri;

.field private final mHandlePresentation:I

.field private final mId:Ljava/lang/String;

.field private final mIntentExtras:Landroid/os/Bundle;

.field private final mIsVideoCallProviderChanged:Z

.field private final mParentCallId:Ljava/lang/String;

.field private final mProperties:I

.field private final mState:I

.field private final mStatusHints:Landroid/telecom/StatusHints;

.field private final mSupportedAudioRoutes:I

.field private mVideoCall:Landroid/telecom/VideoCallImpl;

.field private final mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Landroid/telecom/ParcelableCall$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCall$1;-><init>()V

    .line 272
    sput-object v0, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;ZLcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "capabilities"    # I
    .param p6, "properties"    # I
    .param p7, "supportedAudioRoutes"    # I
    .param p8, "connectTimeMillis"    # J
    .param p10, "handle"    # Landroid/net/Uri;
    .param p11, "handlePresentation"    # I
    .param p12, "callerDisplayName"    # Ljava/lang/String;
    .param p13, "callerDisplayNamePresentation"    # I
    .param p14, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p15, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p16, "isVideoCallProviderChanged"    # Z
    .param p17, "videoCallProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p18, "parentCallId"    # Ljava/lang/String;
    .param p20, "statusHints"    # Landroid/telecom/StatusHints;
    .param p21, "videoState"    # I
    .param p23, "intentExtras"    # Landroid/os/Bundle;
    .param p24, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIIJ",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/GatewayInfo;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Z",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/StatusHints;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p4, "cannedSmsResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p19, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p22, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    .line 86
    iput p2, p0, Landroid/telecom/ParcelableCall;->mState:I

    .line 87
    iput-object p3, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 88
    iput-object p4, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    .line 89
    iput p5, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    .line 90
    iput p6, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    .line 91
    iput p7, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    .line 92
    iput-wide p8, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    .line 93
    iput-object p10, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    .line 94
    iput p11, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    .line 95
    iput-object p12, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    .line 96
    iput p13, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    .line 97
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 98
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 99
    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    .line 100
    move-object/from16 v0, p17

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 101
    move-object/from16 v0, p18

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    .line 102
    move-object/from16 v0, p19

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    .line 103
    move-object/from16 v0, p20

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    .line 104
    move/from16 v0, p21

    iput v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    .line 105
    invoke-static/range {p22 .. p22}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    .line 106
    move-object/from16 v0, p23

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    .line 107
    move-object/from16 v0, p24

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    .line 84
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public getCannedSmsResponses()Ljava/util/List;
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
    .line 132
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    return v0
.end method

.method public getChildCallIds()Ljava/util/List;
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
    .line 217
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getConferenceableCallIds()Ljava/util/List;
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
    .line 221
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getParentCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Landroid/telecom/ParcelableCall;->mState:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getSupportedAudioRoutes()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    return v0
.end method

.method public getVideoCallImpl()Landroid/telecom/VideoCallImpl;
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v1, :cond_0

    .line 196
    :try_start_0
    new-instance v1, Landroid/telecom/VideoCallImpl;

    iget-object v2, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-direct {v1, v2}, Landroid/telecom/VideoCallImpl;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    iput-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;

    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    return v0
.end method

.method public isVideoCallProviderChanged()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 373
    const-string/jumbo v0, "[%s, parent:%s, children:%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget v0, p0, Landroid/telecom/ParcelableCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 348
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 349
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget v0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget-wide v4, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 352
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 353
    iget v0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 357
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 358
    iget-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 360
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 359
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 361
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 363
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 364
    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 366
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 367
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 368
    iget v0, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    return-void

    :cond_0
    move v0, v1

    .line 358
    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 360
    goto :goto_1
.end method
