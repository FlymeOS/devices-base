.class public abstract Landroid/os/IUpdateEngine$Stub;
.super Landroid/os/Binder;
.source "IUpdateEngine.java"

# interfaces
.implements Landroid/os/IUpdateEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUpdateEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IUpdateEngine"

.field static final TRANSACTION_applyPayload:I = 0x1

.field static final TRANSACTION_bind:I = 0x2

.field static final TRANSACTION_cancel:I = 0x5

.field static final TRANSACTION_resetStatus:I = 0x6

.field static final TRANSACTION_resume:I = 0x4

.field static final TRANSACTION_suspend:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "android.os.IUpdateEngine"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngine;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "android.os.IUpdateEngine"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IUpdateEngine;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/os/IUpdateEngine;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IUpdateEngine$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IUpdateEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 42
    :sswitch_0
    const-string/jumbo v0, "android.os.IUpdateEngine"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v9

    .line 47
    :sswitch_1
    const-string/jumbo v0, "android.os.IUpdateEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 53
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 55
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg3":[Ljava/lang/String;
    move-object v0, p0

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroid/os/IUpdateEngine$Stub;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v9

    .line 62
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":[Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "android.os.IUpdateEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUpdateEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineCallback;

    move-result-object v7

    .line 65
    .local v7, "_arg0":Landroid/os/IUpdateEngineCallback;
    invoke-virtual {p0, v7}, Landroid/os/IUpdateEngine$Stub;->bind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v8

    .line 66
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v8, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return v9

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    .end local v7    # "_arg0":Landroid/os/IUpdateEngineCallback;
    .end local v8    # "_result":Z
    :sswitch_3
    const-string/jumbo v0, "android.os.IUpdateEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->suspend()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v9

    .line 79
    :sswitch_4
    const-string/jumbo v0, "android.os.IUpdateEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->resume()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v9

    .line 86
    :sswitch_5
    const-string/jumbo v0, "android.os.IUpdateEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->cancel()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v9

    .line 93
    :sswitch_6
    const-string/jumbo v0, "android.os.IUpdateEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/os/IUpdateEngine$Stub;->resetStatus()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v9

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
