.class public Landroid/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GnssStatusListenerTransport;,
        Landroid/location/LocationManager$ListenerTransport;
    }
.end annotation


# static fields
.field public static final EXTRA_GPS_ENABLED:Ljava/lang/String; = "enabled"

.field public static final FUSED_PROVIDER:Ljava/lang/String; = "fused"

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field public static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final HIGH_POWER_REQUEST_CHANGE_ACTION:Ljava/lang/String; = "android.location.HIGH_POWER_REQUEST_CHANGE"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final MODE_CHANGED_ACTION:Ljava/lang/String; = "android.location.MODE_CHANGED"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final PASSIVE_PROVIDER:Ljava/lang/String; = "passive"

.field public static final PROVIDERS_CHANGED_ACTION:Ljava/lang/String; = "android.location.PROVIDERS_CHANGED"

.field private static final TAG:Ljava/lang/String; = "LocationManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGnssMeasurementCallbackTransport:Landroid/location/GnssMeasurementCallbackTransport;

.field private final mGnssNavigationMessageCallbackTransport:Landroid/location/GnssNavigationMessageCallbackTransport;

.field private final mGnssNmeaListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/OnNmeaMessageListener;",
            "Landroid/location/LocationManager$GnssStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssStatus:Landroid/location/GnssStatus;

.field private final mGnssStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GnssStatus$Callback;",
            "Landroid/location/LocationManager$GnssStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mGpsNmeaListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GpsStatus$NmeaListener;",
            "Landroid/location/LocationManager$GnssStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GpsStatus$Listener;",
            "Landroid/location/LocationManager$GnssStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Landroid/location/LocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavigationMessageBridge:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GnssNavigationMessageEvent$Callback;",
            "Landroid/location/GnssNavigationMessage$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mOldGnssNmeaListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GnssNmeaListener;",
            "Landroid/location/LocationManager$GnssStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mOldGnssStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GnssStatusCallback;",
            "Landroid/location/LocationManager$GnssStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/location/ILocationManager;

.field private mTimeToFirstFix:I


# direct methods
.method static synthetic -get0(Landroid/location/LocationManager;)Landroid/location/GnssStatus;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager;->mGnssStatus:Landroid/location/GnssStatus;

    return-object v0
.end method

.method static synthetic -get1(Landroid/location/LocationManager;)Landroid/location/ILocationManager;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    return-object v0
.end method

.method static synthetic -get2(Landroid/location/LocationManager;)I
    .locals 1

    iget v0, p0, Landroid/location/LocationManager;->mTimeToFirstFix:I

    return v0
.end method

.method static synthetic -set0(Landroid/location/LocationManager;Landroid/location/GnssStatus;)Landroid/location/GnssStatus;
    .locals 0

    iput-object p1, p0, Landroid/location/LocationManager;->mGnssStatus:Landroid/location/GnssStatus;

    return-object p1
.end method

.method static synthetic -set1(Landroid/location/LocationManager;I)I
    .locals 0

    iput p1, p0, Landroid/location/LocationManager;->mTimeToFirstFix:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/location/ILocationManager;

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    iput-object v0, p0, Landroid/location/LocationManager;->mGpsNmeaListeners:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mOldGnssStatusListeners:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    iput-object v0, p0, Landroid/location/LocationManager;->mGnssStatusListeners:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    iput-object v0, p0, Landroid/location/LocationManager;->mOldGnssNmeaListeners:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    iput-object v0, p0, Landroid/location/LocationManager;->mGnssNmeaListeners:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mNavigationMessageBridge:Ljava/util/HashMap;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    iput-object v0, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    .line 328
    iput-object p2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    .line 329
    iput-object p1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 330
    new-instance v0, Landroid/location/GnssMeasurementCallbackTransport;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-direct {v0, v1, v2}, Landroid/location/GnssMeasurementCallbackTransport;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    iput-object v0, p0, Landroid/location/LocationManager;->mGnssMeasurementCallbackTransport:Landroid/location/GnssMeasurementCallbackTransport;

    .line 332
    new-instance v0, Landroid/location/GnssNavigationMessageCallbackTransport;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-direct {v0, v1, v2}, Landroid/location/GnssNavigationMessageCallbackTransport;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    .line 331
    iput-object v0, p0, Landroid/location/LocationManager;->mGnssNavigationMessageCallbackTransport:Landroid/location/GnssNavigationMessageCallbackTransport;

    .line 327
    return-void
