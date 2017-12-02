.class public Lcom/android/internal/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field private final mPaddingBottomNoButtons:I

.field private final mPaddingTopNoTitle:I

.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 904
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 903
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 908
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 901
    iput-boolean v3, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 911
    sget-object v1, Lcom/android/internal/R$styleable;->RecycleListView:[I

    .line 910
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 913
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 912
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    .line 914
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    .line 907
    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method

.method public setHasDecor(ZZ)V
    .locals 4
    .param p1, "hasTitle"    # Z
    .param p2, "hasButtons"    # Z

    .prologue
    .line 919
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 918
    :goto_0
    return-void

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingLeft()I

    move-result v1

    .line 921
    .local v1, "paddingLeft":I
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingTop()I

    move-result v3

    .line 922
    .local v3, "paddingTop":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingRight()I

    move-result v2

    .line 923
    .local v2, "paddingRight":I
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getPaddingBottom()I

    move-result v0

    .line 924
    .local v0, "paddingBottom":I
    :goto_2
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/internal/app/AlertController$RecycleListView;->setPadding(IIII)V

    goto :goto_0

    .line 921
    .end local v0    # "paddingBottom":I
    .end local v2    # "paddingRight":I
    .end local v3    # "paddingTop":I
    :cond_1
    iget v3, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    .restart local v3    # "paddingTop":I
    goto :goto_1

    .line 923
    .restart local v2    # "paddingRight":I
    :cond_2
    iget v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    goto :goto_2
.end method
