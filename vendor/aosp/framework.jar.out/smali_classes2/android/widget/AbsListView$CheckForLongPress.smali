.class Landroid/widget/AbsListView$CheckForLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# static fields
.field private static final INVALID_COORD:I = -0x1


# instance fields
.field private mX:F

.field private mY:F

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method static synthetic -wrap0(Landroid/widget/AbsListView$CheckForLongPress;FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$CheckForLongPress;->setCoords(FF)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 3138
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable;)V

    .line 3140
    iput v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    .line 3141
    iput v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    .line 3138
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method

.method private setCoords(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3144
    iput p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    .line 3145
    iput p2, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    .line 3143
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    .line 3150
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v8, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3151
    .local v8, "motionPosition":I
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v6, v8, v6

    invoke-virtual {v1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3152
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3153
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v3, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3154
    .local v3, "longPressPosition":I
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v1, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3156
    .local v4, "longPressId":J
    const/4 v0, 0x0

    .line 3157
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/widget/AbsListView$CheckForLongPress;->sameWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_2

    .line 3165
    .end local v0    # "handled":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 3166
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x1

    invoke-static {v1, v6}, Landroid/widget/AbsListView;->-set1(Landroid/widget/AbsListView;Z)Z

    .line 3167
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v6, -0x1

    iput v6, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3168
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v9}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3169
    invoke-virtual {v2, v9}, Landroid/view/View;->setPressed(Z)V

    .line 3149
    .end local v3    # "longPressPosition":I
    .end local v4    # "longPressId":J
    :cond_1
    :goto_1
    return-void

    .line 3158
    .restart local v0    # "handled":Z
    .restart local v3    # "longPressPosition":I
    .restart local v4    # "longPressId":J
    :cond_2
    iget v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_3

    .line 3159
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->mX:F

    iget v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->mY:F

    invoke-virtual/range {v1 .. v7}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 3161
    .local v0, "handled":Z
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 3171
    .end local v0    # "handled":Z
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x2

    iput v6, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_1
.end method
