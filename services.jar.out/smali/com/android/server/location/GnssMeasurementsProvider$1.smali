.class Lcom/android/server/location/GnssMeasurementsProvider$1;
.super Ljava/lang/Object;
.source "GnssMeasurementsProvider.java"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
        "<",
        "Landroid/location/IGnssMeasurementsListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssMeasurementsProvider;

.field final synthetic val$event:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssMeasurementsProvider;Landroid/location/GnssMeasurementsEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssMeasurementsProvider;
    .param p2, "val$event"    # Landroid/location/GnssMeasurementsEvent;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/location/GnssMeasurementsProvider$1;->this$0:Lcom/android/server/location/GnssMeasurementsProvider;

    iput-object p2, p0, Lcom/android/server/location/GnssMeasurementsProvider$1;->val$event:Landroid/location/GnssMeasurementsEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssMeasurementsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider$1;->val$event:Landroid/location/GnssMeasurementsEvent;

    invoke-interface {p1, v0}, Landroid/location/IGnssMeasurementsListener;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V

    .line 44
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
    .line 44
    check-cast p1, Landroid/location/IGnssMeasurementsListener;

    .end local p1    # "listener":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssMeasurementsProvider$1;->execute(Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method
