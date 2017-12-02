.class public abstract Landroid/net/IConnectivityMetricsLogger$Stub;
.super Landroid/os/Binder;
.source "IConnectivityMetricsLogger.java"

# interfaces
.implements Landroid/net/IConnectivityMetricsLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityMetricsLogger"

.field static final TRANSACTION_getEvents:I = 0x3

.field static final TRANSACTION_logEvent:I = 0x1

.field static final TRANSACTION_logEvents:I = 0x2

.field static final TRANSACTION_register:I = 0x4

.field static final TRANSACTION_unregister:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.net.IConnectivityMetricsLogger"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityMetricsLogger$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityMetricsLogger;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.net.IConnectivityMetricsLogger"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityMetricsLogger;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/net/IConnectivityMetricsLogger;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 43
    :sswitch_0
    const-string/jumbo v8, "android.net.IConnectivityMetricsLogger"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v9

    .line 48
    :sswitch_1
    const-string/jumbo v8, "android.net.IConnectivityMetricsLogger"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    .line 51
    sget-object v8, Landroid/net/ConnectivityMetricsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityMetricsEvent;

    .line 56
    :goto_0
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityMetricsLogger$Stub;->logEvent(Landroid/net/ConnectivityMetricsEvent;)J

    move-result-wide v4

    .line 57
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    return v9

    .line 54
    .end local v4    # "_result":J
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/net/ConnectivityMetricsEvent;
    goto :goto_0

    .line 63
    .end local v2    # "_arg0":Landroid/net/ConnectivityMetricsEvent;
    :sswitch_2
    const-string/jumbo v8, "android.net.IConnectivityMetricsLogger"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    sget-object v8, Landroid/net/ConnectivityMetricsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/ConnectivityMetricsEvent;

    .line 66
    .local v3, "_arg0":[Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {p0, v3}, Landroid/net/IConnectivityMetricsLogger$Stub;->logEvents([Landroid/net/ConnectivityMetricsEvent;)J

    move-result-wide v4

    .line 67
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    return v9

    .line 73
    .end local v3    # "_arg0":[Landroid/net/ConnectivityMetricsEvent;
    .end local v4    # "_result":J
    :sswitch_3
    const-string/jumbo v10, "android.net.IConnectivityMetricsLogger"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 76
    sget-object v10, Landroid/net/ConnectivityMetricsEvent$Reference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityMetricsEvent$Reference;

    .line 81
    :goto_1
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityMetricsLogger$Stub;->getEvents(Landroid/net/ConnectivityMetricsEvent$Reference;)[Landroid/net/ConnectivityMetricsEvent;

    move-result-object v7

    .line 82
    .local v7, "_result":[Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v7, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 84
    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v1, p3, v9}, Landroid/net/ConnectivityMetricsEvent$Reference;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    :goto_2
    return v9

    .line 79
    .end local v7    # "_result":[Landroid/net/ConnectivityMetricsEvent;
    :cond_1
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/net/ConnectivityMetricsEvent$Reference;
    goto :goto_1

    .line 89
    .end local v1    # "_arg0":Landroid/net/ConnectivityMetricsEvent$Reference;
    .restart local v7    # "_result":[Landroid/net/ConnectivityMetricsEvent;
    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 95
    .end local v7    # "_result":[Landroid/net/ConnectivityMetricsEvent;
    :sswitch_4
    const-string/jumbo v10, "android.net.IConnectivityMetricsLogger"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    .line 98
    sget-object v10, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 103
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityMetricsLogger$Stub;->register(Landroid/app/PendingIntent;)Z

    move-result v6

    .line 104
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v6, :cond_3

    move v8, v9

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v9

    .line 101
    .end local v6    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/app/PendingIntent;
    goto :goto_3

    .line 110
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_5
    const-string/jumbo v8, "android.net.IConnectivityMetricsLogger"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    .line 113
    sget-object v8, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 118
    :goto_4
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityMetricsLogger$Stub;->unregister(Landroid/app/PendingIntent;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    return v9

    .line 116
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_4

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
