.class public abstract Landroid/net/wifi/nan/IWifiNanManager$Stub;
.super Landroid/os/Binder;
.source "IWifiNanManager.java"

# interfaces
.implements Landroid/net/wifi/nan/IWifiNanManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/IWifiNanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nan.IWifiNanManager"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_createSession:I = 0x4

.field static final TRANSACTION_destroySession:I = 0x9

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_publish:I = 0x5

.field static final TRANSACTION_requestConfig:I = 0x3

.field static final TRANSACTION_sendMessage:I = 0x7

.field static final TRANSACTION_stopSession:I = 0x8

.field static final TRANSACTION_subscribe:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/nan/IWifiNanManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/nan/IWifiNanManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nan/IWifiNanManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 180
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 47
    :sswitch_0
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    return v2

    .line 52
    :sswitch_1
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 56
    .local v10, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanEventListener;

    move-result-object v11

    .line 58
    .local v11, "_arg1":Landroid/net/wifi/nan/IWifiNanEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 59
    .local v14, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v14}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->connect(Landroid/os/IBinder;Landroid/net/wifi/nan/IWifiNanEventListener;I)V

    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    const/4 v2, 0x1

    return v2

    .line 65
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v11    # "_arg1":Landroid/net/wifi/nan/IWifiNanEventListener;
    .end local v14    # "_arg2":I
    :sswitch_2
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 68
    .restart local v10    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->disconnect(Landroid/os/IBinder;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v2, 0x1

    return v2

    .line 74
    .end local v10    # "_arg0":Landroid/os/IBinder;
    :sswitch_3
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    sget-object v2, Landroid/net/wifi/nan/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/nan/ConfigRequest;

    .line 82
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->requestConfig(Landroid/net/wifi/nan/ConfigRequest;)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v2, 0x1

    return v2

    .line 80
    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    goto :goto_0

    .line 88
    .end local v8    # "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    :sswitch_4
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanSessionListener;

    move-result-object v9

    .line 92
    .local v9, "_arg0":Landroid/net/wifi/nan/IWifiNanSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 93
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->createSession(Landroid/net/wifi/nan/IWifiNanSessionListener;I)I

    move-result v17

    .line 94
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/4 v2, 0x1

    return v2

    .line 100
    .end local v4    # "_arg1":I
    .end local v9    # "_arg0":Landroid/net/wifi/nan/IWifiNanSessionListener;
    .end local v17    # "_result":I
    :sswitch_5
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    sget-object v2, Landroid/net/wifi/nan/PublishData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/nan/PublishData;

    .line 111
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    sget-object v2, Landroid/net/wifi/nan/PublishSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/nan/PublishSettings;

    .line 117
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v15}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->publish(ILandroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;)V

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    const/4 v2, 0x1

    return v2

    .line 108
    :cond_1
    const/4 v12, 0x0

    .local v12, "_arg1":Landroid/net/wifi/nan/PublishData;
    goto :goto_1

    .line 115
    .end local v12    # "_arg1":Landroid/net/wifi/nan/PublishData;
    :cond_2
    const/4 v15, 0x0

    .local v15, "_arg2":Landroid/net/wifi/nan/PublishSettings;
    goto :goto_2

    .line 123
    .end local v3    # "_arg0":I
    .end local v15    # "_arg2":Landroid/net/wifi/nan/PublishSettings;
    :sswitch_6
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 127
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    sget-object v2, Landroid/net/wifi/nan/SubscribeData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/nan/SubscribeData;

    .line 134
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    sget-object v2, Landroid/net/wifi/nan/SubscribeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/nan/SubscribeSettings;

    .line 140
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v13, v1}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->subscribe(ILandroid/net/wifi/nan/SubscribeData;Landroid/net/wifi/nan/SubscribeSettings;)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v2, 0x1

    return v2

    .line 131
    :cond_3
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/net/wifi/nan/SubscribeData;
    goto :goto_3

    .line 138
    .end local v13    # "_arg1":Landroid/net/wifi/nan/SubscribeData;
    :cond_4
    const/16 v16, 0x0

    .local v16, "_arg2":Landroid/net/wifi/nan/SubscribeSettings;
    goto :goto_4

    .line 146
    .end local v3    # "_arg0":I
    .end local v16    # "_arg2":Landroid/net/wifi/nan/SubscribeSettings;
    :sswitch_7
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 152
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 154
    .local v5, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 156
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v2, p0

    .line 157
    invoke-virtual/range {v2 .. v7}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->sendMessage(II[BII)V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v2, 0x1

    return v2

    .line 163
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":[B
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    :sswitch_8
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 166
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->stopSession(I)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v2, 0x1

    return v2

    .line 172
    .end local v3    # "_arg0":I
    :sswitch_9
    const-string/jumbo v2, "android.net.wifi.nan.IWifiNanManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 175
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->destroySession(I)V

    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    const/4 v2, 0x1

    return v2

    .line 43
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
