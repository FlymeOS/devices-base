.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SaveStateRunnable"
.end annotation


# instance fields
.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "userId"    # I

    .prologue
    .line 4000
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4001
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    .line 4000
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4006
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get5(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4009
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap4(Lcom/android/server/appwidget/AppWidgetServiceImpl;IZ)V

    .line 4010
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    invoke-static {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap14(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4005
    return-void

    .line 4006
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
