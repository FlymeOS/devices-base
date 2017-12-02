.class public abstract Landroid/content/pm/ILauncherApps$Stub;
.super Landroid/os/Binder;
.source "ILauncherApps.java"

# interfaces
.implements Landroid/content/pm/ILauncherApps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ILauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ILauncherApps$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.ILauncherApps"

.field static final TRANSACTION_addOnAppsChangedListener:I = 0x1

.field static final TRANSACTION_getApplicationInfo:I = 0x9

.field static final TRANSACTION_getLauncherActivities:I = 0x3

.field static final TRANSACTION_getShortcutIconFd:I = 0xe

.field static final TRANSACTION_getShortcutIconResId:I = 0xd

.field static final TRANSACTION_getShortcuts:I = 0xa

.field static final TRANSACTION_hasShortcutHostPermission:I = 0xf

.field static final TRANSACTION_isActivityEnabled:I = 0x8

.field static final TRANSACTION_isPackageEnabled:I = 0x7

.field static final TRANSACTION_pinShortcuts:I = 0xb

.field static final TRANSACTION_removeOnAppsChangedListener:I = 0x2

.field static final TRANSACTION_resolveActivity:I = 0x4

.field static final TRANSACTION_showAppDetailsAsUser:I = 0x6

.field static final TRANSACTION_startActivityAsUser:I = 0x5

