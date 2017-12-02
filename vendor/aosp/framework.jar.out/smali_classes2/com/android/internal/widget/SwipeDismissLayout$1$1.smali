.class Lcom/android/internal/widget/SwipeDismissLayout$1$1;
.super Ljava/lang/Object;
.source "SwipeDismissLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SwipeDismissLayout$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/SwipeDismissLayout$1;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SwipeDismissLayout$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/SwipeDismissLayout$1;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$1$1;->this$1:Lcom/android/internal/widget/SwipeDismissLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1$1;->this$1:Lcom/android/internal/widget/SwipeDismissLayout$1;

    iget-object v0, v0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->-get0(Lcom/android/internal/widget/SwipeDismissLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1$1;->this$1:Lcom/android/internal/widget/SwipeDismissLayout$1;

    iget-object v0, v0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->-wrap0(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1$1;->this$1:Lcom/android/internal/widget/SwipeDismissLayout$1;

    iget-object v0, v0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->-wrap1(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 92
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$1$1;->this$1:Lcom/android/internal/widget/SwipeDismissLayout$1;

    iget-object v0, v0, Lcom/android/internal/widget/SwipeDismissLayout$1;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    goto :goto_0
.end method
