.class Landroid/widget/RemoteViews$SetOnClickPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnClickPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x1


# instance fields
.field pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 742
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 743
    iput p2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->viewId:I

    .line 744
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 742
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 747
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->viewId:I

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 747
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 769
    iget v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 770
    .local v2, "target":Landroid/view/View;
    if-nez v2, :cond_0

    return-void

    .line 774
    :cond_0
    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v3}, Landroid/widget/RemoteViews;->-get4(Landroid/widget/RemoteViews;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 775
    const-string/jumbo v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot setOnClickPendingIntent for collection item (id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 776
    iget v5, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->viewId:I

    .line 775
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 776
    const-string/jumbo v5, ")"

    .line 775
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 781
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 782
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 783
    return-void

    .line 788
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v1, 0x0

    .line 789
    .local v1, "listener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_2

    .line 790
    new-instance v1, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;

    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnClickPendingIntent;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 802
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 806
    const-string/jumbo v0, "SetOnClickPendingIntent"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 757
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    iget v2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->viewId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 756
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 761
    goto :goto_0
.end method
