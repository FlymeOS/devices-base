.class public abstract Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;,
        Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    }
.end annotation


# static fields
.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_CLOSE_CONNECTION:I = 0x96

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CONTENT:I = 0xa0

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_DELETE_SURROUNDING_TEXT_IN_CODE_POINTS:I = 0x51

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REPORT_FULLSCREEN_MODE:I = 0x64

.field private static final DO_REQUEST_UPDATE_CURSOR_ANCHOR_INFO:I = 0x8c

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mFinished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mH:Landroid/os/Handler;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mInputMethodId:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "mainLooper"    # Landroid/os/Looper;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    .line 98
    iput-object p2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 99
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    .line 100
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 97
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 221
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 220
    return-void
.end method

.method public clearMetaKeyStates(I)V
    .locals 2
    .param p1, "states"    # I

    .prologue
    .line 207
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 206
    return-void
.end method

.method public closeConnection()V
    .locals 1

    .prologue
    .line 243
    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 242
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 171
    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 170
    return-void
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V
    .locals 7
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "seq"    # I
    .param p5, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 248
    const/16 v1, 0xa0

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 247
    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 175
    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 174
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 167
    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 166
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 211
    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 210
    return-void
.end method

.method public deleteSurroundingTextInCodePoints(II)V
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 216
    const/16 v0, 0x51

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 215
    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 256
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 259
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 225
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 224
    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x1

    .line 266
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 605
    const-string/jumbo v11, "IInputConnectionWrapper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unhandled message code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 268
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 270
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 271
    .local v6, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 276
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 277
    iget v12, p1, Landroid/os/Message;->arg1:I

    iget v13, p1, Landroid/os/Message;->arg2:I

    .line 276
    invoke-interface {v6, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 277
    iget v13, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 276
    invoke-interface {v11, v12, v13}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V

    .line 281
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return-void

    .line 272
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    return-void

    .line 278
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setTextAfterCursor"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 284
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 286
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 287
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 292
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 293
    iget v12, p1, Landroid/os/Message;->arg1:I

    iget v13, p1, Landroid/os/Message;->arg2:I

    .line 292
    invoke-interface {v6, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 293
    iget v13, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 292
    invoke-interface {v11, v12, v13}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V

    .line 297
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_1
    return-void

    .line 288
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    return-void

    .line 294
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_1
    move-exception v1

    .line 295
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setTextBeforeCursor"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 300
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 302
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 303
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 308
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 309
    iget v12, p1, Landroid/os/Message;->arg1:I

    .line 308
    invoke-interface {v6, v12}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 309
    iget v13, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 308
    invoke-interface {v11, v12, v13}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V

    .line 313
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_2
    return-void

    .line 304
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getSelectedText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 306
    return-void

    .line 310
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_2
    move-exception v1

    .line 311
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setSelectedText"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 316
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 318
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 319
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 324
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v6, v12}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v12

    .line 325
    iget v13, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 324
    invoke-interface {v11, v12, v13}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V

    .line 329
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_3
    return-void

    .line 320
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 322
    return-void

    .line 326
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_3
    move-exception v1

    .line 327
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setCursorCapsMode"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 332
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 334
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 335
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 340
    iget-object v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 341
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/ExtractedTextRequest;

    iget v13, p1, Landroid/os/Message;->arg1:I

    .line 340
    invoke-interface {v6, v11, v13}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v11

    .line 341
    iget v13, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 340
    invoke-interface {v12, v11, v13}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V

    .line 345
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_4
    return-void

    .line 336
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getExtractedText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 338
    return-void

    .line 342
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_4
    move-exception v1

    .line 343
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setExtractedText"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 348
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 349
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 353
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v6, v11, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    .line 355
    return-void

    .line 350
    :cond_5
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 358
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 359
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 363
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v6, v11, v12}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 364
    return-void

    .line 360
    :cond_6
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "setSelection on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 367
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 368
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 372
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v6, v11}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 373
    return-void

    .line 369
    :cond_7
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "performEditorAction on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void

    .line 376
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 377
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 381
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v6, v11}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 382
    return-void

    .line 378
    :cond_8
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "performContextMenuAction on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void

    .line 385
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 386
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 390
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v6, v11}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 391
    return-void

    .line 387
    :cond_9
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitCompletion on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void

    .line 394
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 395
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 399
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/CorrectionInfo;

    invoke-interface {v6, v11}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    .line 400
    return-void

    .line 396
    :cond_a
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitCorrection on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void

    .line 403
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 404
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 408
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v6, v11, v12}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    .line 410
    return-void

    .line 405
    :cond_b
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "setComposingText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void

    .line 413
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 414
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 418
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v6, v11, v12}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 419
    return-void

    .line 415
    :cond_c
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "setComposingRegion on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void

    .line 422
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 427
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v6, :cond_d

    .line 428
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "finishComposingText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void

    .line 431
    :cond_d
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 432
    return-void

    .line 435
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 436
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 440
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/KeyEvent;

    invoke-interface {v6, v11}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 441
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    .line 442
    return-void

    .line 437
    :cond_e
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "sendKeyEvent on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void

    .line 445
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 446
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 450
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v6, v11}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    .line 451
    return-void

    .line 447
    :cond_f
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void

    .line 454
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 455
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 459
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v6, v11, v12}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 460
    return-void

    .line 456
    :cond_10
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void

    .line 463
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_11
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 464
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 468
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v6, v11, v12}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z

    .line 469
    return-void

    .line 465
    :cond_11
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "deleteSurroundingTextInCodePoints on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void

    .line 472
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 473
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 477
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 478
    return-void

    .line 474
    :cond_12
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "beginBatchEdit on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void

    .line 481
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_13
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 482
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 486
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 487
    return-void

    .line 483
    :cond_13
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "endBatchEdit on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void

    .line 490
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_14
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 491
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v8, 0x0

    .line 492
    .local v8, "isBackground":Z
    if-eqz v6, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 496
    :goto_5
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v13, :cond_16

    const/4 v3, 0x1

    .line 497
    .local v3, "enabled":Z
    :goto_6
    if-nez v8, :cond_14

    .line 498
    invoke-interface {v6, v3}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 503
    :cond_14
    invoke-virtual {p0, v3, v8}, Lcom/android/internal/view/IInputConnectionWrapper;->onReportFullscreenMode(ZZ)V

    .line 504
    return-void

    .line 493
    .end local v3    # "enabled":Z
    :cond_15
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "reportFullscreenMode on inexistent InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v8, 0x1

    goto :goto_5

    .line 496
    :cond_16
    const/4 v3, 0x0

    .restart local v3    # "enabled":Z
    goto :goto_6

    .line 507
    .end local v3    # "enabled":Z
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v8    # "isBackground":Z
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 508
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 512
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 513
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 514
    iget-object v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v12, Landroid/os/Bundle;

    .line 513
    invoke-interface {v6, v11, v12}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 515
    return-void

    .line 509
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :cond_17
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "performPrivateCommand on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void

    .line 518
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :sswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 520
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 521
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 526
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 527
    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v6, v12}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result v12

    iget v13, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 526
    invoke-interface {v11, v12, v13}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V

    .line 531
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_7
    return-void

    .line 522
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_18
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "requestCursorAnchorInfo on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 524
    return-void

    .line 528
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :catch_5
    move-exception v1

    .line 529
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling requestCursorAnchorInfo"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 538
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_17
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_19

    .line 539
    return-void

    .line 542
    :cond_19
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v6

    .line 547
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v6, :cond_1a

    .line 556
    iget-object v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 557
    const/4 v11, 0x0

    :try_start_7
    iput-object v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 558
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v12

    .line 548
    return-void

    .line 556
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 551
    :cond_1a
    :try_start_8
    invoke-static {v6}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I

    move-result v9

    .line 552
    .local v9, "missingMethods":I
    and-int/lit8 v11, v9, 0x40

    if-nez v11, :cond_1b

    .line 553
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->closeConnection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 556
    :cond_1b
    iget-object v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 557
    const/4 v11, 0x0

    :try_start_9
    iput-object v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 558
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit v12

    .line 561
    return-void

    .line 556
    :catchall_1
    move-exception v11

    monitor-exit v12

    throw v11

    .line 555
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v9    # "missingMethods":I
    :catchall_2
    move-exception v11

    .line 556
    iget-object v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 557
    const/4 v13, 0x0

    :try_start_a
    iput-object v13, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 558
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit v12

    .line 555
    throw v11

    .line 556
    :catchall_3
    move-exception v11

    monitor-exit v12

    throw v11

    .line 564
    :sswitch_18
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 566
    .local v4, "flags":I
    and-int/lit8 v11, v4, 0x1

    if-eqz v11, :cond_1e

    const/4 v5, 0x1

    .line 567
    .local v5, "grantUriPermission":Z
    :goto_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 569
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_b
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 570
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_1f

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 575
    iget-object v7, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Landroid/view/inputmethod/InputContentInfo;

    .line 576
    .local v7, "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    if-eqz v7, :cond_20

    invoke-virtual {v7}, Landroid/view/inputmethod/InputContentInfo;->validate()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    move-result v11

    if-eqz v11, :cond_20

    .line 582
    if-eqz v5, :cond_1c

    .line 584
    :try_start_c
    invoke-virtual {v7}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_7

    .line 592
    :cond_1c
    :try_start_d
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    invoke-interface {v6, v7, v4, v11}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v10

    .line 595
    .local v10, "result":Z
    if-eqz v5, :cond_1d

    if-eqz v10, :cond_21

    .line 598
    :cond_1d
    :goto_9
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v11, v10, v12}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V

    .line 602
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v7    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    .end local v10    # "result":Z
    :goto_a
    return-void

    .line 566
    .end local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v5    # "grantUriPermission":Z
    :cond_1e
    const/4 v5, 0x0

    .restart local v5    # "grantUriPermission":Z
    goto :goto_8

    .line 571
    .restart local v0    # "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .restart local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1f
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitContent on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V

    .line 573
    return-void

    .line 577
    .restart local v7    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    :cond_20
    const-string/jumbo v11, "IInputConnectionWrapper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "commitContent with invalid inputContentInfo="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V

    .line 580
    return-void

    .line 585
    :catch_6
    move-exception v2

    .line 586
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "InputConnectionInfo.requestPermission() failed"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    iget-object v11, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v12, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V

    .line 588
    return-void

    .line 596
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v10    # "result":Z
    :cond_21
    invoke-virtual {v7}, Landroid/view/inputmethod/InputContentInfo;->releasePermission()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_9

    .line 599
    .end local v6    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v7    # "inputContentInfo":Landroid/view/inputmethod/InputContentInfo;
    .end local v10    # "result":Z
    :catch_7
    move-exception v1

    .line 600
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling commitContent"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 266
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
        0x37 -> :sswitch_9
        0x38 -> :sswitch_a
        0x39 -> :sswitch_6
        0x3a -> :sswitch_7
        0x3b -> :sswitch_8
        0x3c -> :sswitch_b
        0x3f -> :sswitch_c
        0x41 -> :sswitch_d
        0x46 -> :sswitch_e
        0x50 -> :sswitch_10
        0x51 -> :sswitch_11
        0x5a -> :sswitch_12
        0x5f -> :sswitch_13
        0x64 -> :sswitch_14
        0x78 -> :sswitch_15
        0x82 -> :sswitch_f
        0x8c -> :sswitch_16
        0x96 -> :sswitch_17
        0xa0 -> :sswitch_18
    .end sparse-switch