.end method

.method private static checkCriteria(Landroid/location/Criteria;)V
    .locals 3
    .param p0, "criteria"    # Landroid/location/Criteria;

    .prologue
    .line 2253
    if-nez p0, :cond_0

    .line 2254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid criteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2252
    :cond_0
    return-void
.end method

.method private static checkGeofence(Landroid/location/Geofence;)V
    .locals 3
    .param p0, "fence"    # Landroid/location/Geofence;

    .prologue
    .line 2280
    if-nez p0, :cond_0

    .line 2281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid geofence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2279
    :cond_0
    return-void
.end method

.method private static checkListener(Landroid/location/LocationListener;)V
    .locals 3
    .param p0, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 2259
    if-nez p0, :cond_0

    .line 2260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2258
    :cond_0
    return-void
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2265
    if-nez p1, :cond_0

    .line 2266
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid pending intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2268
    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2270
    const-string/jumbo v1, "pending intent must be targeted to package"

    .line 2269
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2271
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    .line 2272
    throw v0

    .line 2274
    :cond_1
    const-string/jumbo v1, "LocationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2264
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    return-void
.end method

.method private static checkProvider(Ljava/lang/String;)V
    .locals 3
    .param p0, "provider"    # Ljava/lang/String;

    .prologue
    .line 2247
    if-nez p0, :cond_0

    .line 2248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2246
    :cond_0
    return-void
.end method

.method private createProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)Landroid/location/LocationProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .prologue
    .line 336
    new-instance v0, Landroid/location/LocationProvider;

    invoke-direct {v0, p1, p2}, Landroid/location/LocationProvider;-><init>(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    return-object v0
.end method

.method private requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 881
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Landroid/location/LocationManager;->wrapListener(Landroid/location/LocationListener;Landroid/os/Looper;)Landroid/location/LocationManager$ListenerTransport;

    move-result-object v2

    .line 887
    .local v2, "transport":Landroid/location/LocationManager$ListenerTransport;
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, p1, v2, p4, v1}, Landroid/location/ILocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private wrapListener(Landroid/location/LocationListener;Landroid/os/Looper;)Landroid/location/LocationManager$ListenerTransport;
    .locals 3
    .param p1, "listener"    # Landroid/location/LocationListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 867
    if-nez p1, :cond_0

    return-object v1

    .line 868
    :cond_0
    iget-object v2, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 869
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager$ListenerTransport;

    .line 870
    .local v0, "transport":Landroid/location/LocationManager$ListenerTransport;
    if-nez v0, :cond_1

    .line 871
    new-instance v0, Landroid/location/LocationManager$ListenerTransport;

    .end local v0    # "transport":Landroid/location/LocationManager$ListenerTransport;
    invoke-direct {v0, p0, p1, p2}, Landroid/location/LocationManager$ListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 873
    .restart local v0    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :cond_1
    iget-object v1, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 874
    return-object v0

    .line 868
    .end local v0    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "fence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1038
    invoke-direct {p0, p3}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1039
    invoke-static {p2}, Landroid/location/LocationManager;->checkGeofence(Landroid/location/Geofence;)V

    .line 1042
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2016
    const/4 v0, 0x0

    return v0
.end method

.method public addGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2073
    const/4 v0, 0x0

    return v0
.end method

