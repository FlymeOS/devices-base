.class Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$2;
.super Ljava/lang/Object;
.source "GnssMeasurementCallbackTransport.java"

# interfaces
.implements Landroid/location/LocalListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/location/LocalListenerHelper$ListenerOperation",
        "<",
        "Landroid/location/GnssMeasurementsEvent$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;
    .param p2, "val$status"    # I

    .prologue
    .line 67
    iput-object p1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$2;->this$1:Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;

    iput p2, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$2;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/GnssMeasurementsEvent$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget v0, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$2;->val$status:I

    invoke-virtual {p1, v0}, Landroid/location/GnssMeasurementsEvent$Callback;->onStatusChanged(I)V

    .line 70
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    check-cast p1, Landroid/location/GnssMeasurementsEvent$Callback;

    .end local p1    # "callback":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$2;->execute(Landroid/location/GnssMeasurementsEvent$Callback;)V

    return-void
.end method
