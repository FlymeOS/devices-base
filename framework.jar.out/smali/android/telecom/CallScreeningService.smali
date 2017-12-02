.class public abstract Landroid/telecom/CallScreeningService;
.super Landroid/app/Service;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallScreeningService$1;,
        Landroid/telecom/CallScreeningService$CallResponse;,
        Landroid/telecom/CallScreeningService$CallScreeningBinder;
    }
.end annotation


# static fields
.field private static final MSG_SCREEN_CALL:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.CallScreeningService"


# instance fields
.field private mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/telecom/CallScreeningService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/telecom/CallScreeningService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Landroid/telecom/CallScreeningService;Lcom/android/internal/telecom/ICallScreeningAdapter;)Lcom/android/internal/telecom/ICallScreeningAdapter;
    .locals 0

    iput-object p1, p0, Landroid/telecom/CallScreeningService;->mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Landroid/telecom/CallScreeningService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallScreeningService$1;-><init>(Landroid/telecom/CallScreeningService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/CallScreeningService;->mHandler:Landroid/os/Handler;

    .line 194
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    const-string/jumbo v0, "onBind"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    new-instance v0, Landroid/telecom/CallScreeningService$CallScreeningBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallScreeningService$CallScreeningBinder;-><init>(Landroid/telecom/CallScreeningService;Landroid/telecom/CallScreeningService$CallScreeningBinder;)V

    return-object v0
.end method

.method public abstract onScreenCall(Landroid/telecom/Call$Details;)V
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 205
    const-string/jumbo v0, "onUnbind"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return v2
.end method

.method public final respondToCall(Landroid/telecom/Call$Details;Landroid/telecom/CallScreeningService$CallResponse;)V
    .locals 8
    .param p1, "callDetails"    # Landroid/telecom/Call$Details;
    .param p2, "response"    # Landroid/telecom/CallScreeningService$CallResponse;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    :try_start_0
    invoke-virtual {p2}, Landroid/telecom/CallScreeningService$CallResponse;->getDisallowCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    iget-object v4, p0, Landroid/telecom/CallScreeningService;->mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

    .line 229
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getTelecomCallId()Ljava/lang/String;

    move-result-object v5

    .line 230
    invoke-virtual {p2}, Landroid/telecom/CallScreeningService$CallResponse;->getRejectCall()Z

    move-result v6

    .line 231
    invoke-virtual {p2}, Landroid/telecom/CallScreeningService$CallResponse;->getSkipCallLog()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 232
    :goto_0
    invoke-virtual {p2}, Landroid/telecom/CallScreeningService$CallResponse;->getSkipNotification()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 228
    :goto_1
    invoke-interface {v4, v5, v6, v3, v1}, Lcom/android/internal/telecom/ICallScreeningAdapter;->disallowCall(Ljava/lang/String;ZZZ)V

    .line 225
    :goto_2
    return-void

    :cond_0
    move v3, v2

    .line 231
    goto :goto_0

    :cond_1
    move v1, v2

    .line 232
    goto :goto_1

    .line 234
    :cond_2
    iget-object v1, p0, Landroid/telecom/CallScreeningService;->mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ICallScreeningAdapter;->allowCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 236
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method
