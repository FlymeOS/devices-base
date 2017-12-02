.class public abstract Landroid/app/IUiAutomationConnection$Stub;
.super Landroid/os/Binder;
.source "IUiAutomationConnection.java"

# interfaces
.implements Landroid/app/IUiAutomationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiAutomationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiAutomationConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IUiAutomationConnection"

.field static final TRANSACTION_clearWindowAnimationFrameStats:I = 0x8

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x6

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_executeShellCommand:I = 0xa

.field static final TRANSACTION_getWindowAnimationFrameStats:I = 0x9

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x7

.field static final TRANSACTION_grantRuntimePermission:I = 0xb

.field static final TRANSACTION_injectInputEvent:I = 0x3

.field static final TRANSACTION_revokeRuntimePermission:I = 0xc

.field static final TRANSACTION_setRotation:I = 0x4

.field static final TRANSACTION_shutdown:I = 0xd

.field static final TRANSACTION_takeScreenshot:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string/jumbo v0, "android.app.IUiAutomationConnection"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUiAutomationConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 32
    if-nez p0, :cond_0

    .line 33
    return-object v1

    .line 35
    :cond_0
    const-string/jumbo v1, "android.app.IUiAutomationConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IUiAutomationConnection;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Landroid/app/IUiAutomationConnection;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 39
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IUiAutomationConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUiAutomationConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 213
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    .line 51
    :sswitch_0
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    const/4 v14, 0x1

    return v14

    .line 56
    :sswitch_1
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v2

    .line 60
    .local v2, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 61
    .local v5, "_arg1":I
    invoke-virtual {p0, v2, v5}, Landroid/app/IUiAutomationConnection$Stub;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v14, 0x1

    return v14

    .line 67
    .end local v2    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v5    # "_arg1":I
    :sswitch_2
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->disconnect()V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v14, 0x1

    return v14

    .line 74
    :sswitch_3
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_0

    .line 77
    sget-object v14, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputEvent;

    .line 83
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1

    const/4 v8, 0x1

    .line 84
    .local v8, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v3, v8}, Landroid/app/IUiAutomationConnection$Stub;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    move-result v13

    .line 85
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v13, :cond_2

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v14, 0x1

    return v14

    .line 80
    .end local v8    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/view/InputEvent;
    goto :goto_0

    .line 83
    .end local v3    # "_arg0":Landroid/view/InputEvent;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 86
    .restart local v8    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 91
    .end local v8    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_4
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IUiAutomationConnection$Stub;->setRotation(I)Z

    move-result v13

    .line 95
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v13, :cond_3

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v14, 0x1

    return v14

    .line 96
    :cond_3
    const/4 v14, 0x0

    goto :goto_3

    .line 101
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_5
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 106
    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v1, v5}, Landroid/app/IUiAutomationConnection$Stub;->takeScreenshot(II)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 107
    .local v10, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v10, :cond_4

    .line 109
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v14}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 115
    :goto_4
    const/4 v14, 0x1

    return v14

    .line 113
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 119
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v10    # "_result":Landroid/graphics/Bitmap;
    :sswitch_6
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IUiAutomationConnection$Stub;->clearWindowContentFrameStats(I)Z

    move-result v13

    .line 123
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v13, :cond_5

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v14, 0x1

    return v14

    .line 124
    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    .line 129
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_7
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/app/IUiAutomationConnection$Stub;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;

    move-result-object v12

    .line 133
    .local v12, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v12, :cond_6

    .line 135
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v14}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    :goto_6
    const/4 v14, 0x1

    return v14

    .line 139
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 145
    .end local v1    # "_arg0":I
    .end local v12    # "_result":Landroid/view/WindowContentFrameStats;
    :sswitch_8
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->clearWindowAnimationFrameStats()V

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    const/4 v14, 0x1

    return v14

    .line 152
    :sswitch_9
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;

    move-result-object v11

    .line 154
    .local v11, "_result":Landroid/view/WindowAnimationFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v11, :cond_7

    .line 156
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v14}, Landroid/view/WindowAnimationFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    :goto_7
    const/4 v14, 0x1

    return v14

    .line 160
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 166
    .end local v11    # "_result":Landroid/view/WindowAnimationFrameStats;
    :sswitch_a
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_8

    .line 171
    sget-object v14, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 176
    :goto_8
    invoke-virtual {p0, v4, v6}, Landroid/app/IUiAutomationConnection$Stub;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    const/4 v14, 0x1

    return v14

    .line 174
    :cond_8
    const/4 v6, 0x0

    .local v6, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    .line 182
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_b
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 189
    .local v9, "_arg2":I
    invoke-virtual {p0, v4, v7, v9}, Landroid/app/IUiAutomationConnection$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    const/4 v14, 0x1

    return v14

    .line 195
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_c
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 199
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 201
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 202
    .restart local v9    # "_arg2":I
    invoke-virtual {p0, v4, v7, v9}, Landroid/app/IUiAutomationConnection$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v14, 0x1

    return v14

    .line 208
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_d
    const-string/jumbo v14, "android.app.IUiAutomationConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/app/IUiAutomationConnection$Stub;->shutdown()V

    .line 210
    const/4 v14, 0x1

    return v14

    .line 47
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
