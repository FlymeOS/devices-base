.class public abstract Landroid/hardware/SensorManager$DynamicSensorCallback;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DynamicSensorCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDynamicSensorConnected(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 893
    return-void
.end method

.method public onDynamicSensorDisconnected(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 900
    return-void
.end method
