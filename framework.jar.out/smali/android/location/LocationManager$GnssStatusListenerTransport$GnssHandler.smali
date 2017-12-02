.class Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;
.super Landroid/os/Handler;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GnssStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$1"    # Landroid/location/LocationManager$GnssStatusListenerTransport;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1407
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1408
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1407
    return-void

    .line 1408
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1413
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1412
    :goto_0
    return-void

    .line 1415
    :sswitch_0
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 1416
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1417
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1418
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;

    .line 1419
    .local v2, "nmea":Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get1(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/OnNmeaMessageListener;

    move-result-object v3

    iget-object v5, v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mNmea:Ljava/lang/String;

    iget-wide v6, v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mTimestamp:J

    invoke-interface {v3, v5, v6, v7}, Landroid/location/OnNmeaMessageListener;->onNmeaMessage(Ljava/lang/String;J)V

    .line 1417
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1421
    .end local v2    # "nmea":Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;
    :cond_0
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    .line 1415
    .end local v0    # "i":I
    .end local v1    # "length":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1425
    :sswitch_1
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/GnssStatus$Callback;->onStarted()V

    goto :goto_0

    .line 1428
    :sswitch_2
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/GnssStatus$Callback;->onStopped()V

    goto :goto_0

    .line 1431
    :sswitch_3
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    move-result-object v3

    iget-object v4, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    iget-object v4, v4, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v4}, Landroid/location/LocationManager;->-get2(Landroid/location/LocationManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/location/GnssStatus$Callback;->onFirstFix(I)V

    goto :goto_0

    .line 1434
    :sswitch_4
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    move-result-object v3

    iget-object v4, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    iget-object v4, v4, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v4}, Landroid/location/LocationManager;->-get0(Landroid/location/LocationManager;)Landroid/location/GnssStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/location/GnssStatus$Callback;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V

    goto :goto_0

    .line 1413
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
