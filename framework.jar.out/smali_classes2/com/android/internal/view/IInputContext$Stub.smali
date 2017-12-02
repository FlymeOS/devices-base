.class public abstract Lcom/android/internal/view/IInputContext$Stub;
.super Landroid/os/Binder;
.source "IInputContext.java"

# interfaces
.implements Lcom/android/internal/view/IInputContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputContext$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputContext"

.field static final TRANSACTION_beginBatchEdit:I = 0xf

.field static final TRANSACTION_clearMetaKeyStates:I = 0x13

.field static final TRANSACTION_commitCompletion:I = 0xa

.field static final TRANSACTION_commitContent:I = 0x18

.field static final TRANSACTION_commitCorrection:I = 0xb

.field static final TRANSACTION_commitText:I = 0x9

.field static final TRANSACTION_deleteSurroundingText:I = 0x5

.field static final TRANSACTION_deleteSurroundingTextInCodePoints:I = 0x6

.field static final TRANSACTION_endBatchEdit:I = 0x10

.field static final TRANSACTION_finishComposingText:I = 0x8

.field static final TRANSACTION_getCursorCapsMode:I = 0x3

.field static final TRANSACTION_getExtractedText:I = 0x4

.field static final TRANSACTION_getSelectedText:I = 0x16

.field static final TRANSACTION_getTextAfterCursor:I = 0x2

.field static final TRANSACTION_getTextBeforeCursor:I = 0x1

.field static final TRANSACTION_performContextMenuAction:I = 0xe

.field static final TRANSACTION_performEditorAction:I = 0xd

.field static final TRANSACTION_performPrivateCommand:I = 0x14

.field static final TRANSACTION_reportFullscreenMode:I = 0x11

.field static final TRANSACTION_requestUpdateCursorAnchorInfo:I = 0x17

.field static final TRANSACTION_sendKeyEvent:I = 0x12

.field static final TRANSACTION_setComposingRegion:I = 0x15

.field static final TRANSACTION_setComposingText:I = 0x7

