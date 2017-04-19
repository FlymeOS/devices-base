.class public abstract Lcom/android/ims/internal/IImsUt$Stub;
.super Landroid/os/Binder;
.source "IImsUt.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUt"

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_queryCLIP:I = 0x6

.field static final TRANSACTION_queryCLIR:I = 0x5

.field static final TRANSACTION_queryCOLP:I = 0x8

.field static final TRANSACTION_queryCOLR:I = 0x7

.field static final TRANSACTION_queryCallBarring:I = 0x2

.field static final TRANSACTION_queryCallForward:I = 0x3

.field static final TRANSACTION_queryCallWaiting:I = 0x4

.field static final TRANSACTION_setListener:I = 0x11

.field static final TRANSACTION_transact:I = 0x9

.field static final TRANSACTION_updateCLIP:I = 0xe

.field static final TRANSACTION_updateCLIR:I = 0xd

.field static final TRANSACTION_updateCOLP:I = 0x10

.field static final TRANSACTION_updateCOLR:I = 0xf

.field static final TRANSACTION_updateCallBarring:I = 0xa

.field static final TRANSACTION_updateCallForward:I = 0xb

.field static final TRANSACTION_updateCallWaiting:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;
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
    const-string/jumbo v1, "com.android.ims.internal.IImsUt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsUt;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/ims/internal/IImsUt;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsUt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsUt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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

    .line 228
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 47
    :sswitch_0
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    return v0

    .line 52
    :sswitch_1
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->close()V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v0, 0x1

    return v0

    .line 59
    :sswitch_2
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallBarring(I)I

    move-result v11

    .line 63
    .local v11, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/4 v0, 0x1

    return v0

    .line 69
    .end local v1    # "_arg0":I
    .end local v11    # "_result":I
    :sswitch_3
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v9}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallForward(ILjava/lang/String;)I

    move-result v11

    .line 75
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v0, 0x1

    return v0

    .line 81
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":I
    :sswitch_4
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallWaiting()I

    move-result v11

    .line 83
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    const/4 v0, 0x1

    return v0

    .line 89
    .end local v11    # "_result":I
    :sswitch_5
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIR()I

    move-result v11

    .line 91
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v0, 0x1

    return v0

    .line 97
    .end local v11    # "_result":I
    :sswitch_6
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIP()I

    move-result v11

    .line 99
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v0, 0x1

    return v0

    .line 105
    .end local v11    # "_result":I
    :sswitch_7
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLR()I

    move-result v11

    .line 107
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v0, 0x1

    return v0

    .line 113
    .end local v11    # "_result":I
    :sswitch_8
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLP()I

    move-result v11

    .line 115
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v0, 0x1

    return v0

    .line 121
    .end local v11    # "_result":I
    :sswitch_9
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 129
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/ims/internal/IImsUt$Stub;->transact(Landroid/os/Bundle;)I

    move-result v11

    .line 130
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v0, 0x1

    return v0

    .line 127
    .end local v11    # "_result":I
    :cond_0
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    .line 136
    .end local v6    # "_arg0":Landroid/os/Bundle;
    :sswitch_a
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 143
    .local v10, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v10}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v11

    .line 144
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v0, 0x1

    return v0

    .line 150
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v10    # "_arg2":[Ljava/lang/String;
    .end local v11    # "_result":I
    :sswitch_b
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 161
    invoke-virtual/range {v0 .. v5}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallForward(IILjava/lang/String;II)I

    move-result v11

    .line 162
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v0, 0x1

    return v0

    .line 168
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v11    # "_result":I
    :sswitch_c
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 172
    .local v8, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v8, v2}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallWaiting(ZI)I

    move-result v11

    .line 174
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v0, 0x1

    return v0

    .line 170
    .end local v2    # "_arg1":I
    .end local v8    # "_arg0":Z
    .end local v11    # "_result":I
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_1

    .line 180
    .end local v8    # "_arg0":Z
    :sswitch_d
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIR(I)I

    move-result v11

    .line 184
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    const/4 v0, 0x1

    return v0

    .line 190
    .end local v1    # "_arg0":I
    .end local v11    # "_result":I
    :sswitch_e
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    .line 193
    .restart local v8    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIP(Z)I

    move-result v11

    .line 194
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v0, 0x1

    return v0

    .line 192
    .end local v8    # "_arg0":Z
    .end local v11    # "_result":I
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_2

    .line 200
    .end local v8    # "_arg0":Z
    :sswitch_f
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLR(I)I

    move-result v11

    .line 204
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    const/4 v0, 0x1

    return v0

    .line 210
    .end local v1    # "_arg0":I
    .end local v11    # "_result":I
    :sswitch_10
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    .line 213
    .restart local v8    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v8}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLP(Z)I

    move-result v11

    .line 214
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/4 v0, 0x1

    return v0

    .line 212
    .end local v8    # "_arg0":Z
    .end local v11    # "_result":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_3

    .line 220
    .end local v8    # "_arg0":Z
    :sswitch_11
    const-string/jumbo v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/internal/IImsUtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v7

    .line 223
    .local v7, "_arg0":Lcom/android/ims/internal/IImsUtListener;
    invoke-virtual {p0, v7}, Lcom/android/ims/internal/IImsUt$Stub;->setListener(Lcom/android/ims/internal/IImsUtListener;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    const/4 v0, 0x1

    return v0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
