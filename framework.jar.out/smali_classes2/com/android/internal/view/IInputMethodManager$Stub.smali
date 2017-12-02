.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final TRANSACTION_addClient:I = 0x6

.field static final TRANSACTION_clearLastInputMethodWindowForTransition:I = 0x1e

.field static final TRANSACTION_createInputContentUriToken:I = 0x1f

.field static final TRANSACTION_finishInput:I = 0x8

.field static final TRANSACTION_getCurrentInputMethodSubtype:I = 0x16

.field static final TRANSACTION_getEnabledInputMethodList:I = 0x2

.field static final TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x3

.field static final TRANSACTION_getInputMethodList:I = 0x1

.field static final TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x1d

.field static final TRANSACTION_getLastInputMethodSubtype:I = 0x4

.field static final TRANSACTION_getShortcutInputMethodsAndSubtypes:I = 0x5

.field static final TRANSACTION_hideMySoftInput:I = 0x10

.field static final TRANSACTION_hideSoftInput:I = 0xa

.field static final TRANSACTION_notifySuggestionPicked:I = 0x15

.field static final TRANSACTION_notifyUserAction:I = 0x20

.field static final TRANSACTION_registerSuggestionSpansForNotification:I = 0x14

.field static final TRANSACTION_removeClient:I = 0x7

.field static final TRANSACTION_setAdditionalInputMethodSubtypes:I = 0x1c

.field static final TRANSACTION_setCurrentInputMethodSubtype:I = 0x17

.field static final TRANSACTION_setImeWindowStatus:I = 0x13

.field static final TRANSACTION_setInputMethod:I = 0xe

.field static final TRANSACTION_setInputMethodAndSubtype:I = 0xf

.field static final TRANSACTION_setInputMethodEnabled:I = 0x1b

.field static final TRANSACTION_shouldOfferSwitchingToNextInputMethod:I = 0x1a

.field static final TRANSACTION_showInputMethodAndSubtypeEnablerFromClient:I = 0xd

.field static final TRANSACTION_showInputMethodPickerFromClient:I = 0xc

.field static final TRANSACTION_showMySoftInput:I = 0x11

.field static final TRANSACTION_showSoftInput:I = 0x9

.field static final TRANSACTION_startInputOrWindowGainedFocus:I = 0xb

.field static final TRANSACTION_switchToLastInputMethod:I = 0x18

.field static final TRANSACTION_switchToNextInputMethod:I = 0x19

