.class public interface abstract Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExternalStatsSync"
.end annotation


# static fields
.field public static final UPDATE_ALL:I = 0xf

.field public static final UPDATE_BT:I = 0x8

.field public static final UPDATE_CPU:I = 0x1

.field public static final UPDATE_RADIO:I = 0x4

.field public static final UPDATE_WIFI:I = 0x2


# virtual methods
.method public abstract scheduleCpuSyncDueToRemovedUid(I)V
.end method

.method public abstract scheduleSync(Ljava/lang/String;I)V
.end method
