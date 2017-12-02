.class Landroid/widget/RemoteViews$SetEmptyView;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetEmptyView"
.end annotation


# static fields
.field public static final TAG:I = 0x6


# instance fields
.field emptyViewId:I

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;II)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "emptyViewId"    # I

    .prologue
    .line 402
    iput-object p1, p0, Landroid/widget/RemoteViews$SetEmptyView;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 403
    iput p2, p0, Landroid/widget/RemoteViews$SetEmptyView;->viewId:I

    .line 404
    iput p3, p0, Landroid/widget/RemoteViews$SetEmptyView;->emptyViewId:I

    .line 402
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 407
    iput-object p1, p0, Landroid/widget/RemoteViews$SetEmptyView;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetEmptyView;->viewId:I

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetEmptyView;->emptyViewId:I

    .line 407
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 420
    iget v3, p0, Landroid/widget/RemoteViews$SetEmptyView;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 421
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/AdapterView;

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object v0, v2

    .line 423
    nop

    nop

    .line 425
    .local v0, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v3, p0, Landroid/widget/RemoteViews$SetEmptyView;->emptyViewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 426
    .local v1, "emptyView":Landroid/view/View;
    if-nez v1, :cond_1

    return-void

    .line 428
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 419
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    const-string/jumbo v0, "SetEmptyView"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 413
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget v0, p0, Landroid/widget/RemoteViews$SetEmptyView;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v0, p0, Landroid/widget/RemoteViews$SetEmptyView;->emptyViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    return-void
.end method
