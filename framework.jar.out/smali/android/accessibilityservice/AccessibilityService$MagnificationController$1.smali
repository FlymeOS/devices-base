.class Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;
.super Ljava/lang/Object;
.source "AccessibilityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/AccessibilityService$MagnificationController;->dispatchMagnificationChanged(Landroid/graphics/Region;FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

.field final synthetic val$centerX:F

.field final synthetic val$centerY:F

.field final synthetic val$listener:Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

.field final synthetic val$region:Landroid/graphics/Region;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;FFF)V
    .locals 0
    .param p1, "this$1"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .param p2, "val$listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .param p3, "val$region"    # Landroid/graphics/Region;
    .param p4, "val$scale"    # F
    .param p5, "val$centerX"    # F
    .param p6, "val$centerY"    # F

    .prologue
    .line 831
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;->this$1:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;->val$listener:Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;->val$region:Landroid/graphics/Region;

    iput p4, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;->val$scale:F

    iput p5, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;->val$centerX:F

    iput p6, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;->val$centerY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 834
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;->val$listener:Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;->this$1:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    .line 835
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;->val$region:Landroid/graphics/Region;

    iget v3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;->val$scale:F

    iget v4, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;->val$centerX:F

    iget v5, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;->val$centerY:F

    .line 834
    invoke-interface/range {v0 .. v5}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;->onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;FFF)V

    .line 833
    return-void
.end method
