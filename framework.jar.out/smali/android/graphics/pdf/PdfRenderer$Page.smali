.class public final Landroid/graphics/pdf/PdfRenderer$Page;
.super Ljava/lang/Object;
.source "PdfRenderer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Page"
.end annotation


# static fields
.field public static final RENDER_MODE_FOR_DISPLAY:I = 0x1

.field public static final RENDER_MODE_FOR_PRINT:I = 0x2


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mHeight:I

.field private final mIndex:I

.field private mNativePage:J

.field private final mWidth:I

.field final synthetic this$0:Landroid/graphics/pdf/PdfRenderer;


# direct methods
.method private constructor <init>(Landroid/graphics/pdf/PdfRenderer;I)V
    .locals 6
    .param p1, "this$0"    # Landroid/graphics/pdf/PdfRenderer;
    .param p2, "index"    # I

    .prologue
    .line 293
    iput-object p1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 294
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->-get1(Landroid/graphics/pdf/PdfRenderer;)Landroid/graphics/Point;

    move-result-object v0

    .line 295
    .local v0, "size":Landroid/graphics/Point;
    sget-object v2, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v2

    .line 296
    :try_start_0
    invoke-static {p1}, Landroid/graphics/pdf/PdfRenderer;->-get0(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v4

    invoke-static {v4, v5, p2, v0}, Landroid/graphics/pdf/PdfRenderer;->-wrap0(JILandroid/graphics/Point;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 298
    iput p2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    .line 299
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    .line 300
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    .line 301
    iget-object v1, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 293
    return-void

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method synthetic constructor <init>(Landroid/graphics/pdf/PdfRenderer;ILandroid/graphics/pdf/PdfRenderer$Page;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/pdf/PdfRenderer;
    .param p2, "index"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfRenderer$Page;-><init>(Landroid/graphics/pdf/PdfRenderer;I)V

    return-void
.end method

.method private doClose()V
    .locals 4

    .prologue
    .line 434
    sget-object v1, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-wide v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    invoke-static {v2, v3}, Landroid/graphics/pdf/PdfRenderer;->-wrap1(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 437
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    .line 438
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 439
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->-set0(Landroid/graphics/pdf/PdfRenderer;Landroid/graphics/pdf/PdfRenderer$Page;)Landroid/graphics/pdf/PdfRenderer$Page;

    .line 433
    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private throwIfClosed()V
    .locals 4

    .prologue
    .line 443
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->throwIfClosed()V

    .line 418
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V

    .line 416
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 424
    :try_start_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 425
    iget-wide v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 422
    return-void

    .line 428
    :catchall_0
    move-exception v0

    .line 429
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 428
    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mHeight:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mIndex:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mWidth:I

    return v0
.end method

.method public render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V
    .locals 15
    .param p1, "destination"    # Landroid/graphics/Bitmap;
    .param p2, "destClip"    # Landroid/graphics/Rect;
    .param p3, "transform"    # Landroid/graphics/Matrix;
    .param p4, "renderMode"    # I

    .prologue
    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_0

    .line 372
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unsupported pixel format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_0
    if-eqz p2, :cond_3

    .line 376
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_1

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_2

    .line 379
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "destBounds not in destination"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 378
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 383
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Matrix;->isAffine()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 387
    :cond_4
    const/4 v2, 0x2

    move/from16 v0, p4

    if-eq v0, v2, :cond_6

    const/4 v2, 0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_6

    .line 388
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unsupported render mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "transform not affine"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_7

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_7

    .line 392
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Only single render mode supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 395
    :cond_7
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 396
    .local v7, "contentLeft":I
    :goto_0
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 397
    .local v8, "contentTop":I
    :goto_1
    if-eqz p2, :cond_a

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .line 399
    .local v9, "contentRight":I
    :goto_2
    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 402
    .local v10, "contentBottom":I
    :goto_3
    if-eqz p3, :cond_c

    move-object/from16 v0, p3

    iget-wide v11, v0, Landroid/graphics/Matrix;->native_instance:J

    .line 404
    .local v11, "transformPtr":J
    :goto_4
    sget-object v14, Landroid/graphics/pdf/PdfRenderer;->sPdfiumLock:Ljava/lang/Object;

    monitor-enter v14

    .line 405
    :try_start_0
    iget-object v2, p0, Landroid/graphics/pdf/PdfRenderer$Page;->this$0:Landroid/graphics/pdf/PdfRenderer;

    invoke-static {v2}, Landroid/graphics/pdf/PdfRenderer;->-get0(Landroid/graphics/pdf/PdfRenderer;)J

    move-result-wide v2

    iget-wide v4, p0, Landroid/graphics/pdf/PdfRenderer$Page;->mNativePage:J

    move-object/from16 v6, p1

    move/from16 v13, p4

    invoke-static/range {v2 .. v13}, Landroid/graphics/pdf/PdfRenderer;->-wrap2(JJLandroid/graphics/Bitmap;IIIIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    .line 370
    return-void

    .line 395
    .end local v7    # "contentLeft":I
    .end local v8    # "contentTop":I
    .end local v9    # "contentRight":I
    .end local v10    # "contentBottom":I
    .end local v11    # "transformPtr":J
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "contentLeft":I
    goto :goto_0

    .line 396
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "contentTop":I
    goto :goto_1

    .line 398
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .restart local v9    # "contentRight":I
    goto :goto_2

    .line 400
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .restart local v10    # "contentBottom":I
    goto :goto_3

    .line 402
    :cond_c
    const-wide/16 v11, 0x0

    .restart local v11    # "transformPtr":J
    goto :goto_4

    .line 404
    :catchall_0
    move-exception v2

    monitor-exit v14

    throw v2
.end method
