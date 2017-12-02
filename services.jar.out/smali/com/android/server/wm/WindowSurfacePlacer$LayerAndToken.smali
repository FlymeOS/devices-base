.class final Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowSurfacePlacer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayerAndToken"
.end annotation


# instance fields
.field public layer:I

.field public token:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;-><init>()V

    return-void
.end method