.end method

.method public finishComposingText()V
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 198
    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "reqModes"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 157
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 156
    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 162
    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 161
    return-void
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getInputMethodId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputMethodId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 153
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 152
    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 145
    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 144
    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 149
    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 148
    return-void
.end method

.method protected abstract isActive()Z
.end method

.method protected isFinished()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageII(III)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "seq"    # I
    .param p5, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 628
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 629
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 630
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 631
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "objArg1"    # Ljava/lang/Object;
    .param p4, "objArg2"    # Ljava/lang/Object;
    .param p5, "seq"    # I
    .param p6, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 636
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 637
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 638
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    .line 639
    iput-object p6, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 640
    iput p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 641
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "seq"    # I
    .param p5, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 646
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 647
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 648
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 649
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 650
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "seq"    # I
    .param p4, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 621
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 622
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 623
    iput p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 624
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 617
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 658
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 659
    .local v0, "args":Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 660
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    .line 661
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method protected abstract onReportFullscreenMode(ZZ)V
.end method

.method protected abstract onUserAction()V
.end method

.method public performContextMenuAction(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 187
    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 186
    return-void
.end method

.method public performEditorAction(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 183
    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 182
    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 233
    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 232
    return-void
.end method

.method public reportFullscreenMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 229
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x64

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 228
    return-void

    :cond_0
    move v0, v1

    .line 229
    goto :goto_0
.end method

.method public requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .param p1, "cursorUpdateMode"    # I
    .param p2, "seq"    # I
    .param p3, "callback"    # Lcom/android/internal/view/IInputContextCallback;

    .prologue
    .line 238
    const/16 v0, 0x8c

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 237
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 203
    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 202
    return-void
.end method

.method public setComposingRegion(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 191
    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 190
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 195
    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 194
    return-void
.end method

.method public setInputMethodId(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputMethodId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 179
    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 178
    return-void
.end method
