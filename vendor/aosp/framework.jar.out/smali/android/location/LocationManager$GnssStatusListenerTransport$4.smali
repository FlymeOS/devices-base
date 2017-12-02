.class Landroid/location/LocationManager$GnssStatusListenerTransport$4;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/OnNmeaMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssNmeaListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$GnssStatusListenerTransport;)V
    .locals 0
    .param p1, "this$1"    # Landroid/location/LocationManager$GnssStatusListenerTransport;

    .prologue
    .line 1572
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$4;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaMessage(Ljava/lang/String;J)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    .line 1575
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$4;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get6(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssNmeaListener;

    move-result-object v0

    invoke-interface {v0, p2, p3, p1}, Landroid/location/GnssNmeaListener;->onNmeaReceived(JLjava/lang/String;)V

    .line 1574
    return-void
.end method