.field static final TRANSACTION_setSelection:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.android.internal.view.IInputContext"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;
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
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputContext;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/internal/view/IInputContext;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputContext$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputContext$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 21
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

    .line 334
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 47
    :sswitch_0
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v3, 0x1

    return v3

    .line 52
    :sswitch_1
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 56
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 58
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 60
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v20

    .line 61
    .local v20, "_arg3":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v9, v5, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    .line 62
    const/4 v3, 0x1

    return v3

    .line 66
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    .end local v18    # "_arg2":I
    .end local v20    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_2
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 70
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 72
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 74
    .restart local v18    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v20

    .line 75
    .restart local v20    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v9, v5, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    .line 76
    const/4 v3, 0x1

    return v3

    .line 80
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    .end local v18    # "_arg2":I
    .end local v20    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_3
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 84
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 86
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v19

    .line 87
    .local v19, "_arg2":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v5, v1}, Lcom/android/internal/view/IInputContext$Stub;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    .line 88
    const/4 v3, 0x1

    return v3

    .line 92
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    .end local v19    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_4
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    sget-object v3, Landroid/view/inputmethod/ExtractedTextRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/ExtractedTextRequest;

    .line 101
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 103
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 105
    .restart local v18    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v20

    .line 106
    .restart local v20    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v13, v5, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    .line 107
    const/4 v3, 0x1

    return v3

    .line 98
    .end local v5    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v20    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    :cond_0
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/view/inputmethod/ExtractedTextRequest;
    goto :goto_0

    .line 111
    .end local v13    # "_arg0":Landroid/view/inputmethod/ExtractedTextRequest;
    :sswitch_5
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 115
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 116
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5}, Lcom/android/internal/view/IInputContext$Stub;->deleteSurroundingText(II)V

    .line 117
    const/4 v3, 0x1

    return v3

    .line 121
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    :sswitch_6
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 125
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 126
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5}, Lcom/android/internal/view/IInputContext$Stub;->deleteSurroundingTextInCodePoints(II)V

    .line 127
    const/4 v3, 0x1

    return v3

    .line 131
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    :sswitch_7
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .line 140
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 141
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/android/internal/view/IInputContext$Stub;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 142
    const/4 v3, 0x1

    return v3

    .line 137
    .end local v5    # "_arg1":I
    :cond_1
    const/4 v14, 0x0

    .local v14, "_arg0":Ljava/lang/CharSequence;
    goto :goto_1

    .line 146
    .end local v14    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_8
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputContext$Stub;->finishComposingText()V

    .line 148
    const/4 v3, 0x1

    return v3

    .line 152
    :sswitch_9
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    .line 161
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 162
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/android/internal/view/IInputContext$Stub;->commitText(Ljava/lang/CharSequence;I)V

    .line 163
    const/4 v3, 0x1

    return v3

    .line 158
    .end local v5    # "_arg1":I
    :cond_2
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_2

    .line 167
    .end local v14    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_a
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 170
    sget-object v3, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/CompletionInfo;

    .line 175
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/view/IInputContext$Stub;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 176
    const/4 v3, 0x1

    return v3

    .line 173
    :cond_3
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/view/inputmethod/CompletionInfo;
    goto :goto_3

    .line 180
    .end local v11    # "_arg0":Landroid/view/inputmethod/CompletionInfo;
    :sswitch_b
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 183
    sget-object v3, Landroid/view/inputmethod/CorrectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/CorrectionInfo;

    .line 188
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/view/IInputContext$Stub;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 189
    const/4 v3, 0x1

    return v3

    .line 186
    :cond_4
    const/4 v12, 0x0

    .local v12, "_arg0":Landroid/view/inputmethod/CorrectionInfo;
    goto :goto_4

    .line 193
    .end local v12    # "_arg0":Landroid/view/inputmethod/CorrectionInfo;
    :sswitch_c
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 197
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 198
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5}, Lcom/android/internal/view/IInputContext$Stub;->setSelection(II)V

    .line 199
    const/4 v3, 0x1

    return v3

    .line 203
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    :sswitch_d
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 206
    .restart local v9    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/view/IInputContext$Stub;->performEditorAction(I)V

    .line 207
    const/4 v3, 0x1

    return v3

    .line 211
    .end local v9    # "_arg0":I
    :sswitch_e
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 214
    .restart local v9    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/view/IInputContext$Stub;->performContextMenuAction(I)V

    .line 215
    const/4 v3, 0x1

    return v3

    .line 219
    .end local v9    # "_arg0":I
    :sswitch_f
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputContext$Stub;->beginBatchEdit()V

    .line 221
    const/4 v3, 0x1

    return v3

    .line 225
    :sswitch_10
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputContext$Stub;->endBatchEdit()V

    .line 227
    const/4 v3, 0x1

    return v3

    .line 231
    :sswitch_11
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v16, 0x1

    .line 234
    .local v16, "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->reportFullscreenMode(Z)V

    .line 235
    const/4 v3, 0x1

    return v3

    .line 233
    .end local v16    # "_arg0":Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_5

    .line 239
    :sswitch_12
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 242
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/KeyEvent;

    .line 247
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/IInputContext$Stub;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 248
    const/4 v3, 0x1

    return v3

    .line 245
    :cond_6
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/view/KeyEvent;
    goto :goto_6

    .line 252
    .end local v10    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_13
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 255
    .restart local v9    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/view/IInputContext$Stub;->clearMetaKeyStates(I)V

    .line 256
    const/4 v3, 0x1

    return v3

    .line 260
    .end local v9    # "_arg0":I
    :sswitch_14
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 264
    .local v15, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 265
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Bundle;

    .line 270
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/view/IInputContext$Stub;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 271
    const/4 v3, 0x1

    return v3

    .line 268
    :cond_7
    const/16 v17, 0x0

    .local v17, "_arg1":Landroid/os/Bundle;
    goto :goto_7

    .line 275
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Landroid/os/Bundle;
    :sswitch_15
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 279
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 280
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5}, Lcom/android/internal/view/IInputContext$Stub;->setComposingRegion(II)V

    .line 281
    const/4 v3, 0x1

    return v3

    .line 285
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    :sswitch_16
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 289
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 291
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v19

    .line 292
    .restart local v19    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v5, v1}, Lcom/android/internal/view/IInputContext$Stub;->getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V

    .line 293
    const/4 v3, 0x1

    return v3

    .line 297
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    .end local v19    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_17
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 301
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 303
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v19

    .line 304
    .restart local v19    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v5, v1}, Lcom/android/internal/view/IInputContext$Stub;->requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V

    .line 305
    const/4 v3, 0x1

    return v3

    .line 309
    .end local v5    # "_arg1":I
    .end local v9    # "_arg0":I
    .end local v19    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_18
    const-string/jumbo v3, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 312
    sget-object v3, Landroid/view/inputmethod/InputContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputContentInfo;

    .line 318
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 320
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 321
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 327
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 329
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v8

    .local v8, "_arg4":Lcom/android/internal/view/IInputContextCallback;
    move-object/from16 v3, p0

    .line 330
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/view/IInputContext$Stub;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V

    .line 331
    const/4 v3, 0x1

    return v3

    .line 315
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Lcom/android/internal/view/IInputContextCallback;
    :cond_8
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/view/inputmethod/InputContentInfo;
    goto :goto_8

    .line 324
    .end local v4    # "_arg0":Landroid/view/inputmethod/InputContentInfo;
    .restart local v5    # "_arg1":I
    :cond_9
    const/4 v6, 0x0

    .local v6, "_arg2":Landroid/os/Bundle;
    goto :goto_9

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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
