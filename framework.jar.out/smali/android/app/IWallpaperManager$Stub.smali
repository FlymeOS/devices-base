.class public abstract Landroid/app/IWallpaperManager$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManager"

.field static final TRANSACTION_clearWallpaper:I = 0x7

.field static final TRANSACTION_getHeightHint:I = 0xb

.field static final TRANSACTION_getName:I = 0xd

.field static final TRANSACTION_getWallpaper:I = 0x4

.field static final TRANSACTION_getWallpaperIdForUser:I = 0x5

.field static final TRANSACTION_getWallpaperInfo:I = 0x6

.field static final TRANSACTION_getWidthHint:I = 0xa

.field static final TRANSACTION_hasNamedWallpaper:I = 0x8

.field static final TRANSACTION_isSetWallpaperAllowed:I = 0x10

.field static final TRANSACTION_isWallpaperBackupEligible:I = 0x11

.field static final TRANSACTION_isWallpaperSupported:I = 0xf

.field static final TRANSACTION_setDimensionHints:I = 0x9

.field static final TRANSACTION_setDisplayPadding:I = 0xc

.field static final TRANSACTION_setLockWallpaperCallback:I = 0x12

.field static final TRANSACTION_setWallpaper:I = 0x1

.field static final TRANSACTION_setWallpaperComponent:I = 0x3

.field static final TRANSACTION_setWallpaperComponentChecked:I = 0x2

.field static final TRANSACTION_settingsRestored:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.app.IWallpaperManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;
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
    const-string/jumbo v1, "android.app.IWallpaperManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/IWallpaperManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IWallpaperManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IWallpaperManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 27
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 303
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v8, 0x1

    .line 63
    .local v8, "_arg3":Z
    :goto_1
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v9, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 67
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v11

    .line 69
    .local v11, "_arg6":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg7":I
    move-object/from16 v4, p0

    .line 70
    invoke-virtual/range {v4 .. v12}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v24

    .line 71
    .local v24, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v24, :cond_2

    .line 73
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v4, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    :goto_2
    if-eqz v9, :cond_3

    .line 80
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    :goto_3
    const/4 v4, 0x1

    return v4

    .line 58
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Landroid/os/Bundle;
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .end local v12    # "_arg7":I
    .end local v24    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_0
    const/4 v7, 0x0

    .local v7, "_arg2":Landroid/graphics/Rect;
    goto :goto_0

    .line 61
    .end local v7    # "_arg2":Landroid/graphics/Rect;
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Z
    goto :goto_1

    .line 77
    .restart local v9    # "_arg4":Landroid/os/Bundle;
    .restart local v10    # "_arg5":I
    .restart local v11    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .restart local v12    # "_arg7":I
    .restart local v24    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 84
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 90
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":Landroid/os/Bundle;
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .end local v12    # "_arg7":I
    .end local v24    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 99
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 101
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 102
    .local v18, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v4, 0x1

    return v4

    .line 96
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    :cond_4
    const/4 v15, 0x0

    .local v15, "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    .line 108
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 111
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 116
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v4, 0x1

    return v4

    .line 114
    :cond_5
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    .line 122
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v14

    .line 126
    .local v14, "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 128
    .local v17, "_arg1":I
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v19, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 131
    .local v21, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v21

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v24

    .line 132
    .restart local v24    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v24, :cond_6

    .line 134
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v4, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    :goto_6
    if-eqz v19, :cond_7

    .line 141
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 147
    :goto_7
    const/4 v4, 0x1

    return v4

    .line 138
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 145
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 151
    .end local v14    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v17    # "_arg1":I
    .end local v19    # "_arg2":Landroid/os/Bundle;
    .end local v21    # "_arg3":I
    .end local v24    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 155
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 156
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperIdForUser(II)I

    move-result v22

    .line 157
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v4, 0x1

    return v4

    .line 163
    .end local v13    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v22    # "_result":I
    :sswitch_6
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 166
    .restart local v13    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v23

    .line 167
    .local v23, "_result":Landroid/app/WallpaperInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v23, :cond_8

    .line 169
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v4, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/WallpaperInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 175
    :goto_8
    const/4 v4, 0x1

    return v4

    .line 173
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 179
    .end local v13    # "_arg0":I
    .end local v23    # "_result":Landroid/app/WallpaperInfo;
    :sswitch_7
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 183
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 185
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 186
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;II)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v4, 0x1

    return v4

    .line 192
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    :sswitch_8
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 195
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v26

    .line 196
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v26, :cond_9

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v4, 0x1

    return v4

    .line 197
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .line 202
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 206
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 208
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 209
    .local v20, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v4, 0x1

    return v4

    .line 215
    .end local v13    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v20    # "_arg2":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWidthHint()I

    move-result v22

    .line 217
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v4, 0x1

    return v4

    .line 223
    .end local v22    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getHeightHint()I

    move-result v22

    .line 225
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v4, 0x1

    return v4

    .line 231
    .end local v22    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 234
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Rect;

    .line 240
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 241
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v4, 0x1

    return v4

    .line 237
    .end local v6    # "_arg1":Ljava/lang/String;
    :cond_a
    const/16 v16, 0x0

    .local v16, "_arg0":Landroid/graphics/Rect;
    goto :goto_a

    .line 247
    .end local v16    # "_arg0":Landroid/graphics/Rect;
    :sswitch_d
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    move-result-object v25

    .line 249
    .local v25, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    const/4 v4, 0x1

    return v4

    .line 255
    .end local v25    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v4, 0x1

    return v4

    .line 262
    :sswitch_f
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 265
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v26

    .line 266
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v26, :cond_b

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v4, 0x1

    return v4

    .line 267
    :cond_b
    const/4 v4, 0x0

    goto :goto_b

    .line 272
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_10
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 275
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/IWallpaperManager$Stub;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v26

    .line 276
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v26, :cond_c

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    const/4 v4, 0x1

    return v4

    .line 277
    :cond_c
    const/4 v4, 0x0

    goto :goto_c

    .line 282
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 286
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 287
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupEligible(II)Z

    move-result v26

    .line 288
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v26, :cond_d

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/4 v4, 0x1

    return v4

    .line 289
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .line 294
    .end local v13    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "android.app.IWallpaperManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v14

    .line 297
    .restart local v14    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/IWallpaperManager$Stub;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v26

    .line 298
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v26, :cond_e

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v4, 0x1

    return v4

    .line 299
    :cond_e
    const/4 v4, 0x0

    goto :goto_e

    .line 39
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
