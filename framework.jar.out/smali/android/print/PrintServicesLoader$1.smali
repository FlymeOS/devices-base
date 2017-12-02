.class Landroid/print/PrintServicesLoader$1;
.super Ljava/lang/Object;
.source "PrintServicesLoader.java"

# interfaces
.implements Landroid/print/PrintManager$PrintServicesChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/print/PrintServicesLoader;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/PrintServicesLoader;


# direct methods
.method constructor <init>(Landroid/print/PrintServicesLoader;)V
    .locals 0
    .param p1, "this$0"    # Landroid/print/PrintServicesLoader;

    .prologue
    .line 79
    iput-object p1, p0, Landroid/print/PrintServicesLoader$1;->this$0:Landroid/print/PrintServicesLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintServicesChanged()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/print/PrintServicesLoader$1;->this$0:Landroid/print/PrintServicesLoader;

    invoke-static {v0}, Landroid/print/PrintServicesLoader;->-wrap0(Landroid/print/PrintServicesLoader;)V

    .line 80
    return-void
.end method
