.class public Landroid/view/ViewDebug;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewDebug$CapturedViewProperty;,
        Landroid/view/ViewDebug$ExportedProperty;,
        Landroid/view/ViewDebug$FlagToString;,
        Landroid/view/ViewDebug$HierarchyHandler;,
        Landroid/view/ViewDebug$HierarchyTraceType;,
        Landroid/view/ViewDebug$IntToString;,
        Landroid/view/ViewDebug$RecyclerTraceType;,
        Landroid/view/ViewDebug$ViewOperation;
    }
.end annotation


# static fields
.field private static final CAPTURE_TIMEOUT:I = 0xfa0

.field public static final DEBUG_DRAG:Z = false

.field public static final DEBUG_POSITIONING:Z = false

.field private static final REMOTE_COMMAND_CAPTURE:Ljava/lang/String; = "CAPTURE"

.field private static final REMOTE_COMMAND_CAPTURE_LAYERS:Ljava/lang/String; = "CAPTURE_LAYERS"

.field private static final REMOTE_COMMAND_DUMP:Ljava/lang/String; = "DUMP"

.field private static final REMOTE_COMMAND_DUMP_THEME:Ljava/lang/String; = "DUMP_THEME"

.field private static final REMOTE_COMMAND_INVALIDATE:Ljava/lang/String; = "INVALIDATE"

.field private static final REMOTE_COMMAND_OUTPUT_DISPLAYLIST:Ljava/lang/String; = "OUTPUT_DISPLAYLIST"

.field private static final REMOTE_COMMAND_REQUEST_LAYOUT:Ljava/lang/String; = "REQUEST_LAYOUT"

.field private static final REMOTE_PROFILE:Ljava/lang/String; = "PROFILE"

