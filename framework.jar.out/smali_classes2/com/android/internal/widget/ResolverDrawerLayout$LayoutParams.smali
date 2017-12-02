.class public Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alwaysShow:Z

.field public hasNestedScrollIndicator:Z

.field public ignoreOffset:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 928
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 927
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 911
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 914
    sget-object v1, Lcom/android/internal/R$styleable;->ResolverDrawerLayout_LayoutParams:[I

    .line 913
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 916
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    .line 915
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    .line 919
    const/4 v1, 0x2

    .line 918
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    .line 922
    const/4 v1, 0x3

    .line 921
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->hasNestedScrollIndicator:Z

    .line 924
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 910
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 943
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 939
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 938
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .prologue
    .line 932
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 933
    iget-boolean v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    .line 934
    iget-boolean v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    .line 935
    iget-boolean v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->hasNestedScrollIndicator:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->hasNestedScrollIndicator:Z

    .line 931
    return-void
.end method