.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 5
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1670
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1672
    const/4 v3, 0x1

    return v3

    .line 1675
    :cond_0
    :try_start_0
    new-instance v2, Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V

    .line 1676
    .local v2, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/location/ILocationManager;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v1

    .line 1677
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 1678
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1684
    :cond_1
    return v1

    .line 1680
    .end local v1    # "result":Z
    .end local v2    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1681
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public addNmeaListener(Landroid/location/GnssNmeaListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/GnssNmeaListener;

    .prologue
    .line 1892
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GnssNmeaListener;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public addNmeaListener(Landroid/location/GnssNmeaListener;Landroid/os/Handler;)Z
    .locals 5
    .param p1, "listener"    # Landroid/location/GnssNmeaListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1910
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1912
    const/4 v3, 0x1

    return v3

    .line 1916
    :cond_0
    :try_start_0
    new-instance v2, Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-direct {v2, p0, p1, p2}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssNmeaListener;Landroid/os/Handler;)V

    .line 1917
    .local v2, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/location/ILocationManager;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v1

    .line 1918
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 1919
    iget-object v3, p0, Landroid/location/LocationManager;->mOldGnssNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    :cond_1
    return v1

    .line 1921
    .end local v1    # "result":Z
    .end local v2    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1922
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    .locals 5
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1845
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1847
    const/4 v3, 0x1

    return v3

    .line 1850
    :cond_0
    :try_start_0
    new-instance v2, Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V

    .line 1851
    .local v2, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/location/ILocationManager;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v1

    .line 1852
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 1853
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    :cond_1
    return v1

    .line 1855
    .end local v1    # "result":Z
    .end local v2    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1856
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public addNmeaListener(Landroid/location/OnNmeaMessageListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/OnNmeaMessageListener;

    .prologue
    .line 1956
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z
    .locals 5
    .param p1, "listener"    # Landroid/location/OnNmeaMessageListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1973
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1975
    const/4 v3, 0x1

    return v3

    .line 1979
    :cond_0
    :try_start_0
    new-instance v2, Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-direct {v2, p0, p1, p2}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)V

    .line 1980
    .local v2, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/location/ILocationManager;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v1

    .line 1981
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 1982
    iget-object v3, p0, Landroid/location/LocationManager;->mGnssNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1988
    :cond_1
    return v1

    .line 1984
    .end local v1    # "result":Z
    .end local v2    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1985
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F
    .param p6, "expiration"    # J
    .param p8, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 988
    invoke-direct {p0, p8}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 989
    const-wide/16 v4, 0x0

    cmp-long v3, p6, v4

    if-gez v3, :cond_0

    const-wide p6, 0x7fffffffffffffffL

    .line 991
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/location/Geofence;->createCircle(DDF)Landroid/location/Geofence;

    move-result-object v1

    .line 992
    .local v1, "fence":Landroid/location/Geofence;
    new-instance v3, Landroid/location/LocationRequest;

    invoke-direct {v3}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v3, p6, p7}, Landroid/location/LocationRequest;->setExpireIn(J)Landroid/location/LocationRequest;

    move-result-object v2

    .line 994
    .local v2, "request":Landroid/location/LocationRequest;
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v1, p8, v4}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    return-void

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "requiresNetwork"    # Z
    .param p3, "requiresSatellite"    # Z
    .param p4, "requiresCell"    # Z
    .param p5, "hasMonetaryCost"    # Z
    .param p6, "supportsAltitude"    # Z
    .param p7, "supportsSpeed"    # Z
    .param p8, "supportsBearing"    # Z
    .param p9, "powerRequirement"    # I
    .param p10, "accuracy"    # I

    .prologue
    .line 1228
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 1231
    .local v0, "properties":Lcom/android/internal/location/ProviderProperties;
    const-string/jumbo v1, "[^a-zA-Z0-9]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider name contains illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1236
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Landroid/location/ILocationManager;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    return-void

    .line 1237
    :catch_0
    move-exception v10

    .line 1238
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1347
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    return-void

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1309
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    return-void

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1388
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    return-void

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 2
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z

    .prologue
    .line 435
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 437
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGnssYearOfHardware()I
    .locals 2

    .prologue
    .line 2207
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1}, Landroid/location/ILocationManager;->getGnssYearOfHardware()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2208
    :catch_0
    move-exception v0

    .line 2209
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 2
    .param p1, "status"    # Landroid/location/GpsStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2188
    if-nez p1, :cond_0

    .line 2189
    new-instance p1, Landroid/location/GpsStatus;

    .end local p1    # "status":Landroid/location/GpsStatus;
    invoke-direct {p1}, Landroid/location/GpsStatus;-><init>()V

    .line 2193
    .restart local p1    # "status":Landroid/location/GpsStatus;
    :cond_0
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssStatus:Landroid/location/GnssStatus;

    if-eqz v0, :cond_1

    .line 2194
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssStatus:Landroid/location/GnssStatus;

    iget v1, p0, Landroid/location/LocationManager;->mTimeToFirstFix:I

    invoke-virtual {p1, v0, v1}, Landroid/location/GpsStatus;->setStatus(Landroid/location/GnssStatus;I)V

    .line 2196
    :cond_1
    return-object p1
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1199
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 1200
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1202
    .local v1, "packageName":Ljava/lang/String;
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1201
    invoke-static {p1, v4, v5, v3, v6}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v2

    .line 1205
    .local v2, "request":Landroid/location/LocationRequest;
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, v2, v1}, Landroid/location/ILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 4

    .prologue
    .line 1171
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1174
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Landroid/location/ILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 381
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 383
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, p1}, Landroid/location/ILocationManager;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    .line 384
    .local v1, "properties":Lcom/android/internal/location/ProviderProperties;
    if-nez v1, :cond_0

    .line 385
    return-object v3

    .line 387
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/location/LocationManager;->createProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)Landroid/location/LocationProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 388
    .end local v1    # "properties":Lcom/android/internal/location/ProviderProperties;
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 2
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 406
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 3
    .param p1, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1147
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 1150
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .prologue
    .line 2027
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2040
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssMeasurementCallbackTransport:Landroid/location/GnssMeasurementCallbackTransport;

    invoke-virtual {v0, p1, p2}, Landroid/location/GnssMeasurementCallbackTransport;->add(Ljava/lang/Object;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssNavigationMessage$Callback;

    .prologue
    .line 2148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;Landroid/os/Handler;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssNavigationMessage$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2161
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssNavigationMessageCallbackTransport:Landroid/location/GnssNavigationMessageCallbackTransport;

    invoke-virtual {v0, p1, p2}, Landroid/location/GnssNavigationMessageCallbackTransport;->add(Ljava/lang/Object;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessageEvent$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssNavigationMessageEvent$Callback;

    .prologue
    .line 2097
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessageEvent$Callback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessageEvent$Callback;Landroid/os/Handler;)Z
    .locals 2
    .param p1, "callback"    # Landroid/location/GnssNavigationMessageEvent$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2111
    new-instance v0, Landroid/location/LocationManager$1;

    invoke-direct {v0, p0, p1}, Landroid/location/LocationManager$1;-><init>(Landroid/location/LocationManager;Landroid/location/GnssNavigationMessageEvent$Callback;)V

    .line 2123
    .local v0, "bridge":Landroid/location/GnssNavigationMessage$Callback;
    iget-object v1, p0, Landroid/location/LocationManager;->mNavigationMessageBridge:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    iget-object v1, p0, Landroid/location/LocationManager;->mGnssNavigationMessageCallbackTransport:Landroid/location/GnssNavigationMessageCallbackTransport;

    invoke-virtual {v1, v0, p2}, Landroid/location/GnssNavigationMessageCallbackTransport;->add(Ljava/lang/Object;Landroid/os/Handler;)Z

    move-result v1

    return v1
.end method

.method public registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssStatus$Callback;

    .prologue
    .line 1780
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z
    .locals 5
    .param p1, "callback"    # Landroid/location/GnssStatus$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1796
    iget-object v3, p0, Landroid/location/LocationManager;->mGnssStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1798
    const/4 v3, 0x1

    return v3

    .line 1802
    :cond_0
    :try_start_0
    new-instance v2, Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-direct {v2, p0, p1, p2}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)V

    .line 1803
    .local v2, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/location/ILocationManager;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v1

    .line 1804
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 1805
    iget-object v3, p0, Landroid/location/LocationManager;->mGnssStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1811
    :cond_1
    return v1

    .line 1807
    .end local v1    # "result":Z
    .end local v2    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1808
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public registerGnssStatusCallback(Landroid/location/GnssStatusCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssStatusCallback;

    .prologue
    .line 1717
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatusCallback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerGnssStatusCallback(Landroid/location/GnssStatusCallback;Landroid/os/Handler;)Z
    .locals 5
    .param p1, "callback"    # Landroid/location/GnssStatusCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1734
    iget-object v3, p0, Landroid/location/LocationManager;->mOldGnssStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1736
    const/4 v3, 0x1

    return v3

    .line 1740
    :cond_0
    :try_start_0
    new-instance v2, Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-direct {v2, p0, p1, p2}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssStatusCallback;Landroid/os/Handler;)V

    .line 1741
    .local v2, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/location/ILocationManager;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v1

    .line 1742
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 1743
    iget-object v3, p0, Landroid/location/LocationManager;->mOldGnssStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1749
    :cond_1
    return v1

    .line 1745
    .end local v1    # "result":Z
    .end local v2    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public removeAllGeofences(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1116
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1119
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    return-void

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "fence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1092
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1093
    invoke-static {p1}, Landroid/location/LocationManager;->checkGeofence(Landroid/location/Geofence;)V

    .line 1094
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, p1, p2, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    return-void

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2052
    return-void
.end method

.method public removeGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2085
    return-void
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1696
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1697
    .local v1, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    if-eqz v1, :cond_0

    .line 1698
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1694
    :cond_0
    return-void

    .line 1700
    .end local v1    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1701
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeNmeaListener(Landroid/location/GnssNmeaListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/GnssNmeaListener;

    .prologue
    .line 1936
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mOldGnssNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1937
    .local v1, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    if-eqz v1, :cond_0

    .line 1938
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1934
    :cond_0
    return-void

    .line 1940
    .end local v1    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1941
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1871
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mGpsNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1872
    .local v1, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    if-eqz v1, :cond_0

    .line 1873
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1869
    :cond_0
    return-void

    .line 1875
    .end local v1    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1876
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/OnNmeaMessageListener;

    .prologue
    .line 1998
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mGnssNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1999
    .local v1, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    if-eqz v1, :cond_0

    .line 2000
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1996
    :cond_0
    return-void

    .line 2002
    .end local v1    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 2003
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1065
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1066
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    return-void

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1254
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    return-void

    .line 1255
    :catch_0
    move-exception v0

    .line 1256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 928
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 929
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 932
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    return-void

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 903
    invoke-static {p1}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 904
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 908
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager$ListenerTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "transport":Landroid/location/LocationManager$ListenerTransport;
    monitor-exit v4

    .line 910
    if-nez v2, :cond_0

    return-void

    .line 907
    .end local v2    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 913
    .restart local v2    # "transport":Landroid/location/LocationManager$ListenerTransport;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4, v1}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 902
    return-void

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    .line 661
    invoke-static {p4}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 662
    invoke-direct {p0, p5}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 665
    const/4 v1, 0x0

    .line 664
    invoke-static {p4, p1, p2, p3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 666
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v2, v2, p5}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 660
    return-void
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 3
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;

    .prologue
    .line 531
    invoke-static {p4}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 532
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 535
    const/4 v1, 0x0

    .line 534
    invoke-static {p4, p1, p2, p3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 536
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p5, p6, v1}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 530
    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v0, 0x0

    .line 862
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 863
    invoke-direct {p0, p1, v0, v0, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 861
    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 835
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 836
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 834
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    .line 559
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, p5}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 563
    const/4 v1, 0x0

    .line 562
    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 564
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v2, v2, p5}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 558
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 467
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 470
    const/4 v1, 0x0

    .line 469
    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 471
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, p5, v2, v2}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 465
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;

    .prologue
    .line 498
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 499
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 502
    const/4 v1, 0x0

    .line 501
    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 503
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p5, p6, v1}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 497
    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x0

    .line 767
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 768
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 771
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 770
    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 772
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v5, v5, p2}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 766
    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 5
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 720
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 721
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 724
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 723
    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 725
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 719
    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x0

    .line 743
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 744
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 747
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 746
    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 748
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v5, v5, p2}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 742
    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 690
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 691
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 694
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 693
    invoke-static {p1, v2, v3, v1, v4}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 695
    .local v0, "request":Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/location/LocationManager;->hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 689
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2226
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/location/ILocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2227
    :catch_0
    move-exception v0

    .line 2228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public sendNiResponse(II)Z
    .locals 2
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .prologue
    .line 2240
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2241
    :catch_0
    move-exception v0

    .line 2242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1329
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/location/ILocationManager;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    return-void

    .line 1330
    :catch_0
    move-exception v0

    .line 1331
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 1277
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incomplete location object, missing timestamp or accuracy? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1278
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1280
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x10

    if-gt v2, v3, :cond_1

    .line 1282
    const-string/jumbo v2, "LocationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1283
    invoke-virtual {p2}, Landroid/location/Location;->makeComplete()V

    .line 1291
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3}, Landroid/location/ILocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    return-void

    .line 1286
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    throw v1

    .line 1292
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    .line 1293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "updateTime"    # J

    .prologue
    .line 1369
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    .line 1370
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1369
    invoke-interface/range {v0 .. v6}, Landroid/location/ILocationManager;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    return-void

    .line 1371
    :catch_0
    move-exception v7

    .line 1372
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public unregisterGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .prologue
    .line 2061
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssMeasurementCallbackTransport:Landroid/location/GnssMeasurementCallbackTransport;

    invoke-virtual {v0, p1}, Landroid/location/GnssMeasurementCallbackTransport;->remove(Ljava/lang/Object;)V

    .line 2060
    return-void
