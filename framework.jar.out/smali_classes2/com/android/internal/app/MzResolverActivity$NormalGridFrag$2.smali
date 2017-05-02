.class Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$2;
.super Ljava/lang/Object;
.source "MzResolverActivity.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    .prologue
    .line 2234
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$2;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 2246
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 2242
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag$2;->this$1:Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;->drawPoint(I)V

    .line 2237
    return-void
.end method
