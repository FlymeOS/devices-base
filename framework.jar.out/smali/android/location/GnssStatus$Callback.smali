.class public abstract Landroid/location/GnssStatus$Callback;
.super Ljava/lang/Object;
.source "GnssStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 0
    .param p1, "ttffMillis"    # I

    .prologue
    .line 80
    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 0
    .param p1, "status"    # Landroid/location/GnssStatus;

    .prologue
    .line 86
    return-void
.end method

.method public onStarted()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onStopped()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