.end method

.method public unregisterGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssNavigationMessage$Callback;

    .prologue
    .line 2171
    iget-object v0, p0, Landroid/location/LocationManager;->mGnssNavigationMessageCallbackTransport:Landroid/location/GnssNavigationMessageCallbackTransport;

    invoke-virtual {v0, p1}, Landroid/location/GnssNavigationMessageCallbackTransport;->remove(Ljava/lang/Object;)V

    .line 2170
    return-void
.end method

.method public unregisterGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessageEvent$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/location/GnssNavigationMessageEvent$Callback;

    .prologue
    .line 2135
    iget-object v1, p0, Landroid/location/LocationManager;->mGnssNavigationMessageCallbackTransport:Landroid/location/GnssNavigationMessageCallbackTransport;

    .line 2136
    iget-object v0, p0, Landroid/location/LocationManager;->mNavigationMessageBridge:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GnssNavigationMessage$Callback;

    .line 2135
    invoke-virtual {v1, v0}, Landroid/location/GnssNavigationMessageCallbackTransport;->remove(Ljava/lang/Object;)V

    .line 2134
    return-void
.end method

.method public unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/location/GnssStatus$Callback;

    .prologue
    .line 1821
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mGnssStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1822
    .local v1, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    if-eqz v1, :cond_0

    .line 1823
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1819
    :cond_0
    return-void

    .line 1825
    .end local v1    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1826
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterGnssStatusCallback(Landroid/location/GnssStatusCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/location/GnssStatusCallback;

    .prologue
    .line 1760
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mOldGnssStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1761
    .local v1, "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    if-eqz v1, :cond_0

    .line 1762
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    :cond_0
    return-void

    .line 1764
    .end local v1    # "transport":Landroid/location/LocationManager$GnssStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private hook_requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/16 v0, 0x4b

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method
