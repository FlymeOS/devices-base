.class Landroid/net/util/AvoidBadWifiTracker$SettingObserver;
.super Landroid/database/ContentObserver;
.source "AvoidBadWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/AvoidBadWifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/util/AvoidBadWifiTracker;


# direct methods
.method public constructor <init>(Landroid/net/util/AvoidBadWifiTracker;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/util/AvoidBadWifiTracker;

    .prologue
    .line 140
    iput-object p1, p0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;->this$0:Landroid/net/util/AvoidBadWifiTracker;

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 140
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 146
    invoke-static {}, Landroid/net/util/AvoidBadWifiTracker;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Should never be reached."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;->this$0:Landroid/net/util/AvoidBadWifiTracker;

    invoke-static {v0}, Landroid/net/util/AvoidBadWifiTracker;->-get1(Landroid/net/util/AvoidBadWifiTracker;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;->this$0:Landroid/net/util/AvoidBadWifiTracker;

    invoke-virtual {v0}, Landroid/net/util/AvoidBadWifiTracker;->reevaluate()V

    .line 150
    return-void
.end method
