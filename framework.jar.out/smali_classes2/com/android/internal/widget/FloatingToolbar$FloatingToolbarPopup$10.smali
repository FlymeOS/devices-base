.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;
.super Landroid/view/animation/Animation;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->closeOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$bottom:F

.field final synthetic val$startHeight:I

.field final synthetic val$targetHeight:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIF)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    .param p2, "val$targetHeight"    # I
    .param p3, "val$startHeight"    # I
    .param p4, "val$bottom"    # F

    .prologue
    .line 834
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$targetHeight:I

    iput p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$startHeight:I

    iput p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$bottom:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 837
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$targetHeight:I

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$startHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 838
    .local v0, "deltaHeight":I
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$startHeight:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap6(Landroid/view/View;I)V

    .line 839
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$bottom:F

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 841
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    .line 836
    :cond_0
    return-void
.end method
