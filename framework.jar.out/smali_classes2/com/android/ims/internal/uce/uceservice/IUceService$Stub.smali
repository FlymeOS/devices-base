.class public abstract Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;
.super Landroid/os/Binder;
.source "IUceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/uceservice/IUceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/uceservice/IUceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.uceservice.IUceService"

.field static final TRANSACTION_createOptionsService:I = 0x4

.field static final TRANSACTION_createPresenceService:I = 0x6

.field static final TRANSACTION_destroyOptionsService:I = 0x5

.field static final TRANSACTION_destroyPresenceService:I = 0x7

.field static final TRANSACTION_getOptionsService:I = 0xa

.field static final TRANSACTION_getPresenceService:I = 0x9

.field static final TRANSACTION_getServiceStatus:I = 0x8

.field static final TRANSACTION_isServiceStarted:I = 0x3

.field static final TRANSACTION_startService:I = 0x1

.field static final TRANSACTION_stopService:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;
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
    const-string/jumbo v1, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/uceservice/IUceService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/ims/internal/uce/uceservice/IUceService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 45
    :sswitch_0
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v9, 0x1

    return v9

    .line 50
    :sswitch_1
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/ims/internal/uce/uceservice/IUceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceListener;

    move-result-object v3

    .line 53
    .local v3, "_arg0":Lcom/android/ims/internal/uce/uceservice/IUceListener;
    invoke-virtual {p0, v3}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z

    move-result v8

    .line 54
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v8, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v9, 0x1

    return v9

    .line 55
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 60
    .end local v3    # "_arg0":Lcom/android/ims/internal/uce/uceservice/IUceListener;
    .end local v8    # "_result":Z
    :sswitch_2
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->stopService()Z

    move-result v8

    .line 62
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v8, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v9, 0x1

    return v9

    .line 63
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 68
    .end local v8    # "_result":Z
    :sswitch_3
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->isServiceStarted()Z

    move-result v8

    .line 70
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v8, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v9, 0x1

    return v9

    .line 71
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 76
    .end local v8    # "_result":Z
    :sswitch_4
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v1

    .line 80
    .local v1, "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    .line 81
    sget-object v9, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/uce/common/UceLong;

    .line 86
    :goto_3
    invoke-virtual {p0, v1, v4}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v5

    .line 87
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    if-eqz v4, :cond_4

    .line 90
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    :goto_4
    const/4 v9, 0x1

    return v9

    .line 84
    .end local v5    # "_result":I
    :cond_3
    const/4 v4, 0x0

    .local v4, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_3

    .line 94
    .end local v4    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v5    # "_result":I
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 100
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v5    # "_result":I
    :sswitch_5
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyOptionsService(I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/4 v9, 0x1

    return v9

    .line 109
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v2

    .line 113
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    .line 114
    sget-object v9, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/uce/common/UceLong;

    .line 119
    :goto_5
    invoke-virtual {p0, v2, v4}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v5

    .line 120
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    if-eqz v4, :cond_6

    .line 123
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    :goto_6
    const/4 v9, 0x1

    return v9

    .line 117
    .end local v5    # "_result":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_5

    .line 127
    .end local v4    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v5    # "_result":I
    :cond_6
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 133
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v5    # "_result":I
    :sswitch_7
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyPresenceService(I)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v9, 0x1

    return v9

    .line 142
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getServiceStatus()Z

    move-result v8

    .line 144
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v8, :cond_7

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v9, 0x1

    return v9

    .line 145
    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    .line 150
    .end local v8    # "_result":Z
    :sswitch_9
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v7

    .line 152
    .local v7, "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v7, :cond_8

    invoke-interface {v7}, Lcom/android/ims/internal/uce/presence/IPresenceService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    :goto_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 154
    const/4 v9, 0x1

    return v9

    .line 153
    :cond_8
    const/4 v9, 0x0

    goto :goto_8

    .line 158
    .end local v7    # "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    :sswitch_a
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v6

    .line 160
    .local v6, "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v6, :cond_9

    invoke-interface {v6}, Lcom/android/ims/internal/uce/options/IOptionsService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    :goto_9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 162
    const/4 v9, 0x1

    return v9

    .line 161
    :cond_9
    const/4 v9, 0x0

    goto :goto_9

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