.field static final TRANSACTION_startShortcut:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.content.pm.ILauncherApps"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/ILauncherApps$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/ILauncherApps;
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
    const-string/jumbo v1, "android.content.pm.ILauncherApps"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/ILauncherApps;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/content/pm/ILauncherApps;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/ILauncherApps$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/ILauncherApps$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 40
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

    .line 391
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 45
    :sswitch_0
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v6, 0x1

    return v6

    .line 50
    :sswitch_1
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOnAppsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;

    move-result-object v25

    .line 55
    .local v25, "_arg1":Landroid/content/pm/IOnAppsChangedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/ILauncherApps$Stub;->addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/4 v6, 0x1

    return v6

    .line 61
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/content/pm/IOnAppsChangedListener;
    :sswitch_2
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOnAppsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;

    move-result-object v23

    .line 64
    .local v23, "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/ILauncherApps$Stub;->removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v6, 0x1

    return v6

    .line 70
    .end local v23    # "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    :sswitch_3
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 74
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/UserHandle;

    .line 80
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/ILauncherApps$Stub;->getLauncherActivities(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v36

    .line 81
    .local v36, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v36, :cond_1

    .line 83
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v6, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    :goto_1
    const/4 v6, 0x1

    return v6

    .line 78
    .end local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_0
    const/16 v27, 0x0

    .local v27, "_arg1":Landroid/os/UserHandle;
    goto :goto_0

    .line 87
    .end local v27    # "_arg1":Landroid/os/UserHandle;
    .restart local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 93
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_4
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/ComponentName;

    .line 102
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 103
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/UserHandle;

    .line 108
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ILauncherApps$Stub;->resolveActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/ActivityInfo;

    move-result-object v34

    .line 109
    .local v34, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v34, :cond_4

    .line 111
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v6, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 117
    :goto_4
    const/4 v6, 0x1

    return v6

    .line 99
    .end local v34    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_2
    const/16 v22, 0x0

    .local v22, "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 106
    .end local v22    # "_arg0":Landroid/content/ComponentName;
    :cond_3
    const/16 v27, 0x0

    .restart local v27    # "_arg1":Landroid/os/UserHandle;
    goto :goto_3

    .line 115
    .end local v27    # "_arg1":Landroid/os/UserHandle;
    .restart local v34    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 121
    .end local v34    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_5
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 124
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/ComponentName;

    .line 130
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 131
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/Rect;

    .line 137
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 138
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/Bundle;

    .line 144
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 145
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/UserHandle;

    .line 150
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/ILauncherApps$Stub;->startActivityAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v6, 0x1

    return v6

    .line 127
    :cond_5
    const/16 v22, 0x0

    .restart local v22    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    .line 134
    .end local v22    # "_arg0":Landroid/content/ComponentName;
    :cond_6
    const/16 v26, 0x0

    .local v26, "_arg1":Landroid/graphics/Rect;
    goto :goto_6

    .line 141
    .end local v26    # "_arg1":Landroid/graphics/Rect;
    :cond_7
    const/16 v28, 0x0

    .local v28, "_arg2":Landroid/os/Bundle;
    goto :goto_7

    .line 148
    .end local v28    # "_arg2":Landroid/os/Bundle;
    :cond_8
    const/16 v32, 0x0

    .local v32, "_arg3":Landroid/os/UserHandle;
    goto :goto_8

    .line 156
    .end local v32    # "_arg3":Landroid/os/UserHandle;
    :sswitch_6
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 159
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/ComponentName;

    .line 165
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 166
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/Rect;

    .line 172
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 173
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/Bundle;

    .line 179
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 180
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/UserHandle;

    .line 185
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/ILauncherApps$Stub;->showAppDetailsAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v6, 0x1

    return v6

    .line 162
    :cond_9
    const/16 v22, 0x0

    .restart local v22    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .line 169
    .end local v22    # "_arg0":Landroid/content/ComponentName;
    :cond_a
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Landroid/graphics/Rect;
    goto :goto_a

    .line 176
    .end local v26    # "_arg1":Landroid/graphics/Rect;
    :cond_b
    const/16 v28, 0x0

    .restart local v28    # "_arg2":Landroid/os/Bundle;
    goto :goto_b

    .line 183
    .end local v28    # "_arg2":Landroid/os/Bundle;
    :cond_c
    const/16 v32, 0x0

    .restart local v32    # "_arg3":Landroid/os/UserHandle;
    goto :goto_c

    .line 191
    .end local v32    # "_arg3":Landroid/os/UserHandle;
    :sswitch_7
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 195
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 196
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/UserHandle;

    .line 201
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/ILauncherApps$Stub;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v38

    .line 202
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v38, :cond_e

    const/4 v6, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v6, 0x1

    return v6

    .line 199
    .end local v38    # "_result":Z
    :cond_d
    const/16 v27, 0x0

    .restart local v27    # "_arg1":Landroid/os/UserHandle;
    goto :goto_d

    .line 203
    .end local v27    # "_arg1":Landroid/os/UserHandle;
    .restart local v38    # "_result":Z
    :cond_e
    const/4 v6, 0x0

    goto :goto_e

    .line 208
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_8
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    .line 211
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/ComponentName;

    .line 217
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 218
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/UserHandle;

    .line 223
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ILauncherApps$Stub;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v38

    .line 224
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v38, :cond_11

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v6, 0x1

    return v6

    .line 214
    .end local v38    # "_result":Z
    :cond_f
    const/16 v22, 0x0

    .restart local v22    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .line 221
    .end local v22    # "_arg0":Landroid/content/ComponentName;
    :cond_10
    const/16 v27, 0x0

    .restart local v27    # "_arg1":Landroid/os/UserHandle;
    goto :goto_10

    .line 225
    .end local v27    # "_arg1":Landroid/os/UserHandle;
    .restart local v38    # "_result":Z
    :cond_11
    const/4 v6, 0x0

    goto :goto_11

    .line 230
    .end local v38    # "_result":Z
    :sswitch_9
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 234
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 236
    .local v24, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 237
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/UserHandle;

    .line 242
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v29

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/pm/ILauncherApps$Stub;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v35

    .line 243
    .local v35, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v35, :cond_13

    .line 245
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v6, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 251
    :goto_13
    const/4 v6, 0x1

    return v6

    .line 240
    .end local v35    # "_result":Landroid/content/pm/ApplicationInfo;
    :cond_12
    const/16 v29, 0x0

    .local v29, "_arg2":Landroid/os/UserHandle;
    goto :goto_12

    .line 249
    .end local v29    # "_arg2":Landroid/os/UserHandle;
    .restart local v35    # "_result":Landroid/content/pm/ApplicationInfo;
    :cond_13
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 255
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg1":I
    .end local v35    # "_result":Landroid/content/pm/ApplicationInfo;
    :sswitch_a
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 259
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 261
    .local v8, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ILauncherApps$Stub;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v39

    .line 264
    .local v39, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v11

    .line 266
    .local v11, "_arg3":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    .line 267
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    .line 273
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 275
    .local v13, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    .line 276
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserHandle;

    :goto_15
    move-object/from16 v6, p0

    .line 281
    invoke-virtual/range {v6 .. v14}, Landroid/content/pm/ILauncherApps$Stub;->getShortcuts(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v36

    .line 282
    .restart local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v36, :cond_16

    .line 284
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v6, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 290
    :goto_16
    const/4 v6, 0x1

    return v6

    .line 270
    .end local v13    # "_arg5":I
    .end local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_14
    const/4 v12, 0x0

    .local v12, "_arg4":Landroid/content/ComponentName;
    goto :goto_14

    .line 279
    .end local v12    # "_arg4":Landroid/content/ComponentName;
    .restart local v13    # "_arg5":I
    :cond_15
    const/4 v14, 0x0

    .local v14, "_arg6":Landroid/os/UserHandle;
    goto :goto_15

    .line 288
    .end local v14    # "_arg6":Landroid/os/UserHandle;
    .restart local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_16
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 294
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":J
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg3":Ljava/util/List;
    .end local v13    # "_arg5":I
    .end local v36    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v39    # "cl":Ljava/lang/ClassLoader;
    :sswitch_b
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 298
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 300
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v30

    .line 302
    .local v30, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    .line 303
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/UserHandle;

    .line 308
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v30

    move-object/from16 v3, v32

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/4 v6, 0x1

    return v6

    .line 306
    :cond_17
    const/16 v32, 0x0

    .restart local v32    # "_arg3":Landroid/os/UserHandle;
    goto :goto_17

    .line 314
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "_arg3":Landroid/os/UserHandle;
    :sswitch_c
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 318
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 320
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 322
    .restart local v10    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    .line 323
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Rect;

    .line 329
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    .line 330
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Bundle;

    .line 336
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg5":I
    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-object/from16 v18, v10

    move/from16 v21, v13

    .line 337
    invoke-virtual/range {v15 .. v21}, Landroid/content/pm/ILauncherApps$Stub;->startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    move-result v38

    .line 338
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    if-eqz v38, :cond_1a

    const/4 v6, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    const/4 v6, 0x1

    return v6

    .line 326
    .end local v13    # "_arg5":I
    .end local v38    # "_result":Z
    :cond_18
    const/16 v19, 0x0

    .local v19, "_arg3":Landroid/graphics/Rect;
    goto :goto_18

    .line 333
    .end local v19    # "_arg3":Landroid/graphics/Rect;
    :cond_19
    const/16 v20, 0x0

    .local v20, "_arg4":Landroid/os/Bundle;
    goto :goto_19

    .line 339
    .end local v20    # "_arg4":Landroid/os/Bundle;
    .restart local v13    # "_arg5":I
    .restart local v38    # "_result":Z
    :cond_1a
    const/4 v6, 0x0

    goto :goto_1a

    .line 344
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg5":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_d
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 348
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 350
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 352
    .restart local v10    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 353
    .local v31, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v31

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v33

    .line 354
    .local v33, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v6, 0x1

    return v6

    .line 360
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg3":I
    .end local v33    # "_result":I
    :sswitch_e
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 364
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 366
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 368
    .restart local v10    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 369
    .restart local v31    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v31

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v37

    .line 370
    .local v37, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    if-eqz v37, :cond_1b

    .line 372
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v6, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 378
    :goto_1b
    const/4 v6, 0x1

    return v6

    .line 376
    :cond_1b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 382
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg3":I
    .end local v37    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_f
    const-string/jumbo v6, "android.content.pm.ILauncherApps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 385
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/ILauncherApps$Stub;->hasShortcutHostPermission(Ljava/lang/String;)Z

    move-result v38

    .line 386
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    if-eqz v38, :cond_1c

    const/4 v6, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v6, 0x1

    return v6

    .line 387
    :cond_1c
    const/4 v6, 0x0

    goto :goto_1c

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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
