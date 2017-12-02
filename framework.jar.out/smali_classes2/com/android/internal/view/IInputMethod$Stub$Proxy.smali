.class Lcom/android/internal/view/IInputMethod$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInputMethod.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethod$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 193
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public attachToken(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 209
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 211
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    return-void

    .line 213
    :catchall_0
    move-exception v1

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    throw v1
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 5
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 221
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    if-eqz p1, :cond_0

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputBinding;->writeToParcel(Landroid/os/Parcel;I)V

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 217
    return-void

    .line 227
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v1

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    throw v1
.end method

.method public changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 5
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 372
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 373
    if-eqz p1, :cond_0

    .line 374
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    .line 380
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 368
    return-void

    .line 378
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v1

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 382
    throw v1
.end method

.method public createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    .locals 5
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "callback"    # Lcom/android/internal/view/IInputSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 290
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 291
    if-eqz p1, :cond_1

    .line 292
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 298
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/internal/view/IInputSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 299
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    return-void

    .line 296
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v1

    .line 302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string/jumbo v0, "com.android.internal.view.IInputMethod"

    return-object v0
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 353
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    if-eqz p2, :cond_0

    .line 356
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 362
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    return-void

    .line 360
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v1

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    throw v1
.end method

.method public restartInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p2, "missingMethods"    # I
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 270
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 271
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 272
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    if-eqz p3, :cond_1

    .line 274
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/inputmethod/EditorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 280
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    return-void

    .line 278
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v1

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    throw v1
.end method

.method public revokeSession(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 322
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 323
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 324
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 318
    return-void

    .line 326
    :catchall_0
    move-exception v1

    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 326
    throw v1
.end method

.method public setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    .locals 5
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 309
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 310
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 311
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 305
    return-void

    .line 311
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v1

    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw v1
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 334
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    if-eqz p2, :cond_0

    .line 337
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 343
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 330
    return-void

    .line 341
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v1

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    throw v1
.end method

.method public startInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p2, "missingMethods"    # I
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 250
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputMethod"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 251
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 252
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    if-eqz p3, :cond_1

    .line 254
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/inputmethod/EditorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 246
    return-void

    .line 258
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v1

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    throw v1
.end method

.method public unbindInput()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 239
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputMethod"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    return-void

    .line 242
    :catchall_0
    move-exception v1

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    throw v1
.end method
