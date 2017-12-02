.class public abstract Landroid/os/BatteryStats$Uid$Pkg$Serv;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$Uid$Pkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Serv"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLaunches(I)I
.end method

.method public abstract getStartTime(JI)J
.end method

.method public abstract getStarts(I)I
.end method