.field public static final TRACE_HIERARCHY:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRACE_RECYCLER:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mCapturedViewFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static mCapturedViewMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/AccessibleObject;",
            "Landroid/view/ViewDebug$ExportedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sMethodsForClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 318
    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 319
    sput-object v0, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1125
    instance-of v9, p1, Landroid/view/View;

    if-nez v9, :cond_0

    .line 1126
    nop

    nop

    invoke-virtual {p0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    :cond_0
    move-object v7, p1

    .line 1129
    nop

    nop

    .line 1130
    .local v7, "view":Landroid/view/View;
    new-instance v0, Landroid/view/ViewDebug$8;

    invoke-direct {v0, p0, v7}, Landroid/view/ViewDebug$8;-><init>(Ljava/lang/reflect/Method;Landroid/view/View;)V

    .line 1136
    .local v0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/concurrent/FutureTask;

    invoke-direct {v4, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1138
    .local v4, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Object;>;"
    invoke-virtual {v7}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 1140
    .local v5, "handler":Landroid/os/Handler;
    if-nez v5, :cond_1

    .line 1141
    new-instance v5, Landroid/os/Handler;

    .end local v5    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1143
    .restart local v5    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1146
    :goto_0
    const-wide/16 v8, 0xfa0

    :try_start_0
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v8, v9, v10}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    .line 1158
    :catch_0
    move-exception v2

    .line 1159
    .local v2, "e":Ljava/util/concurrent/CancellationException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Unexpected cancellation exception"

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1147
    .end local v2    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v3

    .line 1148
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 1149
    .local v6, "t":Ljava/lang/Throwable;
    instance-of v8, v6, Ljava/lang/IllegalAccessException;

    if-eqz v8, :cond_2

    .line 1150
    nop

    nop

    .end local v6    # "t":Ljava/lang/Throwable;
    throw v6

    .line 1152
    .restart local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    instance-of v8, v6, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v8, :cond_3

    .line 1153
    nop

    nop

    .end local v6    # "t":Ljava/lang/Throwable;
    throw v6

    .line 1155
    .restart local v6    # "t":Ljava/lang/Throwable;
    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Unexpected exception"

    invoke-direct {v8, v9, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1156
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public static capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V
    .locals 6
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "captureView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 755
    const/4 v3, 0x0

    invoke-static {p2, v3}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 757
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 758
    const-string/jumbo v3, "View"

    const-string/jumbo v4, "Failed to create capture bitmap!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 762
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 761
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 765
    :cond_0
    const/4 v1, 0x0

    .line 767
    .local v1, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    .local v2, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 769
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 771
    if-eqz v2, :cond_1

    .line 772
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    .line 774
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 754
    return-void

    .line 770
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v3

    .line 771
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    :goto_0
    if-eqz v1, :cond_2

    .line 772
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    .line 774
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 770
    throw v3

    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .local v1, "out":Ljava/io/BufferedOutputStream;
    goto :goto_0
.end method

.method private static capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 749
    .local v0, "captureView":Landroid/view/View;
    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Landroid/view/View;)V

    .line 746
    return-void
.end method

.method public static captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V
    .locals 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    .local v1, "outRect":Landroid/graphics/Rect;
    :try_start_1
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 675
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 677
    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 679
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 681
    invoke-virtual {p1}, Ljava/io/FilterOutputStream;->close()V

    .line 664
    return-void

    .line 680
    .end local v1    # "outRect":Landroid/graphics/Rect;
    :catchall_0
    move-exception v2

    .line 681
    invoke-virtual {p1}, Ljava/io/FilterOutputStream;->close()V

    .line 680
    throw v2

    .line 670
    .restart local v1    # "outRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V
    .locals 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/DataOutputStream;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    move v6, p2

    .line 690
    :goto_0
    iget v10, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v10, v10, 0x80

    const/16 v11, 0x80

    if-eq v10, v11, :cond_2

    .line 691
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    .line 692
    .local v5, "id":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 693
    .local v7, "name":Ljava/lang/String;
    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    .line 694
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 697
    :cond_0
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 698
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 699
    if-eqz v6, :cond_4

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 701
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 703
    .local v9, "position":[I
    invoke-virtual {p0, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 705
    const/4 v10, 0x0

    aget v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 706
    const/4 v10, 0x1

    aget v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 707
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 709
    const/4 v10, 0x1

    invoke-static {p0, v10}, Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 710
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 711
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 712
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 711
    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 713
    .local v0, "arrayOut":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 714
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 715
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 717
    .end local v0    # "arrayOut":Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 720
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "id":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "position":[I
    :cond_2
    instance-of v10, p0, Landroid/view/ViewGroup;

    if-eqz v10, :cond_5

    move-object v3, p0

    .line 721
    nop

    nop

    .line 722
    .local v3, "group":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 724
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_5

    .line 725
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, p1, v6}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 724
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 688
    .end local v2    # "count":I
    .end local v3    # "group":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    :cond_3
    const/4 v6, 0x0

    .local v6, "localVisible":Z
    goto/16 :goto_0

    .line 699
    .end local v6    # "localVisible":Z
    .restart local v5    # "id":I
    .restart local v7    # "name":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 729
    .end local v5    # "id":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v10, :cond_6

    .line 730
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v10

    iget-object v8, v10, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 731
    .local v8, "overlayContainer":Landroid/view/ViewGroup;
    invoke-static {v8, p1, v6}, Landroid/view/ViewDebug;->captureViewLayer(Landroid/view/View;Ljava/io/DataOutputStream;Z)V

    .line 686
    .end local v8    # "overlayContainer":Landroid/view/ViewGroup;
    :cond_6
    return-void
.end method

.method private static capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1562
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1563
    const-string/jumbo v8, "null"

    return-object v8

    .line 1566
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1567
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1569
    .local v4, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v4

    .line 1570
    .local v0, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 1571
    aget-object v2, v4, v5

    .line 1573
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1575
    .local v3, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    const-string/jumbo v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    if-eqz v3, :cond_1

    .line 1580
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\n"

    const-string/jumbo v10, "\\n"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1581
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    .end local v7    # "value":Ljava/lang/String;
    :goto_1
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1570
    .end local v3    # "fieldValue":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1583
    .restart local v3    # "fieldValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1586
    .end local v3    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 1591
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1519
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 1520
    const-string/jumbo v12, "null"

    return-object v12

    .line 1523
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1524
    .local v10, "sb":Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Landroid/view/ViewDebug;->capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1526
    .local v7, "methods":[Ljava/lang/reflect/Method;
    array-length v1, v7

    .line 1527
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 1528
    aget-object v5, v7, v4

    .line 1530
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    :try_start_0
    nop

    nop

    invoke-virtual {v5, p0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1531
    .local v6, "methodValue":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    .line 1533
    .local v9, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v12, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Landroid/view/ViewDebug$CapturedViewProperty;

    .line 1534
    .local v8, "property":Landroid/view/ViewDebug$CapturedViewProperty;
    invoke-interface {v8}, Landroid/view/ViewDebug$CapturedViewProperty;->retrieveReturn()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1536
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v9, v12}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    .end local v6    # "methodValue":Ljava/lang/Object;
    .end local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1538
    .restart local v6    # "methodValue":Ljava/lang/Object;
    .restart local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    const-string/jumbo v12, "()="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    if-eqz v6, :cond_2

    .line 1543
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\n"

    const-string/jumbo v14, "\\n"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1544
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    .end local v11    # "value":Ljava/lang/String;
    :goto_2
    const-string/jumbo v12, "; "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1550
    .end local v6    # "methodValue":Ljava/lang/Object;
    .end local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 1546
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v6    # "methodValue":Ljava/lang/Object;
    .restart local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .restart local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string/jumbo v12, "null"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1553
    .end local v6    # "methodValue":Ljava/lang/Object;
    .end local v8    # "property":Landroid/view/ViewDebug$CapturedViewProperty;
    .end local v9    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 1558
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method private static capturedViewGetPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1457
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 1458
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1460
    :cond_0
    sget-object v5, Landroid/view/ViewDebug;->mCapturedViewFieldsForClasses:Ljava/util/HashMap;

    .line 1462
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1463
    .local v2, "fields":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    .line 1464
    return-object v2

    .line 1467
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1468
    .local v3, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1470
    array-length v0, v2

    .line 1471
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 1472
    aget-object v1, v2, v4

    .line 1473
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v6, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1474
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1475
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1479
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/reflect/Field;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 1480
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v5, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    return-object v2
.end method

.method private static capturedViewGetPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1486
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 1487
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1489
    :cond_0
    sget-object v3, Landroid/view/ViewDebug;->mCapturedViewMethodsForClasses:Ljava/util/HashMap;

    .line 1491
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1492
    .local v5, "methods":[Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    .line 1493
    return-object v5

    .line 1496
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1497
    .local v1, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1499
    array-length v0, v5

    .line 1500
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1501
    aget-object v4, v5, v2

    .line 1502
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_2

    .line 1503
    const-class v6, Landroid/view/ViewDebug$CapturedViewProperty;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/AbstractMethod;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    .line 1502
    if-eqz v6, :cond_2

    .line 1504
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    if-eq v6, v7, :cond_2

    .line 1505
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1506
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1510
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    check-cast v5, [Ljava/lang/reflect/Method;

    .line 1511
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    return-object v5
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 440
    const-string/jumbo v1, "DUMP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    const/4 v1, 0x1

    invoke-static {p0, v2, v1, p3}, Landroid/view/ViewDebug;->dump(Landroid/view/View;ZZLjava/io/OutputStream;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    const-string/jumbo v1, "DUMP_THEME"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    invoke-static {p0, p3}, Landroid/view/ViewDebug;->dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 444
    :cond_2
    const-string/jumbo v1, "CAPTURE_LAYERS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->captureLayers(Landroid/view/View;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 447
    :cond_3
    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "params":[Ljava/lang/String;
    const-string/jumbo v1, "CAPTURE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 449
    aget-object v1, v0, v2

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->capture(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_4
    const-string/jumbo v1, "OUTPUT_DISPLAYLIST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 451
    aget-object v1, v0, v2

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->outputDisplayList(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_5
    const-string/jumbo v1, "INVALIDATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 453
    aget-object v1, v0, v2

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->invalidate(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_6
    const-string/jumbo v1, "REQUEST_LAYOUT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 455
    aget-object v1, v0, v2

    invoke-static {p0, v1}, Landroid/view/ViewDebug;->requestLayout(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_7
    const-string/jumbo v1, "PROFILE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    aget-object v1, v0, v2

    invoke-static {p0, p3, v1}, Landroid/view/ViewDebug;->profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static dump(Landroid/view/View;ZZLjava/io/OutputStream;)V
    .locals 10
    .param p0, "root"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z
    .param p2, "includeProperties"    # Z
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    const/4 v8, 0x0

    .line 817
    .local v8, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v1, p3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v4, 0x8000

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 819
    .local v9, "view":Landroid/view/View;
    instance-of v1, v9, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 820
    move-object v0, v9

    nop

    nop

    move-object v2, v0

    .line 821
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 824
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_0
    const-string/jumbo v1, "DONE."

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 829
    if-eqz v3, :cond_1

    .line 830
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 814
    .end local v9    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 826
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    move-object v3, v8

    .line 827
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_1
    :try_start_2
    const-string/jumbo v1, "View"

    const-string/jumbo v4, "Problem dumping the view:"

    invoke-static {v1, v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 829
    if-eqz v3, :cond_1

    .line 830
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    .line 828
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "out":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v1

    move-object v3, v8

    .line 829
    .end local v8    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v3, :cond_2

    .line 830
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 828
    :cond_2
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    .line 826
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 1602
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1603
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1604
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    const-string/jumbo v2, ""

    invoke-static {p1, v0, v2}, Landroid/view/ViewDebug;->capturedViewExportMethods(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    return-void
.end method

.method public static dumpTheme(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 862
    const/4 v3, 0x0

    .line 864
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string/jumbo v6, "utf-8"

    invoke-direct {v5, p1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const v6, 0x8000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 866
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 865
    invoke-static {v5, v6}, Landroid/view/ViewDebug;->getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "attributes":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 868
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 869
    aget-object v5, v0, v2

    if-eqz v5, :cond_0

    .line 870
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 871
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 868
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 875
    .end local v2    # "i":I
    :cond_1
    const-string/jumbo v5, "DONE."

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 880
    if-eqz v4, :cond_2

    .line 881
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    move-object v3, v4

    .line 861
    .end local v0    # "attributes":[Ljava/lang/String;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    :cond_3
    :goto_1
    return-void

    .line 877
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 878
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string/jumbo v5, "View"

    const-string/jumbo v6, "Problem dumping View Theme:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 880
    if-eqz v3, :cond_3

    .line 881
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 879
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 880
    :goto_3
    if-eqz v3, :cond_4

    .line 881
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 879
    :cond_4
    throw v5

    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 877
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method private static dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "includeProperties"    # Z

    .prologue
    .line 1001
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 1002
    const/16 v3, 0x20

    :try_start_0
    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1001
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1004
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v3, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1006
    const-string/jumbo v0, "ViewOverlay"

    .line 1008
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1009
    const/16 v3, 0x40

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1010
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1011
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/BufferedWriter;->write(I)V

    .line 1012
    if-eqz p4, :cond_2

    .line 1013
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1015
    :cond_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    const/4 v3, 0x1

    return v3

    .line 1016
    .end local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1017
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "View"

    const-string/jumbo v4, "Error while dumping hierarchy tree"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v3, 0x0

    return v3
.end method

.method private static dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I
    .param p4, "skipChildren"    # Z
    .param p5, "includeProperties"    # Z

    .prologue
    .line 968
    invoke-static {p0, p1, p2, p3, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    return-void

    .line 972
    :cond_0
    if-eqz p4, :cond_1

    .line 973
    return-void

    .line 976
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 977
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_4

    .line 978
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 979
    .local v9, "view":Landroid/view/View;
    instance-of v0, v9, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v1, v9

    .line 980
    nop

    nop

    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 985
    :goto_1
    iget-object v0, v9, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_2

    .line 986
    invoke-virtual {v9}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v8

    .line 987
    .local v8, "overlay":Landroid/view/ViewOverlay;
    iget-object v1, v8, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 988
    .local v1, "overlayContainer":Landroid/view/ViewGroup;
    add-int/lit8 v3, p3, 0x2

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->dumpViewHierarchy(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    .line 977
    .end local v1    # "overlayContainer":Landroid/view/ViewGroup;
    .end local v8    # "overlay":Landroid/view/ViewOverlay;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 983
    :cond_3
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, v9, p2, v0, p5}, Landroid/view/ViewDebug;->dumpView(Landroid/content/Context;Landroid/view/View;Ljava/io/BufferedWriter;IZ)Z

    goto :goto_1

    .line 992
    .end local v9    # "view":Landroid/view/View;
    :cond_4
    instance-of v0, p1, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v0, :cond_5

    .line 993
    check-cast p1, Landroid/view/ViewDebug$HierarchyHandler;

    .end local p1    # "group":Landroid/view/ViewGroup;
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/ViewDebug$HierarchyHandler;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    .line 967
    :cond_5
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1103
    const-string/jumbo v0, ""

    invoke-static {p0, p1, p2, v0}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 1101
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1109
    if-nez p1, :cond_0

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=4,null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1111
    return-void

    .line 1114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1116
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1117
    invoke-static {p0, p1, p2, v0, p3}, Landroid/view/ViewDebug;->exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1119
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 1107
    return-void
.end method

.method public static dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 842
    new-instance v0, Landroid/view/ViewHierarchyEncoder;

    invoke-direct {v0, p1}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 843
    .local v0, "encoder":Landroid/view/ViewHierarchyEncoder;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 845
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Landroid/view/ViewDebug$7;

    invoke-direct {v2, p0, v0, v1}, Landroid/view/ViewDebug$7;-><init>(Landroid/view/View;Landroid/view/ViewHierarchyEncoder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 853
    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 854
    invoke-virtual {v0}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    .line 841
    return-void
.end method

.method private static exportFields(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1254
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v14

    .line 1256
    .local v14, "fields":[Ljava/lang/reflect/Field;
    array-length v10, v14

    .line 1257
    .local v10, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v10, :cond_10

    .line 1258
    aget-object v12, v14, v16

    .line 1262
    .local v12, "field":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    .line 1263
    .local v13, "fieldValue":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    .line 1264
    .local v24, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewDebug$ExportedProperty;

    .line 1266
    .local v4, "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1268
    .local v9, "categoryPrefix":Ljava/lang/String;
    :goto_1
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_b

    .line 1269
    :cond_0
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p0, :cond_5

    .line 1270
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v17

    .line 1271
    .local v17, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v13

    .line 1335
    .end local v13    # "fieldValue":Ljava/lang/Object;
    .end local v17    # "id":I
    :cond_1
    :goto_2
    if-nez v13, :cond_2

    .line 1336
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1339
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, ""

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v7, v13}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1257
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1266
    .restart local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v13    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const-string/jumbo v9, ""

    .restart local v9    # "categoryPrefix":Ljava/lang/String;
    goto :goto_1

    .line 1273
    :cond_5
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v15

    .line 1274
    .local v15, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v2, v15

    if-lez v2, :cond_6

    .line 1275
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    .line 1277
    .local v18, "intValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1278
    .local v6, "valuePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v15, v1, v6}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1281
    .end local v6    # "valuePrefix":Ljava/lang/String;
    .end local v18    # "intValue":I
    :cond_6
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v21

    .line 1282
    .local v21, "mapping":[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v21

    array-length v2, v0

    if-lez v2, :cond_8

    .line 1283
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    .line 1284
    .restart local v18    # "intValue":I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    .line 1285
    .local v22, "mappingCount":I
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 1286
    aget-object v20, v21, v19

    .line 1287
    .local v20, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v20 .. v20}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v2

    move/from16 v0, v18

    if-ne v2, v0, :cond_9

    .line 1288
    invoke-interface/range {v20 .. v20}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v13

    .line 1293
    .end local v13    # "fieldValue":Ljava/lang/Object;
    .end local v20    # "mapped":Landroid/view/ViewDebug$IntToString;
    :cond_7
    if-nez v13, :cond_8

    .line 1294
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1298
    .end local v18    # "intValue":I
    .end local v19    # "j":I
    .end local v22    # "mappingCount":I
    :cond_8
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->formatToHexString()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1299
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1300
    .restart local v13    # "fieldValue":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_a

    .line 1301
    move-object v0, v13

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 1285
    .restart local v18    # "intValue":I
    .restart local v19    # "j":I
    .restart local v20    # "mapped":Landroid/view/ViewDebug$IntToString;
    .restart local v22    # "mappingCount":I
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1302
    .end local v18    # "intValue":I
    .end local v19    # "j":I
    .end local v20    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v22    # "mappingCount":I
    :cond_a
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_1

    .line 1303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v13

    check-cast v0, Ljava/lang/Byte;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v7, 0x1

    invoke-static {v2, v7}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 1307
    .end local v15    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .end local v21    # "mapping":[Landroid/view/ViewDebug$IntToString;
    :cond_b
    const-class v2, [I

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_c

    .line 1308
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 1309
    .local v5, "array":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1310
    .restart local v6    # "valuePrefix":Ljava/lang/String;
    const-string/jumbo v23, ""

    .line 1312
    .local v23, "suffix":Ljava/lang/String;
    const-string/jumbo v7, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1340
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v5    # "array":[I
    .end local v6    # "valuePrefix":Ljava/lang/String;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v13    # "fieldValue":Ljava/lang/Object;
    .end local v23    # "suffix":Ljava/lang/String;
    .end local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/IllegalAccessException;
    goto/16 :goto_3

    .line 1315
    .end local v11    # "e":Ljava/lang/IllegalAccessException;
    .restart local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v9    # "categoryPrefix":Ljava/lang/String;
    .restart local v13    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    const-class v2, [Ljava/lang/String;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_f

    .line 1316
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 1317
    .local v8, "array":[Ljava/lang/String;
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v8, :cond_3

    .line 1318
    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_5
    array-length v2, v8

    move/from16 v0, v19

    if-ge v0, v2, :cond_3

    .line 1319
    aget-object v2, v8, v19

    if-eqz v2, :cond_d

    .line 1320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v7, v8, v19

    const-string/jumbo v25, ""

    .line 1321
    add-int/lit8 v2, v19, 0x1

    aget-object v2, v8, v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "null"

    .line 1320
    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v0, v3, v7, v1, v2}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1318
    :cond_d
    add-int/lit8 v19, v19, 0x2

    goto :goto_5

    .line 1321
    :cond_e
    add-int/lit8 v2, v19, 0x1

    aget-object v2, v8, v2

    goto :goto_6

    .line 1327
    .end local v8    # "array":[Ljava/lang/String;
    .end local v19    # "j":I
    :cond_f
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1328
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1329
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1330
    invoke-interface {v4}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v7

    .line 1329
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1252
    .end local v4    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v9    # "categoryPrefix":Ljava/lang/String;
    .end local v12    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "fieldValue":Ljava/lang/Object;
    .end local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    return-void
.end method

.method private static exportMethods(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/io/BufferedWriter;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1171
    .local p3, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p3 .. p3}, Landroid/view/ViewDebug;->getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v26

    .line 1172
    .local v26, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v26

    array-length v11, v0

    .line 1173
    .local v11, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v11, :cond_c

    .line 1174
    aget-object v24, v26, v16

    .line 1177
    .local v24, "method":Ljava/lang/reflect/Method;
    :try_start_0
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->callMethodOnAppropriateTheadBlocking(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 1178
    .local v25, "methodValue":Ljava/lang/Object;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v27

    .line 1179
    .local v27, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    .line 1181
    .local v5, "property":Landroid/view/ViewDebug$ExportedProperty;
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->category()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1183
    .local v10, "categoryPrefix":Ljava/lang/String;
    :goto_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v27

    if-ne v0, v3, :cond_7

    .line 1184
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p0, :cond_3

    .line 1185
    check-cast v25, Ljava/lang/Integer;

    .end local v25    # "methodValue":Ljava/lang/Object;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1186
    .local v17, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v25

    .line 1243
    .end local v17    # "id":I
    .restart local v25    # "methodValue":Ljava/lang/Object;
    :cond_0
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "()"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v0, v3, v4, v8, v1}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1173
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v10    # "categoryPrefix":Ljava/lang/String;
    .end local v25    # "methodValue":Ljava/lang/Object;
    .end local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1181
    .restart local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v25    # "methodValue":Ljava/lang/Object;
    .restart local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string/jumbo v10, ""

    .restart local v10    # "categoryPrefix":Ljava/lang/String;
    goto :goto_1

    .line 1188
    :cond_3
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->flagMapping()[Landroid/view/ViewDebug$FlagToString;

    move-result-object v15

    .line 1189
    .local v15, "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    array-length v3, v15

    if-lez v3, :cond_4

    .line 1190
    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1192
    .local v18, "intValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1193
    .local v7, "valuePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v15, v1, v7}, Landroid/view/ViewDebug;->exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V

    .line 1196
    .end local v7    # "valuePrefix":Ljava/lang/String;
    .end local v18    # "intValue":I
    :cond_4
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v22

    .line 1197
    .local v22, "mapping":[Landroid/view/ViewDebug$IntToString;
    move-object/from16 v0, v22

    array-length v3, v0

    if-lez v3, :cond_0

    .line 1198
    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1199
    .restart local v18    # "intValue":I
    const/16 v20, 0x0

    .line 1200
    .local v20, "mapped":Z
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    .line 1201
    .local v23, "mappingCount":I
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 1202
    aget-object v21, v22, v19

    .line 1203
    .local v21, "mapper":Landroid/view/ViewDebug$IntToString;
    invoke-interface/range {v21 .. v21}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v3

    move/from16 v0, v18

    if-ne v3, v0, :cond_6

    .line 1204
    invoke-interface/range {v21 .. v21}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v25

    .line 1205
    const/16 v20, 0x1

    .line 1210
    .end local v21    # "mapper":Landroid/view/ViewDebug$IntToString;
    :cond_5
    if-nez v20, :cond_0

    .line 1211
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    goto/16 :goto_2

    .line 1201
    .restart local v21    # "mapper":Landroid/view/ViewDebug$IntToString;
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1215
    .end local v15    # "flagsMapping":[Landroid/view/ViewDebug$FlagToString;
    .end local v18    # "intValue":I
    .end local v19    # "j":I
    .end local v20    # "mapped":Z
    .end local v21    # "mapper":Landroid/view/ViewDebug$IntToString;
    .end local v22    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v23    # "mappingCount":I
    :cond_7
    const-class v3, [I

    move-object/from16 v0, v27

    if-ne v0, v3, :cond_8

    .line 1216
    move-object/from16 v0, v25

    check-cast v0, [I

    move-object v6, v0

    .line 1217
    .local v6, "array":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1218
    .restart local v7    # "valuePrefix":Ljava/lang/String;
    const-string/jumbo v28, "()"

    .line 1220
    .local v28, "suffix":Ljava/lang/String;
    const-string/jumbo v8, "()"

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v8}, Landroid/view/ViewDebug;->exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1244
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v6    # "array":[I
    .end local v7    # "valuePrefix":Ljava/lang/String;
    .end local v10    # "categoryPrefix":Ljava/lang/String;
    .end local v25    # "methodValue":Ljava/lang/Object;
    .end local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "suffix":Ljava/lang/String;
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/IllegalAccessException;
    goto/16 :goto_3

    .line 1223
    .end local v12    # "e":Ljava/lang/IllegalAccessException;
    .restart local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .restart local v10    # "categoryPrefix":Ljava/lang/String;
    .restart local v25    # "methodValue":Ljava/lang/Object;
    .restart local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    const-class v3, [Ljava/lang/String;

    move-object/from16 v0, v27

    if-ne v0, v3, :cond_b

    .line 1224
    move-object/from16 v0, v25

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    .line 1225
    .local v9, "array":[Ljava/lang/String;
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->hasAdjacentMapping()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v9, :cond_1

    .line 1226
    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_5
    array-length v3, v9

    move/from16 v0, v19

    if-ge v0, v3, :cond_1

    .line 1227
    aget-object v3, v9, v19

    if-eqz v3, :cond_9

    .line 1228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v8, v9, v19

    const-string/jumbo v29, "()"

    .line 1229
    add-int/lit8 v3, v19, 0x1

    aget-object v3, v9, v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "null"

    .line 1228
    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-static {v0, v4, v8, v1, v3}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1226
    :cond_9
    add-int/lit8 v19, v19, 0x2

    goto :goto_5

    .line 1229
    :cond_a
    add-int/lit8 v3, v19, 0x1

    aget-object v3, v9, v3

    goto :goto_6

    .line 1236
    .end local v9    # "array":[Ljava/lang/String;
    .end local v19    # "j":I
    :cond_b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1237
    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->deepExport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Landroid/view/ViewDebug$ExportedProperty;->prefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ViewDebug;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_3

    .line 1245
    .end local v5    # "property":Landroid/view/ViewDebug$ExportedProperty;
    .end local v10    # "categoryPrefix":Ljava/lang/String;
    .end local v25    # "methodValue":Ljava/lang/Object;
    .end local v27    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v13

    .local v13, "e":Ljava/lang/reflect/InvocationTargetException;
    goto/16 :goto_3

    .line 1169
    .end local v13    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v24    # "method":Ljava/lang/reflect/Method;
    :cond_c
    return-void

    .line 1246
    .restart local v24    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v14

    .local v14, "e":Ljava/util/concurrent/TimeoutException;
    goto/16 :goto_3
.end method

.method private static exportUnrolledArray(Landroid/content/Context;Ljava/io/BufferedWriter;Landroid/view/ViewDebug$ExportedProperty;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "property"    # Landroid/view/ViewDebug$ExportedProperty;
    .param p3, "array"    # [I
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1377
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->indexMapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v5

    .line 1378
    .local v5, "indexMapping":[Landroid/view/ViewDebug$IntToString;
    array-length v0, v5

    move/from16 v16, v0

    if-lez v16, :cond_3

    const/4 v3, 0x1

    .line 1380
    .local v3, "hasIndexMapping":Z
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->mapping()[Landroid/view/ViewDebug$IntToString;

    move-result-object v10

    .line 1381
    .local v10, "mapping":[Landroid/view/ViewDebug$IntToString;
    array-length v0, v10

    move/from16 v16, v0

    if-lez v16, :cond_4

    const/4 v4, 0x1

    .line 1383
    .local v4, "hasMapping":Z
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/view/ViewDebug$ExportedProperty;->resolveId()Z

    move-result v16

    if-eqz v16, :cond_5

    if-eqz p0, :cond_5

    const/4 v13, 0x1

    .line 1384
    .local v13, "resolveId":Z
    :goto_2
    move-object/from16 v0, p3

    array-length v15, v0

    .line 1386
    .local v15, "valuesCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v15, :cond_9

    .line 1388
    const/4 v14, 0x0

    .line 1390
    .local v14, "value":Ljava/lang/String;
    aget v6, p3, v7

    .line 1392
    .local v6, "intValue":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1393
    .local v12, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1394
    array-length v11, v5

    .line 1395
    .local v11, "mappingCount":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_4
    if-ge v8, v11, :cond_0

    .line 1396
    aget-object v9, v5, v8

    .line 1397
    .local v9, "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v7, :cond_6

    .line 1398
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v12

    .line 1404
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    :cond_0
    if-eqz v4, :cond_1

    .line 1405
    array-length v11, v10

    .line 1406
    .restart local v11    # "mappingCount":I
    const/4 v8, 0x0

    .restart local v8    # "k":I
    :goto_5
    if-ge v8, v11, :cond_1

    .line 1407
    aget-object v9, v10, v8

    .line 1408
    .restart local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->from()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v6, :cond_7

    .line 1409
    invoke-interface {v9}, Landroid/view/ViewDebug$IntToString;->to()Ljava/lang/String;

    move-result-object v14

    .line 1415
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_1
    if-eqz v13, :cond_8

    .line 1416
    if-nez v14, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1421
    :cond_2
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v0, v1, v12, v2, v14}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1386
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1378
    .end local v3    # "hasIndexMapping":Z
    .end local v4    # "hasMapping":Z
    .end local v6    # "intValue":I
    .end local v7    # "j":I
    .end local v10    # "mapping":[Landroid/view/ViewDebug$IntToString;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "resolveId":Z
    .end local v15    # "valuesCount":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "hasIndexMapping":Z
    goto :goto_0

    .line 1381
    .restart local v10    # "mapping":[Landroid/view/ViewDebug$IntToString;
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "hasMapping":Z
    goto :goto_1

    .line 1383
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "resolveId":Z
    goto :goto_2

    .line 1395
    .restart local v6    # "intValue":I
    .restart local v7    # "j":I
    .restart local v8    # "k":I
    .restart local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .restart local v11    # "mappingCount":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "value":Ljava/lang/String;
    .restart local v15    # "valuesCount":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1406
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1418
    .end local v8    # "k":I
    .end local v9    # "mapped":Landroid/view/ViewDebug$IntToString;
    .end local v11    # "mappingCount":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_8
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "value":Ljava/lang/String;
    goto :goto_6

    .line 1375
    .end local v6    # "intValue":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private static exportUnrolledFlags(Ljava/io/BufferedWriter;[Landroid/view/ViewDebug$FlagToString;ILjava/lang/String;)V
    .locals 9
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "mapping"    # [Landroid/view/ViewDebug$FlagToString;
    .param p2, "intValue"    # I
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1359
    array-length v0, p1

    .line 1360
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 1361
    aget-object v1, p1, v3

    .line 1362
    .local v1, "flagMapping":Landroid/view/ViewDebug$FlagToString;
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->outputIf()Z

    move-result v2

    .line 1363
    .local v2, "ifTrue":Z
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->mask()I

    move-result v8

    and-int v4, p2, v8

    .line 1364
    .local v4, "maskResult":I
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->equals()I

    move-result v8

    if-ne v4, v8, :cond_2

    const/4 v6, 0x1

    .line 1365
    .local v6, "test":Z
    :goto_1
    if-eqz v6, :cond_0

    if-nez v2, :cond_3

    :cond_0
    if-nez v6, :cond_1

    if-eqz v2, :cond_3

    .line 1360
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1364
    .end local v6    # "test":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1366
    .restart local v6    # "test":Z
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewDebug$FlagToString;->name()Ljava/lang/String;

    move-result-object v5

    .line 1367
    .local v5, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 1368
    .local v7, "value":Ljava/lang/String;
    const-string/jumbo v8, ""

    invoke-static {p0, p3, v5, v8, v7}, Landroid/view/ViewDebug;->writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1357
    .end local v1    # "flagMapping":Landroid/view/ViewDebug$FlagToString;
    .end local v2    # "ifTrue":Z
    .end local v4    # "maskResult":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "test":Z
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 9
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 465
    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 466
    const-string/jumbo v5, "@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "ids":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v0, v3, v5

    .line 468
    .local v0, "className":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v3, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v1, v6

    .line 470
    .local v1, "hashCode":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 471
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 472
    nop

    nop

    .end local v4    # "view":Landroid/view/View;
    invoke-static {v4, v0, v1}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v5

    return-object v5

    .line 476
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "hashCode":I
    .end local v3    # "ids":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 477
    .local v2, "id":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    return-object v5

    .line 480
    .end local v2    # "id":I
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "hashCode":I
    .restart local v3    # "ids":[Ljava/lang/String;
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    return-object v8
.end method

.method private static findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .locals 6
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 921
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 922
    return-object p0

    .line 925
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 926
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 927
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 928
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 929
    nop

    nop

    invoke-static {v4, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 930
    .local v1, "found":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 931
    return-object v1

    .line 933
    .end local v1    # "found":Landroid/view/View;
    :cond_1
    invoke-static {v3, p1, p2}, Landroid/view/ViewDebug;->isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 934
    return-object v3

    .line 936
    :cond_2
    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v4, :cond_3

    .line 937
    iget-object v4, v3, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    iget-object v4, v4, Landroid/view/ViewOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v4, p1, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 939
    .restart local v1    # "found":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 940
    return-object v1

    .line 943
    .end local v1    # "found":Landroid/view/View;
    :cond_3
    instance-of v4, v3, Landroid/view/ViewDebug$HierarchyHandler;

    if-eqz v4, :cond_4

    .line 944
    check-cast v3, Landroid/view/ViewDebug$HierarchyHandler;

    .end local v3    # "view":Landroid/view/View;
    invoke-interface {v3, p1, p2}, Landroid/view/ViewDebug$HierarchyHandler;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 946
    .restart local v1    # "found":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 947
    return-object v1

    .line 926
    .end local v1    # "found":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 951
    :cond_5
    return-object v5
.end method

.method private static formatIntToHexString(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getExportedPropertyFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 1024
    sget-object v8, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    if-nez v8, :cond_0

    .line 1025
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 1027
    :cond_0
    sget-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v8, :cond_1

    .line 1028
    new-instance v8, Ljava/util/HashMap;

    const/16 v9, 0x200

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    sput-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1031
    :cond_1
    sget-object v6, Landroid/view/ViewDebug;->sFieldsForClasses:Ljava/util/HashMap;

    .line 1033
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Field;

    .line 1034
    .local v4, "fields":[Ljava/lang/reflect/Field;
    if-eqz v4, :cond_2

    .line 1035
    return-object v4

    .line 1039
    :cond_2
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0, v8}, Ljava/lang/Class;->getDeclaredFieldsUnchecked(Z)[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1040
    .local v1, "declaredFields":[Ljava/lang/reflect/Field;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .local v5, "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    array-length v9, v1

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v3, v1, v8

    .line 1043
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_3

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1044
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1045
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    sget-object v10, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v10, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    :cond_3
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 1049
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/reflect/Field;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Ljava/lang/reflect/Field;

    move-object v4, v0

    .line 1050
    invoke-virtual {v6, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    return-object v4

    .line 1051
    .end local v1    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v5    # "foundFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    :catch_0
    move-exception v2

    .line 1052
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
.end method

.method private static getExportedPropertyMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 1059
    sget-object v6, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 1060
    new-instance v6, Ljava/util/HashMap;

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    sput-object v6, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1062
    :cond_0
    sget-object v6, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 1063
    new-instance v6, Ljava/util/HashMap;

    const/16 v7, 0x200

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    sput-object v6, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    .line 1066
    :cond_1
    sget-object v2, Landroid/view/ViewDebug;->sMethodsForClasses:Ljava/util/HashMap;

    .line 1068
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;[Ljava/lang/reflect/Method;>;"
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Method;

    .line 1069
    .local v4, "methods":[Ljava/lang/reflect/Method;
    if-eqz v4, :cond_2

    .line 1070
    return-object v4

    .line 1073
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredMethodsUnchecked(Z)[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1075
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    .local v1, "foundMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    array-length v7, v4

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v3, v4, v6

    .line 1079
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 1080
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_3

    .line 1086
    const-class v5, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AbstractMethod;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    .line 1085
    if-eqz v5, :cond_3

    .line 1087
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    const-class v8, Ljava/lang/Void;

    if-eq v5, v8, :cond_3

    .line 1088
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1089
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    sget-object v8, Landroid/view/ViewDebug;->sAnnotations:Ljava/util/HashMap;

    const-class v5, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/view/ViewDebug$ExportedProperty;

    invoke-virtual {v8, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    :cond_3
    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 1094
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/reflect/Method;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    check-cast v4, [Ljava/lang/reflect/Method;

    .line 1095
    .restart local v4    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v2, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    return-object v4

    .line 1081
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_1
.end method

.method private static getStyleAttributesDump(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)[Ljava/lang/String;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    const/4 v11, 0x1

    .line 897
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 898
    .local v6, "outValue":Landroid/util/TypedValue;
    const-string/jumbo v5, "null"

    .line 899
    .local v5, "nullString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 900
    .local v4, "i":I
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getAllAttributes()[I

    move-result-object v1

    .line 901
    .local v1, "attributes":[I
    array-length v7, v1

    mul-int/lit8 v7, v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    .line 902
    .local v2, "data":[Ljava/lang/String;
    const/4 v7, 0x0

    array-length v9, v1

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_2

    aget v0, v1, v8

    .line 904
    .local v0, "attributeId":I
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    .line 905
    add-int/lit8 v10, v4, 0x1

    const/4 v7, 0x1

    invoke-virtual {p1, v0, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 906
    invoke-virtual {v6}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 905
    :goto_1
    aput-object v7, v2, v10

    .line 907
    add-int/lit8 v4, v4, 0x2

    .line 910
    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-ne v7, v11, :cond_0

    .line 911
    add-int/lit8 v7, v4, -0x1

    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :cond_0
    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    :cond_1
    move-object v7, v5

    .line 906
    goto :goto_1

    .line 917
    .end local v0    # "attributeId":I
    :cond_2
    return-object v2

    .line 913
    .restart local v0    # "attributeId":I
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_2
.end method

.method public static getViewInstanceCount()J
    .locals 2

    .prologue
    .line 373
    const-class v0, Landroid/view/View;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getViewRootImplCount()J
    .locals 2

    .prologue
    .line 384
    const-class v0, Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static invalidate(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 485
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 483
    :cond_0
    return-void
.end method

.method public static invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1619
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1620
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1621
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1623
    .local v5, "exception":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Landroid/view/ViewDebug$9;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/ViewDebug$9;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1639
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1645
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1640
    :catch_0
    move-exception v7

    .line 1641
    .local v7, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1648
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static isRequestedView(Landroid/view/View;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 955
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 956
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "viewClassName":Ljava/lang/String;
    const-string/jumbo v1, "ViewOverlay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    const-string/jumbo v1, "android.view.ViewOverlay$OverlayViewGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 960
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 963
    .end local v0    # "viewClassName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static outputDisplayList(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 742
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 741
    return-void
.end method

.method private static outputDisplayList(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 737
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->outputDisplayList(Landroid/view/View;)V

    .line 735
    return-void
.end method

.method private static performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "captureView"    # Landroid/view/View;
    .param p1, "skipChildren"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 779
    if-eqz p0, :cond_0

    .line 780
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 781
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [Landroid/graphics/Bitmap;

    .line 783
    .local v0, "cache":[Landroid/graphics/Bitmap;
    new-instance v3, Landroid/view/ViewDebug$6;

    invoke-direct {v3, v2, v0, p0, p1}, Landroid/view/ViewDebug$6;-><init>(Ljava/util/concurrent/CountDownLatch;[Landroid/graphics/Bitmap;Landroid/view/View;Z)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 797
    const-wide/16 v4, 0xfa0

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 798
    const/4 v3, 0x0

    aget-object v3, v0, v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 799
    :catch_0
    move-exception v1

    .line 800
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not complete the capture of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 805
    .end local v0    # "cache":[Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_0
    return-object v6
.end method

.method private static profile(Landroid/view/View;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-static {p0, p2}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 505
    .local v3, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 507
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v5, 0x8000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    if-eqz v3, :cond_2

    .line 510
    :try_start_1
    invoke-static {v3, v2}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V

    .line 515
    :goto_0
    const-string/jumbo v4, "DONE."

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 520
    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    move-object v1, v2

    .line 502
    .end local v2    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 512
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_2
    const-string/jumbo v4, "-1 -1 -1"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 518
    .end local v2    # "out":Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string/jumbo v4, "View"

    const-string/jumbo v5, "Problem profiling the view:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 520
    if-eqz v1, :cond_1

    .line 521
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 519
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 520
    :goto_3
    if-eqz v1, :cond_3

    .line 521
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 519
    :cond_3
    throw v4

    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v1, "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 517
    .local v1, "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method public static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 528
    return-void
.end method

.method private static profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V
    .locals 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    .line 536
    if-nez p2, :cond_0

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_3

    .line 537
    :cond_0
    new-instance v9, Landroid/view/ViewDebug$2;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$2;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v6

    .line 563
    .local v6, "durationMeasure":J
    :goto_0
    if-nez p2, :cond_1

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_4

    .line 564
    :cond_1
    new-instance v9, Landroid/view/ViewDebug$3;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$3;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v4

    .line 577
    .local v4, "durationLayout":J
    :goto_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_5

    .line 578
    :cond_2
    new-instance v9, Landroid/view/ViewDebug$4;

    invoke-direct {v9, p0}, Landroid/view/ViewDebug$4;-><init>(Landroid/view/View;)V

    invoke-static {p0, v9}, Landroid/view/ViewDebug;->profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J

    move-result-wide v2

    .line 607
    .local v2, "durationDraw":J
    :goto_2
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p1, v11}, Ljava/io/BufferedWriter;->write(I)V

    .line 609
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1, v11}, Ljava/io/BufferedWriter;->write(I)V

    .line 611
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 613
    instance-of v9, p0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_6

    move-object v1, p0

    .line 614
    nop

    nop

    .line 615
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 616
    .local v0, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v0, :cond_6

    .line 617
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, p1, v10}, Landroid/view/ViewDebug;->profileViewAndChildren(Landroid/view/View;Ljava/io/BufferedWriter;Z)V

    .line 616
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 561
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "durationDraw":J
    .end local v4    # "durationLayout":J
    .end local v6    # "durationMeasure":J
    .end local v8    # "i":I
    :cond_3
    const-wide/16 v6, 0x0

    .restart local v6    # "durationMeasure":J
    goto :goto_0

    .line 575
    :cond_4
    const-wide/16 v4, 0x0

    .restart local v4    # "durationLayout":J
    goto :goto_1

    .line 606
    :cond_5
    const-wide/16 v2, 0x0

    .restart local v2    # "durationDraw":J
    goto :goto_2

    .line 533
    :cond_6
    return-void
.end method

.method private static profileViewOperation(Landroid/view/View;Landroid/view/ViewDebug$ViewOperation;)J
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Landroid/view/ViewDebug$ViewOperation",
            "<TT;>;)J"
        }
    .end annotation

    .prologue
    .local p1, "operation":Landroid/view/ViewDebug$ViewOperation;, "Landroid/view/ViewDebug$ViewOperation<TT;>;"
    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    .line 629
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 630
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v0, v3, [J

    .line 632
    .local v0, "duration":[J
    new-instance v3, Landroid/view/ViewDebug$5;

    invoke-direct {v3, v2, p1, v0}, Landroid/view/ViewDebug$5;-><init>(Ljava/util/concurrent/CountDownLatch;Landroid/view/ViewDebug$ViewOperation;[J)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 649
    const-wide/16 v4, 0xfa0

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 650
    const-string/jumbo v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not complete the profiling of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    return-wide v6

    .line 653
    :catch_0
    move-exception v1

    .line 654
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not complete the profiling of the view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 656
    return-wide v6

    .line 659
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v3, 0x0

    aget-wide v4, v0, v3

    return-wide v4
.end method

.method private static requestLayout(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->findView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 492
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 493
    new-instance v1, Landroid/view/ViewDebug$1;

    invoke-direct {v1, v0}, Landroid/view/ViewDebug$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 490
    :cond_0
    return-void
.end method

.method static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 1427
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1428
    .local v2, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 1430
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1431
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 1430
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1438
    .local v1, "fieldValue":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1432
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1433
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/view/ViewDebug;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    goto :goto_0

    .line 1436
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v1, "NO_ID"

    .restart local v1    # "fieldValue":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static setLayoutParameter(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1656
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1657
    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1658
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    .line 1659
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Only integer layout parameters can be set. Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1660
    const-string/jumbo v4, " is of type "

    .line 1659
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1660
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 1659
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1663
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1665
    new-instance v2, Landroid/view/ViewDebug$10;

    invoke-direct {v2, p0, v1}, Landroid/view/ViewDebug$10;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1655
    return-void
.end method

.method public static startHierarchyTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 424
    return-void
.end method

.method public static startRecyclerTracing(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    return-void
.end method

.method public static stopHierarchyTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 431
    return-void
.end method

.method public static stopRecyclerTracing()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 408
    return-void
.end method

.method public static trace(Landroid/view/View;Landroid/view/ViewDebug$HierarchyTraceType;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$HierarchyTraceType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 416
    return-void
.end method

.method public static varargs trace(Landroid/view/View;Landroid/view/ViewDebug$RecyclerTraceType;[I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Landroid/view/ViewDebug$RecyclerTraceType;
    .param p2, "parameters"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    return-void
.end method

.method private static writeEntry(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1348
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1351
    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1352
    invoke-static {p0, p4}, Landroid/view/ViewDebug;->writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V

    .line 1353
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 1346
    return-void
.end method

.method private static writeValue(Ljava/io/BufferedWriter;Ljava/lang/Object;)V
    .locals 4
    .param p0, "out"    # Ljava/io/BufferedWriter;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1442
    if-eqz p1, :cond_0

    .line 1443
    const-string/jumbo v0, "[EXCEPTION]"

    .line 1445
    .local v0, "output":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    const-string/jumbo v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1447
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1448
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1441
    .end local v0    # "output":Ljava/lang/String;
    :goto_0
    return-void

    .line 1446
    .restart local v0    # "output":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 1447
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1448
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1446
    throw v1

    .line 1452
    .end local v0    # "output":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "4,null"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
