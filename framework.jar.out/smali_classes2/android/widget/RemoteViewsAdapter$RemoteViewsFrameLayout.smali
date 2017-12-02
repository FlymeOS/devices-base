.class Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
.super Landroid/appwidget/AppWidgetHostView;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteViewsFrameLayout"
.end annotation


# instance fields
.field private final mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .prologue
    .line 295
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 296
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 294
    return-void
.end method


# virtual methods
.method protected getDefaultView()Landroid/view/View;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->-wrap0(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getDefaultView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getRemoteContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/RemoteViews;
    .param p2, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 305
    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetHostView;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 306
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;)V

    .line 304
    return-void
.end method
