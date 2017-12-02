.class Lcom/android/internal/policy/DecorView$1;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/DecorView;

.field final synthetic val$state:Lcom/android/internal/policy/DecorView$ColorViewState;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;
    .param p2, "val$state"    # Lcom/android/internal/policy/DecorView$ColorViewState;

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$1;->this$0:Lcom/android/internal/policy/DecorView;

    iput-object p2, p0, Lcom/android/internal/policy/DecorView$1;->val$state:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$1;->val$state:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1238
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$1;->val$state:Lcom/android/internal/policy/DecorView$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1236
    return-void
.end method
