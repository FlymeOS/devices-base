.class Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GnssStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Nmea"
.end annotation


# instance fields
.field mNmea:Ljava/lang/String;

.field mTimestamp:J

.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$GnssStatusListenerTransport;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Landroid/location/LocationManager$GnssStatusListenerTransport;
    .param p2, "timestamp"    # J
    .param p4, "nmea"    # Ljava/lang/String;

    .prologue
    .line 1451
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1452
    iput-wide p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mTimestamp:J

    .line 1453
    iput-object p4, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mNmea:Ljava/lang/String;

    .line 1451
    return-void
.end method
