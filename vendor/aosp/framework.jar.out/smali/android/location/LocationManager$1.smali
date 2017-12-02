.class Landroid/location/LocationManager$1;
.super Landroid/location/GnssNavigationMessage$Callback;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager;->registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessageEvent$Callback;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/LocationManager;

.field final synthetic val$callback:Landroid/location/GnssNavigationMessageEvent$Callback;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssNavigationMessageEvent$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "val$callback"    # Landroid/location/GnssNavigationMessageEvent$Callback;

    .prologue
    .line 2111
    iput-object p1, p0, Landroid/location/LocationManager$1;->this$0:Landroid/location/LocationManager;

    iput-object p2, p0, Landroid/location/LocationManager$1;->val$callback:Landroid/location/GnssNavigationMessageEvent$Callback;

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V
    .locals 2
    .param p1, "message"    # Landroid/location/GnssNavigationMessage;

    .prologue
    .line 2114
    new-instance v0, Landroid/location/GnssNavigationMessageEvent;

    invoke-direct {v0, p1}, Landroid/location/GnssNavigationMessageEvent;-><init>(Landroid/location/GnssNavigationMessage;)V

    .line 2115
    .local v0, "event":Landroid/location/GnssNavigationMessageEvent;
    iget-object v1, p0, Landroid/location/LocationManager$1;->val$callback:Landroid/location/GnssNavigationMessageEvent$Callback;

    invoke-virtual {v1, v0}, Landroid/location/GnssNavigationMessageEvent$Callback;->onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessageEvent;)V

    .line 2113
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 2120
    iget-object v0, p0, Landroid/location/LocationManager$1;->val$callback:Landroid/location/GnssNavigationMessageEvent$Callback;

    invoke-virtual {v0, p1}, Landroid/location/GnssNavigationMessageEvent$Callback;->onStatusChanged(I)V

    .line 2119
    return-void
.end method
