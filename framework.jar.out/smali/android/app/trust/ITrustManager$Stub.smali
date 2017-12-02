.class public abstract Landroid/app/trust/ITrustManager$Stub;
.super Landroid/os/Binder;
.source "ITrustManager.java"

# interfaces
.implements Landroid/app/trust/ITrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/ITrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/ITrustManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.trust.ITrustManager"

.field static final TRANSACTION_isDeviceLocked:I = 0x7

.field static final TRANSACTION_isDeviceSecure:I = 0x8

.field static final TRANSACTION_isTrustUsuallyManaged:I = 0x9

.field static final TRANSACTION_registerTrustListener:I = 0x3

.field static final TRANSACTION_reportEnabledTrustAgentsChanged:I = 0x2

.field static final TRANSACTION_reportKeyguardShowingChanged:I = 0x5

.field static final TRANSACTION_reportUnlockAttempt:I = 0x1

.field static final TRANSACTION_setDeviceLockedForUser:I = 0x6

.field static final TRANSACTION_unregisterTrustListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.app.trust.ITrustManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/trust/ITrustManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;
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
    const-string/jumbo v1, "android.app.trust.ITrustManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/trust/ITrustManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/app/trust/ITrustManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/trust/ITrustManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/trust/ITrustManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 47
    :sswitch_0
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v6

    .line 52
    :sswitch_1
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    .line 56
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 57
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustManager$Stub;->reportUnlockAttempt(ZI)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    return v6

    .line 54
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_0

    .line 63
    .end local v2    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->reportEnabledTrustAgentsChanged(I)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v6

    .line 72
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    move-result-object v1

    .line 75
    .local v1, "_arg0":Landroid/app/trust/ITrustListener;
    invoke-virtual {p0, v1}, Landroid/app/trust/ITrustManager$Stub;->registerTrustListener(Landroid/app/trust/ITrustListener;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v6

    .line 81
    .end local v1    # "_arg0":Landroid/app/trust/ITrustListener;
    :sswitch_4
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/trust/ITrustListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;

    move-result-object v1

    .line 84
    .restart local v1    # "_arg0":Landroid/app/trust/ITrustListener;
    invoke-virtual {p0, v1}, Landroid/app/trust/ITrustManager$Stub;->unregisterTrustListener(Landroid/app/trust/ITrustListener;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v6

    .line 90
    .end local v1    # "_arg0":Landroid/app/trust/ITrustListener;
    :sswitch_5
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/trust/ITrustManager$Stub;->reportKeyguardShowingChanged()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    return v6

    .line 97
    :sswitch_6
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v4, v6

    .line 102
    .local v4, "_arg1":Z
    :cond_1
    invoke-virtual {p0, v0, v4}, Landroid/app/trust/ITrustManager$Stub;->setDeviceLockedForUser(IZ)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v6

    .line 108
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":Z
    :sswitch_7
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->isDeviceLocked(I)Z

    move-result v5

    .line 112
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v5, :cond_2

    move v4, v6

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return v6

    .line 118
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_8
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->isDeviceSecure(I)Z

    move-result v5

    .line 122
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v5, :cond_3

    move v4, v6

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v6

    .line 128
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_9
    const-string/jumbo v7, "android.app.trust.ITrustManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/trust/ITrustManager$Stub;->isTrustUsuallyManaged(I)Z

    move-result v5

    .line 132
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v5, :cond_4

    move v4, v6

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return v6

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
