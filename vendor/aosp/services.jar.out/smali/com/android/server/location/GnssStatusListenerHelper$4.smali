.class Lcom/android/server/location/GnssStatusListenerHelper$4;
.super Ljava/lang/Object;
.source "GnssStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GnssStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssStatusListenerHelper;

.field final synthetic val$azimuths:[F

.field final synthetic val$cn0s:[F

.field final synthetic val$elevations:[F

.field final synthetic val$prnWithFlags:[I

.field final synthetic val$svCount:I


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssStatusListenerHelper;I[I[F[F[F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssStatusListenerHelper;
    .param p2, "val$svCount"    # I
    .param p3, "val$prnWithFlags"    # [I
    .param p4, "val$cn0s"    # [F
    .param p5, "val$elevations"    # [F
    .param p6, "val$azimuths"    # [F

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    iput p2, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$svCount:I

    iput-object p3, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$prnWithFlags:[I

    iput-object p4, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$cn0s:[F

    iput-object p5, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$elevations:[F

    iput-object p6, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$azimuths:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssStatusListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    iget v1, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$svCount:I

    .line 86
    iget-object v2, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$prnWithFlags:[I

    .line 87
    iget-object v3, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$cn0s:[F

    .line 88
    iget-object v4, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$elevations:[F

    .line 89
    iget-object v5, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$azimuths:[F

    move-object v0, p1

    .line 84
    invoke-interface/range {v0 .. v5}, Landroid/location/IGnssStatusListener;->onSvStatusChanged(I[I[F[F[F)V

    .line 83
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "listener"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    check-cast p1, Landroid/location/IGnssStatusListener;

    .end local p1    # "listener":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssStatusListenerHelper$4;->execute(Landroid/location/IGnssStatusListener;)V

    return-void
.end method
