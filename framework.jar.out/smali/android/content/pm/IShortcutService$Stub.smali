.class public abstract Landroid/content/pm/IShortcutService$Stub;
.super Landroid/os/Binder;
.source "IShortcutService.java"

# interfaces
.implements Landroid/content/pm/IShortcutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IShortcutService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IShortcutService"

.field static final TRANSACTION_addDynamicShortcuts:I = 0x4

.field static final TRANSACTION_applyRestore:I = 0x13

.field static final TRANSACTION_disableShortcuts:I = 0x9

.field static final TRANSACTION_enableShortcuts:I = 0xa

.field static final TRANSACTION_getBackupPayload:I = 0x12

.field static final TRANSACTION_getDynamicShortcuts:I = 0x2

.field static final TRANSACTION_getIconMaxDimensions:I = 0xe

.field static final TRANSACTION_getManifestShortcuts:I = 0x3

.field static final TRANSACTION_getMaxShortcutCountPerActivity:I = 0xb

.field static final TRANSACTION_getPinnedShortcuts:I = 0x7

.field static final TRANSACTION_getRateLimitResetTime:I = 0xd

.field static final TRANSACTION_getRemainingCallCount:I = 0xc

.field static final TRANSACTION_onApplicationActive:I = 0x11

.field static final TRANSACTION_removeAllDynamicShortcuts:I = 0x6

.field static final TRANSACTION_removeDynamicShortcuts:I = 0x5

.field static final TRANSACTION_reportShortcutUsed:I = 0xf

.field static final TRANSACTION_resetThrottling:I = 0x10

.field static final TRANSACTION_setDynamicShortcuts:I = 0x1

.field static final TRANSACTION_updateShortcuts:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.content.pm.IShortcutService"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IShortcutService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;
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
    const-string/jumbo v1, "android.content.pm.IShortcutService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IShortcutService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/content/pm/IShortcutService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IShortcutService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IShortcutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 23
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

    .line 322
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    return v4

    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ParceledListSlice;

    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 62
    .local v15, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13, v15}, Landroid/content/pm/IShortcutService$Stub;->setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v20

    .line 63
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v20, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/4 v4, 0x1

    return v4

    .line 58
    .end local v15    # "_arg2":I
    .end local v20    # "_result":Z
    :cond_0
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    .line 64
    .end local v13    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .restart local v15    # "_arg2":I
    .restart local v20    # "_result":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 69
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v20    # "_result":Z
    :sswitch_2
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 73
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 74
    .local v12, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getDynamicShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v17

    .line 75
    .local v17, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v17, :cond_2

    .line 77
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    :goto_2
    const/4 v4, 0x1

    return v4

    .line 81
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 87
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_3
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 91
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 92
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getManifestShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v17

    .line 93
    .restart local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v17, :cond_3

    .line 95
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    :goto_3
    const/4 v4, 0x1

    return v4

    .line 99
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 105
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_4
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 109
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 110
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ParceledListSlice;

    .line 116
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 117
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13, v15}, Landroid/content/pm/IShortcutService$Stub;->addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v20

    .line 118
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v20, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v4, 0x1

    return v4

    .line 113
    .end local v15    # "_arg2":I
    .end local v20    # "_result":Z
    :cond_4
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_4

    .line 119
    .end local v13    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .restart local v15    # "_arg2":I
    .restart local v20    # "_result":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 124
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v20    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 128
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v22

    .line 129
    .local v22, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    .line 131
    .local v6, "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 132
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v15}, Landroid/content/pm/IShortcutService$Stub;->removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v4, 0x1

    return v4

    .line 138
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v15    # "_arg2":I
    .end local v22    # "cl":Ljava/lang/ClassLoader;
    :sswitch_6
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 142
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 143
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->removeAllDynamicShortcuts(Ljava/lang/String;I)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/4 v4, 0x1

    return v4

    .line 149
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    :sswitch_7
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 153
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 154
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getPinnedShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v17

    .line 155
    .restart local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v17, :cond_6

    .line 157
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 163
    :goto_6
    const/4 v4, 0x1

    return v4

    .line 161
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 167
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_8
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 171
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 172
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ParceledListSlice;

    .line 178
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 179
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13, v15}, Landroid/content/pm/IShortcutService$Stub;->updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v20

    .line 180
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v20, :cond_8

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v4, 0x1

    return v4

    .line 175
    .end local v15    # "_arg2":I
    .end local v20    # "_result":Z
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_7

    .line 181
    .end local v13    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .restart local v15    # "_arg2":I
    .restart local v20    # "_result":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    .line 186
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v20    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 190
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v22

    .line 191
    .restart local v22    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    .line 193
    .restart local v6    # "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 194
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 200
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 202
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v4, p0

    .line 203
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IShortcutService$Stub;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v4, 0x1

    return v4

    .line 197
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :cond_9
    const/4 v7, 0x0

    .local v7, "_arg2":Ljava/lang/CharSequence;
    goto :goto_9

    .line 209
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v7    # "_arg2":Ljava/lang/CharSequence;
    .end local v22    # "cl":Ljava/lang/ClassLoader;
    :sswitch_a
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 213
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v22

    .line 214
    .restart local v22    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    .line 216
    .restart local v6    # "_arg1":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 217
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v15}, Landroid/content/pm/IShortcutService$Stub;->enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    const/4 v4, 0x1

    return v4

    .line 223
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/util/List;
    .end local v15    # "_arg2":I
    .end local v22    # "cl":Ljava/lang/ClassLoader;
    :sswitch_b
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 227
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 228
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getMaxShortcutCountPerActivity(Ljava/lang/String;I)I

    move-result v16

    .line 229
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v4, 0x1

    return v4

    .line 235
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v16    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 239
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 240
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getRemainingCallCount(Ljava/lang/String;I)I

    move-result v16

    .line 241
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v4, 0x1

    return v4

    .line 247
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v16    # "_result":I
    :sswitch_d
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 251
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 252
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getRateLimitResetTime(Ljava/lang/String;I)J

    move-result-wide v18

    .line 253
    .local v18, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 255
    const/4 v4, 0x1

    return v4

    .line 259
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v18    # "_result":J
    :sswitch_e
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 263
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 264
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->getIconMaxDimensions(Ljava/lang/String;I)I

    move-result v16

    .line 265
    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v4, 0x1

    return v4

    .line 271
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v16    # "_result":I
    :sswitch_f
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 275
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 277
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 278
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14, v15}, Landroid/content/pm/IShortcutService$Stub;->reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v4, 0x1

    return v4

    .line 284
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    :sswitch_10
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->resetThrottling()V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/4 v4, 0x1

    return v4

    .line 291
    :sswitch_11
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 295
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 296
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/content/pm/IShortcutService$Stub;->onApplicationActive(Ljava/lang/String;I)V

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    const/4 v4, 0x1

    return v4

    .line 302
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    :sswitch_12
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 305
    .local v10, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/pm/IShortcutService$Stub;->getBackupPayload(I)[B

    move-result-object v21

    .line 306
    .local v21, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 308
    const/4 v4, 0x1

    return v4

    .line 312
    .end local v10    # "_arg0":I
    .end local v21    # "_result":[B
    :sswitch_13
    const-string/jumbo v4, "android.content.pm.IShortcutService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 316
    .local v11, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 317
    .restart local v12    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Landroid/content/pm/IShortcutService$Stub;->applyRestore([BI)V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    const/4 v4, 0x1

    return v4

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
