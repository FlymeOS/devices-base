.class public abstract Landroid/location/GnssMeasurementsEvent$Callback;
.super Ljava/lang/Object;
.source "GnssMeasurementsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field public static final STATUS_LOCATION_DISABLED:I = 0x2

.field public static final STATUS_NOT_SUPPORTED:I = 0x0

.field public static final STATUS_READY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .locals 0
    .param p1, "eventArgs"    # Landroid/location/GnssMeasurementsEvent;

    .prologue
    .line 84
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 89
    return-void
.end method
