.class abstract Lcom/android/server/location/GnssStatusListenerHelper;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssStatusListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper",
        "<",
        "Landroid/location/IGnssStatusListener;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 28
    const-string/jumbo v0, "GnssStatusListenerHelper"

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->setSupported(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .locals 1
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<",
            "Landroid/location/IGnssStatusListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onFirstFix(I)V
    .locals 1
    .param p1, "timeToFirstFix"    # I

    .prologue
    .line 66
    new-instance v0, Lcom/android/server/location/GnssStatusListenerHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GnssStatusListenerHelper$3;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;I)V

    .line 72
    .local v0, "operation":Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 65
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Lcom/android/server/location/GnssStatusListenerHelper$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/GnssStatusListenerHelper$5;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;JLjava/lang/String;)V

    .line 102
    .local v0, "operation":Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 95
    return-void
.end method

.method public onStatusChanged(Z)V
    .locals 1
    .param p1, "isNavigating"    # Z

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Lcom/android/server/location/GnssStatusListenerHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssStatusListenerHelper$1;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;)V

    .line 62
    .local v0, "operation":Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 45
    return-void

    .line 55
    .end local v0    # "operation":Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    :cond_0
    new-instance v0, Lcom/android/server/location/GnssStatusListenerHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssStatusListenerHelper$2;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;)V

    .restart local v0    # "operation":Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    goto :goto_0
.end method

.method public onSvStatusChanged(I[I[F[F[F)V
    .locals 7
    .param p1, "svCount"    # I
    .param p2, "prnWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F

    .prologue
    .line 81
    new-instance v0, Lcom/android/server/location/GnssStatusListenerHelper$4;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssStatusListenerHelper$4;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;I[I[F[F[F)V

    .line 92
    .local v0, "operation":Lcom/android/server/location/GnssStatusListenerHelper$Operation;
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 80
    return-void
.end method

.method protected registerWithService()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method protected unregisterFromService()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
