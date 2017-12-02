.class public abstract Landroid/location/GnssNavigationMessage$Callback;
.super Ljava/lang/Object;
.source "GnssNavigationMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssNavigationMessage;
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
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V
    .locals 0
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .prologue
    .line 121
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 126
    return-void
.end method