.field static final TRANSACTION_updateStatusIcon:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/android/internal/view/IInputMethodManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 38
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 465
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 48
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v4, 0x1

    return v4

    .line 53
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList()Ljava/util/List;

    move-result-object v35

    .line 55
    .local v35, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 57
    const/4 v4, 0x1

    return v4

    .line 61
    .end local v35    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v35

    .line 63
    .restart local v35    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 65
    const/4 v4, 0x1

    return v4

    .line 69
    .end local v35    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 73
    .local v18, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v24, 0x1

    .line 74
    .local v24, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v36

    .line 75
    .local v36, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 77
    const/4 v4, 0x1

    return v4

    .line 73
    .end local v24    # "_arg1":Z
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_0
    const/16 v24, 0x0

    goto :goto_0

    .line 81
    .end local v18    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v31

    .line 83
    .local v31, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v31, :cond_1

    .line 85
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v4, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 89
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 95
    .end local v31    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    move-result-object v34

    .line 97
    .local v34, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 99
    const/4 v4, 0x1

    return v4

    .line 103
    .end local v34    # "_result":Ljava/util/List;
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 107
    .local v17, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v22

    .line 109
    .local v22, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 111
    .local v26, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 112
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v4, 0x1

    return v4

    .line 118
    .end local v8    # "_arg3":I
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v22    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v26    # "_arg2":I
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 121
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v4, 0x1

    return v4

    .line 127
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 130
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v4, 0x1

    return v4

    .line 136
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 140
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 142
    .local v20, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/ResultReceiver;

    .line 148
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v37

    .line 149
    .local v37, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v37, :cond_3

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v4, 0x1

    return v4

    .line 146
    .end local v37    # "_result":Z
    :cond_2
    const/16 v27, 0x0

    .local v27, "_arg2":Landroid/os/ResultReceiver;
    goto :goto_2

    .line 150
    .end local v27    # "_arg2":Landroid/os/ResultReceiver;
    .restart local v37    # "_result":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 155
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v20    # "_arg1":I
    .end local v37    # "_result":Z
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 159
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 161
    .restart local v20    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 162
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/ResultReceiver;

    .line 167
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v37

    .line 168
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v37, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v4, 0x1

    return v4

    .line 165
    .end local v37    # "_result":Z
    :cond_4
    const/16 v27, 0x0

    .restart local v27    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_4

    .line 169
    .end local v27    # "_arg2":Landroid/os/ResultReceiver;
    .restart local v37    # "_result":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 174
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v20    # "_arg1":I
    .end local v37    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 178
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v6

    .line 180
    .local v6, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 182
    .local v7, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 184
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 186
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 188
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 189
    sget-object v4, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/EditorInfo;

    .line 195
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v12

    .line 197
    .local v12, "_arg7":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg8":I
    move-object/from16 v4, p0

    .line 198
    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v33

    .line 199
    .local v33, "_result":Lcom/android/internal/view/InputBindResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v33, :cond_7

    .line 201
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v4, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/view/InputBindResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 207
    :goto_7
    const/4 v4, 0x1

    return v4

    .line 192
    .end local v12    # "_arg7":Lcom/android/internal/view/IInputContext;
    .end local v13    # "_arg8":I
    .end local v33    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_6
    const/4 v11, 0x0

    .local v11, "_arg6":Landroid/view/inputmethod/EditorInfo;
    goto :goto_6

    .line 205
    .end local v11    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    .restart local v12    # "_arg7":Lcom/android/internal/view/IInputContext;
    .restart local v13    # "_arg8":I
    .restart local v33    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 211
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v7    # "_arg2":Landroid/os/IBinder;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v12    # "_arg7":Lcom/android/internal/view/IInputContext;
    .end local v13    # "_arg8":I
    .end local v33    # "_result":Lcom/android/internal/view/InputBindResult;
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 215
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 216
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v4, 0x1

    return v4

    .line 222
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v20    # "_arg1":I
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 226
    .restart local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 227
    .local v23, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v4, 0x1

    return v4

    .line 233
    .end local v17    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 237
    .local v14, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 238
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v4, 0x1

    return v4

    .line 244
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 248
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 250
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 251
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/inputmethod/InputMethodSubtype;

    .line 256
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v4, 0x1

    return v4

    .line 254
    :cond_8
    const/16 v28, 0x0

    .local v28, "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_8

    .line 262
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 266
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 267
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideMySoftInput(Landroid/os/IBinder;I)V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    const/4 v4, 0x1

    return v4

    .line 273
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 277
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 278
    .restart local v20    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showMySoftInput(Landroid/os/IBinder;I)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v4, 0x1

    return v4

    .line 284
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":I
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 288
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 290
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 291
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/4 v4, 0x1

    return v4

    .line 297
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":I
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 301
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 303
    .restart local v20    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 304
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    const/4 v4, 0x1

    return v4

    .line 310
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":I
    .end local v26    # "_arg2":I
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    sget-object v4, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/style/SuggestionSpan;

    .line 313
    .local v19, "_arg0":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/4 v4, 0x1

    return v4

    .line 319
    .end local v19    # "_arg0":[Landroid/text/style/SuggestionSpan;
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 322
    sget-object v4, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/text/style/SuggestionSpan;

    .line 328
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 330
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 331
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z

    move-result v37

    .line 332
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v37, :cond_a

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v4, 0x1

    return v4

    .line 325
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":I
    .end local v37    # "_result":Z
    :cond_9
    const/4 v15, 0x0

    .local v15, "_arg0":Landroid/text/style/SuggestionSpan;
    goto :goto_9

    .line 333
    .end local v15    # "_arg0":Landroid/text/style/SuggestionSpan;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v26    # "_arg2":I
    .restart local v37    # "_result":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    .line 338
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":I
    .end local v37    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v31

    .line 340
    .restart local v31    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v31, :cond_b

    .line 342
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v4, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    .line 348
    :goto_b
    const/4 v4, 0x1

    return v4

    .line 346
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 352
    .end local v31    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 355
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    .line 360
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v37

    .line 361
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v37, :cond_d

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v4, 0x1

    return v4

    .line 358
    .end local v37    # "_result":Z
    :cond_c
    const/16 v16, 0x0

    .local v16, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_c

    .line 362
    .end local v16    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v37    # "_result":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .line 367
    .end local v37    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 370
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToLastInputMethod(Landroid/os/IBinder;)Z

    move-result v37

    .line 371
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v37, :cond_e

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v4, 0x1

    return v4

    .line 372
    :cond_e
    const/4 v4, 0x0

    goto :goto_e

    .line 377
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_result":Z
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 381
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/16 v24, 0x1

    .line 382
    .restart local v24    # "_arg1":Z
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    move-result v37

    .line 383
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v37, :cond_10

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v4, 0x1

    return v4

    .line 381
    .end local v24    # "_arg1":Z
    .end local v37    # "_result":Z
    :cond_f
    const/16 v24, 0x0

    goto :goto_f

    .line 384
    .restart local v24    # "_arg1":Z
    .restart local v37    # "_result":Z
    :cond_10
    const/4 v4, 0x0

    goto :goto_10

    .line 389
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v24    # "_arg1":Z
    .end local v37    # "_result":Z
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 392
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    move-result v37

    .line 393
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v37, :cond_11

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v4, 0x1

    return v4

    .line 394
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .line 399
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_result":Z
    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 403
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/16 v24, 0x1

    .line 404
    .restart local v24    # "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodEnabled(Ljava/lang/String;Z)Z

    move-result v37

    .line 405
    .restart local v37    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v37, :cond_13

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v4, 0x1

    return v4

    .line 403
    .end local v24    # "_arg1":Z
    .end local v37    # "_result":Z
    :cond_12
    const/16 v24, 0x0

    goto :goto_12

    .line 406
    .restart local v24    # "_arg1":Z
    .restart local v37    # "_result":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_13

    .line 411
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg1":Z
    .end local v37    # "_result":Z
    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 415
    .restart local v18    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/view/inputmethod/InputMethodSubtype;

    .line 416
    .local v25, "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    const/4 v4, 0x1

    return v4

    .line 422
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight()I

    move-result v30

    .line 424
    .local v30, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    const/4 v4, 0x1

    return v4

    .line 430
    .end local v30    # "_result":I
    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 433
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/view/IInputMethodManager$Stub;->clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V

    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    const/4 v4, 0x1

    return v4

    .line 439
    .end local v14    # "_arg0":Landroid/os/IBinder;
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 443
    .restart local v14    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 444
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/Uri;

    .line 450
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 451
    .local v29, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v29

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v32

    .line 452
    .local v32, "_result":Lcom/android/internal/inputmethod/IInputContentUriToken;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    if-eqz v32, :cond_15

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/inputmethod/IInputContentUriToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 454
    const/4 v4, 0x1

    return v4

    .line 447
    .end local v29    # "_arg2":Ljava/lang/String;
    .end local v32    # "_result":Lcom/android/internal/inputmethod/IInputContentUriToken;
    :cond_14
    const/16 v21, 0x0

    .local v21, "_arg1":Landroid/net/Uri;
    goto :goto_14

    .line 453
    .end local v21    # "_arg1":Landroid/net/Uri;
    .restart local v29    # "_arg2":Ljava/lang/String;
    .restart local v32    # "_result":Lcom/android/internal/inputmethod/IInputContentUriToken;
    :cond_15
    const/4 v4, 0x0

    goto :goto_15

    .line 458
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v29    # "_arg2":Ljava/lang/String;
    .end local v32    # "_result":Lcom/android/internal/inputmethod/IInputContentUriToken;
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 461
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifyUserAction(I)V

    .line 462
    const/4 v4, 0x1

    return v4

    .line 44
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
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
