.class Landroid/content/res/flymetheme/FlymeScreenOffManager$1;
.super Ljava/lang/Object;
.source "FlymeScreenOffManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/flymetheme/FlymeScreenOffManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/flymetheme/FlymeScreenOffManager;


# direct methods
.method constructor <init>(Landroid/content/res/flymetheme/FlymeScreenOffManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/res/flymetheme/FlymeScreenOffManager;

    .prologue
    .line 28
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager$1;->this$0:Landroid/content/res/flymetheme/FlymeScreenOffManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager$1;->this$0:Landroid/content/res/flymetheme/FlymeScreenOffManager;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeScreenOffManager;->-wrap0(Landroid/content/res/flymetheme/FlymeScreenOffManager;)V

    .line 30
    return-void
.end method
