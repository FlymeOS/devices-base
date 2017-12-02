.class Lcom/android/server/wm/DimLayerController$DimLayerState;
.super Ljava/lang/Object;
.source "DimLayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DimLayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DimLayerState"
.end annotation


# instance fields
.field animator:Lcom/android/server/wm/WindowStateAnimator;

.field continueDimming:Z

.field dimAbove:Z

.field dimLayer:Lcom/android/server/wm/DimLayer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/DimLayerController$DimLayerState;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/DimLayerController$DimLayerState;-><init>()V

    return-void
.end method
