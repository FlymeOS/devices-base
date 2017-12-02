.class final Landroid/telecom/ParcelableConnection$1;
.super Ljava/lang/Object;
.source "ParcelableConnection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telecom/ParcelableConnection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConnection;
    .locals 24
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 199
    const-class v2, Landroid/telecom/ParcelableConnection;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v22

    .line 201
    .local v22, "classLoader":Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 202
    .local v3, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 203
    .local v4, "state":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 204
    .local v5, "capabilities":I
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 205
    .local v8, "address":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 206
    .local v9, "addressPresentation":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, "callerDisplayName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 209
    .local v11, "callerDisplayNamePresentation":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v12

    .line 210
    .local v12, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 211
    .local v13, "videoState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v2, v0, :cond_0

    const/4 v14, 0x1

    .line 212
    .local v14, "ringbackRequested":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v2, v0, :cond_1

    const/4 v15, 0x1

    .line 213
    .local v15, "audioModeIsVoip":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 214
    .local v16, "connectTimeMillis":J
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/telecom/StatusHints;

    .line 215
    .local v18, "statusHints":Landroid/telecom/StatusHints;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/telecom/DisconnectCause;

    .line 216
    .local v19, "disconnectCause":Landroid/telecom/DisconnectCause;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v20, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 218
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-static {v2, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v21

    .line 219
    .local v21, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 220
    .local v6, "properties":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 222
    .local v7, "supportedAudioRoutes":I
    new-instance v2, Landroid/telecom/ParcelableConnection;

    invoke-direct/range {v2 .. v21}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    return-object v2

    .line 211
    .end local v6    # "properties":I
    .end local v7    # "supportedAudioRoutes":I
    .end local v14    # "ringbackRequested":Z
    .end local v15    # "audioModeIsVoip":Z
    .end local v16    # "connectTimeMillis":J
    .end local v18    # "statusHints":Landroid/telecom/StatusHints;
    .end local v19    # "disconnectCause":Landroid/telecom/DisconnectCause;
    .end local v20    # "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "extras":Landroid/os/Bundle;
    :cond_0
    const/4 v14, 0x0

    .restart local v14    # "ringbackRequested":Z
    goto :goto_0

    .line 212
    :cond_1
    const/4 v15, 0x0

    .restart local v15    # "audioModeIsVoip":Z
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConnection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConnection;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/ParcelableConnection;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 245
    new-array v0, p1, [Landroid/telecom/ParcelableConnection;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConnection$1;->newArray(I)[Landroid/telecom/ParcelableConnection;

    move-result-object v0

    return-object v0
.end method
