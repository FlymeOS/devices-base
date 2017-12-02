.class Lcom/android/server/net/NetworkStatsObservers$StatsContext;
.super Ljava/lang/Object;
.source "NetworkStatsObservers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsContext"
.end annotation


# instance fields
.field mActiveIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field mActiveUidIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentTime:J

.field mUidSnapshot:Landroid/net/NetworkStats;

.field mVpnArray:[Lcom/android/internal/net/VpnInfo;

.field mXtSnapshot:Landroid/net/NetworkStats;


# direct methods
.method constructor <init>(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[Lcom/android/internal/net/VpnInfo;J)V
    .locals 0
    .param p1, "xtSnapshot"    # Landroid/net/NetworkStats;
    .param p2, "uidSnapshot"    # Landroid/net/NetworkStats;
    .param p5, "vpnArray"    # [Lcom/android/internal/net/VpnInfo;
    .param p6, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;[",
            "Lcom/android/internal/net/VpnInfo;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p3, "activeIfaces":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    .local p4, "activeUidIfaces":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mXtSnapshot:Landroid/net/NetworkStats;

    .line 442
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mUidSnapshot:Landroid/net/NetworkStats;

    .line 443
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mActiveIfaces:Landroid/util/ArrayMap;

    .line 444
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mActiveUidIfaces:Landroid/util/ArrayMap;

    .line 445
    iput-object p5, p0, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mVpnArray:[Lcom/android/internal/net/VpnInfo;

    .line 446
    iput-wide p6, p0, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mCurrentTime:J

    .line 440
    return-void
.end method
