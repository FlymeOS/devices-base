.class Lcom/android/internal/os/BatteryStatsImpl$Uid$2;
.super Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
        "<",
        "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p3, "$anonymous0"    # I

    .prologue
    .line 5310
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;-><init>(Lcom/android/internal/os/BatteryStatsImpl;I)V

    return-void
.end method


# virtual methods
.method public instantiateObject()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    .prologue
    .line 5312
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 5313
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;->this$1:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5312
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    return-object v0
.end method

.method public bridge synthetic instantiateObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5311
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;->instantiateObject()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    return-object v0
.end method
