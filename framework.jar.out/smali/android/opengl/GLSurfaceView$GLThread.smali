.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method static synthetic -set0(Landroid/opengl/GLSurfaceView$GLThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1242
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1823
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1243
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1244
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1245
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1246
    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1247
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1248
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1241
    return-void
.end method

.method private guardedRun()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1290
    new-instance v21, Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    .line 1291
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1292
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1293
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1296
    const/4 v10, 0x0

    .line 1297
    .local v10, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x0

    .line 1298
    .local v5, "createEglContext":Z
    const/4 v6, 0x0

    .line 1299
    .local v6, "createEglSurface":Z
    const/4 v7, 0x0

    .line 1300
    .local v7, "createGlInterface":Z
    const/4 v12, 0x0

    .line 1301
    .local v12, "lostEglContext":Z
    const/4 v15, 0x0

    .line 1302
    .local v15, "sizeChanged":Z
    const/16 v20, 0x0

    .line 1303
    .local v20, "wantRenderNotification":Z
    const/4 v8, 0x0

    .line 1304
    .local v8, "doRenderNotification":Z
    const/4 v4, 0x0

    .line 1305
    .local v4, "askedToReleaseEglContext":Z
    const/16 v19, 0x0

    .line 1306
    .local v19, "w":I
    const/4 v11, 0x0

    .line 1307
    .local v11, "h":I
    const/4 v9, 0x0

    .line 1310
    .end local v10    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1312
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    move/from16 v21, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v21, :cond_1

    :try_start_2
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1588
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    monitor-enter v22

    .line 1589
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1590
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v22

    .line 1313
    return-void

    .line 1588
    :catchall_0
    move-exception v21

    monitor-exit v22

    throw v21

    .line 1316
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_3

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Runnable;

    move-object v9, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_2
    :try_start_5
    monitor-exit v22

    .line 1476
    if-eqz v9, :cond_15

    .line 1477
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1478
    const/4 v9, 0x0

    .local v9, "event":Ljava/lang/Runnable;
    goto :goto_0

    .line 1322
    .end local v9    # "event":Ljava/lang/Runnable;
    :cond_3
    const/4 v13, 0x0

    .line 1323
    .local v13, "pausing":Z
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 1324
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1325
    .local v13, "pausing":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1326
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1333
    .end local v13    # "pausing":Z
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1337
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1338
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1339
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1340
    const/4 v4, 0x1

    .line 1344
    :cond_5
    if-eqz v12, :cond_6

    .line 1345
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1346
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1347
    const/4 v12, 0x0

    .line 1351
    :cond_6
    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 1355
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1359
    :cond_7
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/opengl/GLSurfaceView;

    .line 1361
    .local v18, "view":Landroid/opengl/GLSurfaceView;
    if-nez v18, :cond_f

    .line 1362
    const/4 v14, 0x0

    .line 1363
    .local v14, "preserveEglContextOnPause":Z
    :goto_3
    if-nez v14, :cond_8

    .line 1364
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1372
    .end local v14    # "preserveEglContextOnPause":Z
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 1385
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 1389
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1390
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1393
    :cond_a
    if-eqz v8, :cond_b

    .line 1397
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1398
    const/4 v8, 0x0

    .line 1399
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1400
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1404
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v21

    if-eqz v21, :cond_14

    .line 1407
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 1408
    if-eqz v4, :cond_12

    .line 1409
    const/4 v4, 0x0

    .line 1424
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 1431
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14

    .line 1432
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 1433
    const/4 v15, 0x1

    .line 1434
    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    move/from16 v19, v0

    .line 1435
    move-object/from16 v0, p0

    iget v11, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1436
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1444
    const/4 v6, 0x1

    .line 1446
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1448
    :cond_e
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1449
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1450
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 1451
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 1362
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_f
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get6(Landroid/opengl/GLSurfaceView;)Z

    move-result v14

    goto/16 :goto_3

    .line 1376
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 1377
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1379
    :cond_11
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1380
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1381
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_4

    .line 1310
    :catchall_1
    move-exception v21

    :try_start_7
    monitor-exit v22

    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1584
    :catchall_2
    move-exception v21

    .line 1588
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    monitor-enter v22

    .line 1589
    :try_start_8
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1590
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    monitor-exit v22

    .line 1584
    throw v21

    .line 1412
    :cond_12
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1417
    const/16 v21, 0x1

    :try_start_a
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1418
    const/4 v5, 0x1

    .line 1420
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    goto/16 :goto_5

    .line 1413
    :catch_0
    move-exception v17

    .line 1414
    .local v17, "t":Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1415
    throw v17

    .line 1425
    .end local v17    # "t":Ljava/lang/RuntimeException;
    :cond_13
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1426
    const/4 v6, 0x1

    .line 1427
    const/4 v7, 0x1

    .line 1428
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 1472
    :cond_14
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1482
    :cond_15
    if-eqz v6, :cond_16

    .line 1486
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 1487
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    monitor-enter v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1488
    const/16 v21, 0x1

    :try_start_c
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1489
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    monitor-exit v22

    .line 1499
    const/4 v6, 0x0

    .line 1502
    :cond_16
    if-eqz v7, :cond_17

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v10, v0

    .line 1505
    .local v10, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v7, 0x0

    .line 1508
    .end local v10    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_17
    if-eqz v5, :cond_19

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1513
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_18

    .line 1515
    :try_start_e
    const-string/jumbo v21, "onSurfaceCreated"

    const-wide/16 v22, 0x8

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1516
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v10, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1518
    const-wide/16 v22, 0x8

    :try_start_f
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1521
    :cond_18
    const/4 v5, 0x0

    .line 1524
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_19
    if-eqz v15, :cond_1b

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1529
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_1a

    .line 1531
    :try_start_10
    const-string/jumbo v21, "onSurfaceChanged"

    const-wide/16 v22, 0x8

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1532
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v10, v1, v11}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1534
    const-wide/16 v22, 0x8

    :try_start_11
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1537
    :cond_1a
    const/4 v15, 0x0

    .line 1544
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1545
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_1c

    .line 1547
    :try_start_12
    const-string/jumbo v21, "onDrawFrame"

    const-wide/16 v22, 0x8

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1548
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->-get7(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 1550
    const-wide/16 v22, 0x8

    :try_start_13
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1554
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()I

    move-result v16

    .line 1555
    .local v16, "swapError":I
    sparse-switch v16, :sswitch_data_0

    .line 1569
    const-string/jumbo v21, "GLThread"

    const-string/jumbo v22, "eglSwapBuffers"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1571
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    monitor-enter v22
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1572
    const/16 v21, 0x1

    :try_start_14
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1573
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :try_start_15
    monitor-exit v22

    .line 1578
    :goto_7
    :sswitch_0
    if-eqz v20, :cond_0

    .line 1579
    const/4 v8, 0x1

    .line 1580
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1487
    .end local v16    # "swapError":I
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_3
    move-exception v21

    monitor-exit v22

    throw v21

    .line 1492
    :cond_1d
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    monitor-enter v22
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1493
    const/16 v21, 0x1

    :try_start_16
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1494
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1495
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    monitor-exit v22

    goto/16 :goto_0

    .line 1492
    :catchall_4
    move-exception v21

    monitor-exit v22

    throw v21

    .line 1517
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_5
    move-exception v21

    .line 1518
    const-wide/16 v22, 0x8

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1517
    throw v21

    .line 1533
    :catchall_6
    move-exception v21

    .line 1534
    const-wide/16 v22, 0x8

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1533
    throw v21

    .line 1549
    :catchall_7
    move-exception v21

    .line 1550
    const-wide/16 v22, 0x8

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1549
    throw v21

    .line 1562
    .restart local v16    # "swapError":I
    :sswitch_1
    const/4 v12, 0x1

    .line 1563
    goto :goto_7

    .line 1571
    :catchall_8
    move-exception v21

    monitor-exit v22

    throw v21
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 1588
    .end local v16    # "swapError":I
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_9
    move-exception v21

    monitor-exit v22

    throw v21

    .line 1555
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1600
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 1601
    :cond_2
    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v2, :cond_0

    .line 1602
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v2, :cond_1

    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1283
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1286
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1282
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1272
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1273
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1274
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1271
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1596
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1616
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1617
    :try_start_0
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1616
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1693
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1697
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1698
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1699
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 1692
    return-void

    .line 1704
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1705
    :catch_0
    move-exception v0

    .line 1706
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1693
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1713
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1717
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1718
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1719
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1720
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1721
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 1712
    return-void

    .line 1726
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1727
    :catch_0
    move-exception v0

    .line 1728
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1713
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1735
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1736
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1737
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1738
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1739
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1740
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1747
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-ne v1, p0, :cond_0

    monitor-exit v2

    .line 1748
    return-void

    .line 1751
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1754
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :cond_1
    monitor-exit v2

    .line 1734
    return-void

    .line 1754
    :cond_2
    :try_start_2
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_1

    .line 1755
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 1754
    if-eqz v1, :cond_1

    .line 1760
    :try_start_3
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1735
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1794
    if-nez p1, :cond_0

    .line 1795
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1797
    :cond_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1798
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1799
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1793
    return-void

    .line 1797
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1771
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1772
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1773
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1774
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1776
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1777
    :catch_0
    move-exception v0

    .line 1778
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1771
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    .line 1768
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1785
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1786
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1784
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1622
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1623
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1624
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1621
    return-void

    .line 1622
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestRenderAndWait()V
    .locals 3

    .prologue
    .line 1629
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1634
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-ne v1, p0, :cond_0

    monitor-exit v2

    .line 1635
    return-void

    .line 1638
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1639
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1640
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1642
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1644
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :cond_1
    monitor-exit v2

    .line 1628
    return-void

    .line 1644
    :cond_2
    :try_start_2
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1646
    :try_start_3
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1647
    :catch_0
    move-exception v0

    .line 1648
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1629
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GLThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1259
    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1252
    :goto_0
    return-void

    .line 1260
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    goto :goto_0

    .line 1262
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 1263
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1262
    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1606
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1607
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1609
    :cond_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1610
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1611
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1605
    return-void

    .line 1609
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1656
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1660
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1661
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1662
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1663
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    .line 1664
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 1655
    return-void

    .line 1665
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 1667
    :try_start_2
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1668
    :catch_0
    move-exception v0

    .line 1669
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1656
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1676
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1680
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1681
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    .line 1682
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 1675
    return-void

    .line 1684
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-get8()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1676
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
