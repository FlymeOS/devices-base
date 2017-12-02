.class public abstract Landroid/media/session/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/media/session/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionCallback"

.field static final TRANSACTION_onAdjustVolume:I = 0x15

.field static final TRANSACTION_onCommand:I = 0x1

.field static final TRANSACTION_onCustomAction:I = 0x14

.field static final TRANSACTION_onFastForward:I = 0x10

.field static final TRANSACTION_onMediaButton:I = 0x2

.field static final TRANSACTION_onNext:I = 0xe

.field static final TRANSACTION_onPause:I = 0xc

.field static final TRANSACTION_onPlay:I = 0x7

.field static final TRANSACTION_onPlayFromMediaId:I = 0x8

.field static final TRANSACTION_onPlayFromSearch:I = 0x9

.field static final TRANSACTION_onPlayFromUri:I = 0xa

.field static final TRANSACTION_onPrepare:I = 0x3

.field static final TRANSACTION_onPrepareFromMediaId:I = 0x4

.field static final TRANSACTION_onPrepareFromSearch:I = 0x5

.field static final TRANSACTION_onPrepareFromUri:I = 0x6

.field static final TRANSACTION_onPrevious:I = 0xf

.field static final TRANSACTION_onRate:I = 0x13

.field static final TRANSACTION_onRewind:I = 0x11

.field static final TRANSACTION_onSeekTo:I = 0x12

.field static final TRANSACTION_onSetVolumeTo:I = 0x16

.field static final TRANSACTION_onSkipToTrack:I = 0xb

.field static final TRANSACTION_onStop:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.media.session.ISessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/session/ISessionCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/session/ISessionCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/session/ISessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 45
    :sswitch_0
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v10, 0x1

    return v10

    .line 50
    :sswitch_1
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    .line 55
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 61
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 62
    sget-object v10, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ResultReceiver;

    .line 67
    :goto_1
    invoke-virtual {p0, v6, v8, v9}, Landroid/media/session/ISessionCallback$Stub;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 68
    const/4 v10, 0x1

    return v10

    .line 58
    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 65
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :cond_1
    const/4 v9, 0x0

    .local v9, "_arg2":Landroid/os/ResultReceiver;
    goto :goto_1

    .line 72
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/os/ResultReceiver;
    :sswitch_2
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    .line 75
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 81
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 83
    .local v7, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 84
    sget-object v10, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ResultReceiver;

    .line 89
    :goto_3
    invoke-virtual {p0, v1, v7, v9}, Landroid/media/session/ISessionCallback$Stub;->onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V

    .line 90
    const/4 v10, 0x1

    return v10

    .line 78
    .end local v7    # "_arg1":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/content/Intent;
    goto :goto_2

    .line 87
    .end local v1    # "_arg0":Landroid/content/Intent;
    .restart local v7    # "_arg1":I
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_3

    .line 94
    .end local v7    # "_arg1":I
    .end local v9    # "_arg2":Landroid/os/ResultReceiver;
    :sswitch_3
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPrepare()V

    .line 96
    const/4 v10, 0x1

    return v10

    .line 100
    :sswitch_4
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 104
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    .line 105
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 110
    :goto_4
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 111
    const/4 v10, 0x1

    return v10

    .line 108
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_4

    .line 115
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 119
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    .line 120
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 125
    :goto_5
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 126
    const/4 v10, 0x1

    return v10

    .line 123
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .line 130
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    .line 133
    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 139
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    .line 140
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 145
    :goto_7
    invoke-virtual {p0, v5, v8}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 146
    const/4 v10, 0x1

    return v10

    .line 136
    :cond_6
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/Uri;
    goto :goto_6

    .line 143
    .end local v5    # "_arg0":Landroid/net/Uri;
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_7

    .line 150
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_7
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPlay()V

    .line 152
    const/4 v10, 0x1

    return v10

    .line 156
    :sswitch_8
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 160
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    .line 161
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 166
    :goto_8
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 167
    const/4 v10, 0x1

    return v10

    .line 164
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_8

    .line 171
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_9
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 175
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    .line 176
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 181
    :goto_9
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 182
    const/4 v10, 0x1

    return v10

    .line 179
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_9

    .line 186
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_a
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    .line 189
    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 195
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_b

    .line 196
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 201
    :goto_b
    invoke-virtual {p0, v5, v8}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 202
    const/4 v10, 0x1

    return v10

    .line 192
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/net/Uri;
    goto :goto_a

    .line 199
    .end local v5    # "_arg0":Landroid/net/Uri;
    :cond_b
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_b

    .line 206
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_b
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 209
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onSkipToTrack(J)V

    .line 210
    const/4 v10, 0x1

    return v10

    .line 214
    .end local v2    # "_arg0":J
    :sswitch_c
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPause()V

    .line 216
    const/4 v10, 0x1

    return v10

    .line 220
    :sswitch_d
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onStop()V

    .line 222
    const/4 v10, 0x1

    return v10

    .line 226
    :sswitch_e
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onNext()V

    .line 228
    const/4 v10, 0x1

    return v10

    .line 232
    :sswitch_f
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPrevious()V

    .line 234
    const/4 v10, 0x1

    return v10

    .line 238
    :sswitch_10
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onFastForward()V

    .line 240
    const/4 v10, 0x1

    return v10

    .line 244
    :sswitch_11
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onRewind()V

    .line 246
    const/4 v10, 0x1

    return v10

    .line 250
    :sswitch_12
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 253
    .restart local v2    # "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onSeekTo(J)V

    .line 254
    const/4 v10, 0x1

    return v10

    .line 258
    .end local v2    # "_arg0":J
    :sswitch_13
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c

    .line 261
    sget-object v10, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Rating;

    .line 266
    :goto_c
    invoke-virtual {p0, v4}, Landroid/media/session/ISessionCallback$Stub;->onRate(Landroid/media/Rating;)V

    .line 267
    const/4 v10, 0x1

    return v10

    .line 264
    :cond_c
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/media/Rating;
    goto :goto_c

    .line 271
    .end local v4    # "_arg0":Landroid/media/Rating;
    :sswitch_14
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 275
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_d

    .line 276
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 281
    :goto_d
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 282
    const/4 v10, 0x1

    return v10

    .line 279
    :cond_d
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_d

    .line 286
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_15
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onAdjustVolume(I)V

    .line 290
    const/4 v10, 0x1

    return v10

    .line 294
    .end local v0    # "_arg0":I
    :sswitch_16
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 297
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onSetVolumeTo(I)V

    .line 298
    const/4 v10, 0x1

    return v10

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
