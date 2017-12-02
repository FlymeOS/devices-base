.class public abstract Landroid/media/tv/ITvRemoteServiceInput$Stub;
.super Landroid/os/Binder;
.source "ITvRemoteServiceInput.java"

# interfaces
.implements Landroid/media/tv/ITvRemoteServiceInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvRemoteServiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvRemoteServiceInput"

.field static final TRANSACTION_clearInputBridge:I = 0x3

.field static final TRANSACTION_closeInputBridge:I = 0x2

.field static final TRANSACTION_openInputBridge:I = 0x1

.field static final TRANSACTION_sendKeyDown:I = 0x5

.field static final TRANSACTION_sendKeyUp:I = 0x6

.field static final TRANSACTION_sendPointerDown:I = 0x7

.field static final TRANSACTION_sendPointerSync:I = 0x9

.field static final TRANSACTION_sendPointerUp:I = 0x8

.field static final TRANSACTION_sendTimestamp:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvRemoteServiceInput;
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
    const-string/jumbo v1, "android.media.tv.ITvRemoteServiceInput"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvRemoteServiceInput;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/tv/ITvRemoteServiceInput;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvRemoteServiceInput$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 45
    :sswitch_0
    const-string/jumbo v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v7

    .line 50
    :sswitch_1
    const-string/jumbo v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 60
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 62
    return v7

    .line 66
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :sswitch_2
    const-string/jumbo v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 69
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->closeInputBridge(Landroid/os/IBinder;)V

    .line 70
    return v7

    .line 74
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :sswitch_3
    const-string/jumbo v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 77
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->clearInputBridge(Landroid/os/IBinder;)V

    .line 78
    return v7

    .line 82
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :sswitch_4
    const-string/jumbo v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 86
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 87
    .local v8, "_arg1":J
    invoke-virtual {p0, v1, v8, v9}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendTimestamp(Landroid/os/IBinder;J)V

    .line 88
    return v7

    .line 92
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":J
    :sswitch_5
    const-string/jumbo v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 96
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 97
    .local v6, "_arg1":I
    invoke-virtual {p0, v1, v6}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendKeyDown(Landroid/os/IBinder;I)V

    .line 98
    return v7

    .line 102
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    :sswitch_6
    const-string/jumbo v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 106
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 107
    .restart local v6    # "_arg1":I
    invoke-virtual {p0, v1, v6}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendKeyUp(Landroid/os/IBinder;I)V

    .line 108
    return v7

    .line 112
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    :sswitch_7
    const-string/jumbo v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 116
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 118
    .restart local v6    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 120
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 121
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v6, v3, v4}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerDown(Landroid/os/IBinder;III)V

    .line 122
    return v7

    .line 126
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v6    # "_arg1":I
    :sswitch_8
    const-string/jumbo v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 130
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 131
    .restart local v6    # "_arg1":I
    invoke-virtual {p0, v1, v6}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerUp(Landroid/os/IBinder;I)V

    .line 132
    return v7

    .line 136
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":I
    :sswitch_9
    const-string/jumbo v0, "android.media.tv.ITvRemoteServiceInput"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 139
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvRemoteServiceInput$Stub;->sendPointerSync(Landroid/os/IBinder;)V

    .line 140
    return v7

    .line 41
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
