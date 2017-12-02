.class public abstract Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;
.super Landroid/os/Binder;
.source "IPresenceListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.presence.IPresenceListener"

.field static final TRANSACTION_capInfoReceived:I = 0x7

.field static final TRANSACTION_cmdStatus:I = 0x5

.field static final TRANSACTION_getVersionCb:I = 0x1

.field static final TRANSACTION_listCapInfoReceived:I = 0x8

.field static final TRANSACTION_publishTriggering:I = 0x4

.field static final TRANSACTION_serviceAvailable:I = 0x2

.field static final TRANSACTION_serviceUnAvailable:I = 0x3

.field static final TRANSACTION_sipResponseReceived:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;
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
    const-string/jumbo v1, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/presence/IPresenceListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/ims/internal/uce/presence/IPresenceListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 45
    :sswitch_0
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v9

    .line 50
    :sswitch_1
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->getVersionCb(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v9

    .line 59
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    .line 62
    sget-object v8, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    .line 67
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v9

    .line 65
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_0

    .line 73
    .end local v0    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_3
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 76
    sget-object v8, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    .line 81
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->serviceUnAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v9

    .line 79
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_1

    .line 87
    .end local v0    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_4
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    .line 90
    sget-object v8, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;

    .line 95
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->publishTriggering(Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    return v9

    .line 93
    :cond_2
    const/4 v2, 0x0

    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    goto :goto_2

    .line 101
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    :sswitch_5
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    .line 104
    sget-object v8, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/presence/PresCmdStatus;

    .line 109
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->cmdStatus(Lcom/android/ims/internal/uce/presence/PresCmdStatus;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v9

    .line 107
    :cond_3
    const/4 v1, 0x0

    .local v1, "_arg0":Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    goto :goto_3

    .line 115
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    :sswitch_6
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    .line 118
    sget-object v8, Lcom/android/ims/internal/uce/presence/PresSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/uce/presence/PresSipResponse;

    .line 123
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->sipResponseReceived(Lcom/android/ims/internal/uce/presence/PresSipResponse;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    return v9

    .line 121
    :cond_4
    const/4 v4, 0x0

    .local v4, "_arg0":Lcom/android/ims/internal/uce/presence/PresSipResponse;
    goto :goto_4

    .line 129
    .end local v4    # "_arg0":Lcom/android/ims/internal/uce/presence/PresSipResponse;
    :sswitch_7
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 133
    .restart local v5    # "_arg0":Ljava/lang/String;
    sget-object v8, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 134
    .local v7, "_arg1":[Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    invoke-virtual {p0, v5, v7}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->capInfoReceived(Ljava/lang/String;[Lcom/android/ims/internal/uce/presence/PresTupleInfo;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    return v9

    .line 140
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":[Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    :sswitch_8
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    .line 143
    sget-object v8, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;

    .line 149
    :goto_5
    sget-object v8, Lcom/android/ims/internal/uce/presence/PresResInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/ims/internal/uce/presence/PresResInfo;

    .line 150
    .local v6, "_arg1":[Lcom/android/ims/internal/uce/presence/PresResInfo;
    invoke-virtual {p0, v3, v6}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->listCapInfoReceived(Lcom/android/ims/internal/uce/presence/PresRlmiInfo;[Lcom/android/ims/internal/uce/presence/PresResInfo;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    return v9

    .line 146
    .end local v6    # "_arg1":[Lcom/android/ims/internal/uce/presence/PresResInfo;
    :cond_5
    const/4 v3, 0x0

    .local v3, "_arg0":Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    goto :goto_5

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
