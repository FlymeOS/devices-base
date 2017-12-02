.class public Lcom/android/server/wifi/WifiInjector;
.super Ljava/lang/Object;
.source "WifiInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiInjector$LazyHolder;
    }
.end annotation


# instance fields
.field private final mBuildProperties:Lcom/android/server/wifi/BuildProperties;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mPropertyService:Lcom/android/server/wifi/PropertyService;

.field private final mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/server/wifi/Clock;

    invoke-direct {v0}, Lcom/android/server/wifi/Clock;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    .line 36
    new-instance v0, Lcom/android/server/wifi/WifiMetrics;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiMetrics;-><init>(Lcom/android/server/wifi/Clock;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 38
    new-instance v0, Lcom/android/server/wifi/WifiLastResortWatchdog;

    iget-object v1, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiLastResortWatchdog;-><init>(Lcom/android/server/wifi/WifiMetrics;)V

    .line 37
    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    .line 39
    new-instance v0, Lcom/android/server/wifi/SystemPropertyService;

    invoke-direct {v0}, Lcom/android/server/wifi/SystemPropertyService;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    .line 40
    new-instance v0, Lcom/android/server/wifi/SystemBuildProperties;

    invoke-direct {v0}, Lcom/android/server/wifi/SystemBuildProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    .line 41
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mKeyStore:Landroid/security/KeyStore;

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/android/server/wifi/WifiInjector;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/wifi/WifiInjector$LazyHolder;->sInstance:Lcom/android/server/wifi/WifiInjector;

    return-object v0
.end method


# virtual methods
.method public getBuildProperties()Lcom/android/server/wifi/BuildProperties;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    return-object v0
.end method

.method public getClock()Lcom/android/server/wifi/Clock;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mClock:Lcom/android/server/wifi/Clock;

    return-object v0
.end method

.method public getKeyStore()Landroid/security/KeyStore;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method public getPropertyService()Lcom/android/server/wifi/PropertyService;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mPropertyService:Lcom/android/server/wifi/PropertyService;

    return-object v0
.end method

.method public getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    return-object v0
.end method

.method public getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/wifi/WifiInjector;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method
