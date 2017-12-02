.class public abstract Landroid/os/IRecoverySystem$Stub;
.super Landroid/os/Binder;
.source "IRecoverySystem.java"

# interfaces
.implements Landroid/os/IRecoverySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IRecoverySystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRecoverySystem$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IRecoverySystem"

.field static final TRANSACTION_clearBcb:I = 0x3

.field static final TRANSACTION_rebootRecoveryWithCommand:I = 0x4

.field static final TRANSACTION_setupBcb:I = 0x2

.field static final TRANSACTION_uncrypt:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.os.IRecoverySystem"

    invoke-virtual {p0, p0, v0}, Landroid/os/IRecoverySystem$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IRecoverySystem;
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
    const-string/jumbo v1, "android.os.IRecoverySystem"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IRecoverySystem;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IRecoverySystem;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IRecoverySystem$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IRecoverySystem$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 43
    :sswitch_0
    const-string/jumbo v3, "android.os.IRecoverySystem"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v5, "android.os.IRecoverySystem"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IRecoverySystemProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRecoverySystemProgressListener;

    move-result-object v1

    .line 53
    .local v1, "_arg1":Landroid/os/IRecoverySystemProgressListener;
    invoke-virtual {p0, v0, v1}, Landroid/os/IRecoverySystem$Stub;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v2

    .line 54
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return v4

    .line 60
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IRecoverySystemProgressListener;
    .end local v2    # "_result":Z
    :sswitch_2
    const-string/jumbo v5, "android.os.IRecoverySystem"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IRecoverySystem$Stub;->setupBcb(Ljava/lang/String;)Z

    move-result v2

    .line 64
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return v4

    .line 70
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_3
    const-string/jumbo v5, "android.os.IRecoverySystem"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/os/IRecoverySystem$Stub;->clearBcb()Z

    move-result v2

    .line 72
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return v4

    .line 78
    .end local v2    # "_result":Z
    :sswitch_4
    const-string/jumbo v3, "android.os.IRecoverySystem"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IRecoverySystem$Stub;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v4

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
