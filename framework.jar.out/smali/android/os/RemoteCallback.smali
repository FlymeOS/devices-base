.class public final Landroid/os/RemoteCallback;
.super Ljava/lang/Object;
.source "RemoteCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RemoteCallback$1;,
        Landroid/os/RemoteCallback$OnResultListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/RemoteCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallback:Landroid/os/IRemoteCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/os/RemoteCallback$OnResultListener;


# direct methods
.method static synthetic -get0(Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback$OnResultListener;
    .locals 1

    iget-object v0, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Landroid/os/RemoteCallback$1;

    invoke-direct {v0}, Landroid/os/RemoteCallback$1;-><init>()V

    .line 95
    sput-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    .line 57
    iput-object v0, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/os/RemoteCallback$OnResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/RemoteCallback$OnResultListener;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/RemoteCallback$OnResultListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    .line 46
    iput-object p2, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Landroid/os/RemoteCallback$2;

    invoke-direct {v0, p0}, Landroid/os/RemoteCallback$2;-><init>(Landroid/os/RemoteCallback;)V

    iput-object v0, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 64
    iget-object v1, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Landroid/os/RemoteCallback;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/RemoteCallback$3;

    invoke-direct {v2, p0, p1}, Landroid/os/RemoteCallback$3;-><init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Landroid/os/RemoteCallback;->mListener:Landroid/os/RemoteCallback$OnResultListener;

    invoke-interface {v1, p1}, Landroid/os/RemoteCallback$OnResultListener;->onResult(Landroid/os/Bundle;)V

    goto :goto_0

    .line 78
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v1, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 92
    iget-object v0, p0, Landroid/os/RemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v0}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 91
    return-void
.end method
