.class Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$1;
.super Ljava/lang/Object;
.source "GnssMeasurementCallbackTransport.java"

# interfaces
.implements Landroid/location/LocalListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
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

.field final synthetic val$event:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method constructor <init>(Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;Landroid/location/GnssMeasurementsEvent;)V
    .locals 0
    .param p1, "this$1"    # Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;
    .param p2, "val$event"    # Landroid/location/GnssMeasurementsEvent;

    .prologue
    .line 54
    iput-object p1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$1;->this$1:Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;

    iput-object p2, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$1;->val$event:Landroid/location/GnssMeasurementsEvent;

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
    .line 58
    iget-object v0, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$1;->val$event:Landroid/location/GnssMeasurementsEvent;

    invoke-virtual {p1, v0}, Landroid/location/GnssMeasurementsEvent$Callback;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V

    .line 57
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
    .line 56
    check-cast p1, Landroid/location/GnssMeasurementsEvent$Callback;

    .end local p1    # "callback":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$1;->execute(Landroid/location/GnssMeasurementsEvent$Callback;)V

    return-void
.end method
