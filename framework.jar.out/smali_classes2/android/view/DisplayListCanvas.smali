.class public Landroid/view/DisplayListCanvas;
.super Landroid/graphics/Canvas;
.source "DisplayListCanvas.java"


# static fields
.field private static final MAX_BITMAP_SIZE:I = 0x6400000

.field private static final POOL_LIMIT:I = 0x19

.field private static sIsAvailable:Z

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/DisplayListCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHeight:I

.field mNode:Landroid/view/RenderNode;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 42
    sput-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 82
    invoke-static {}, Landroid/view/DisplayListCanvas;->nIsAvailable()Z

    move-result v0

    sput-boolean v0, Landroid/view/DisplayListCanvas;->sIsAvailable:Z

    .line 35
    return-void
.end method

.method private constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 93
    invoke-static {p1, p2}, Landroid/view/DisplayListCanvas;->nCreateDisplayListCanvas(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Canvas;-><init>(J)V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/DisplayListCanvas;->mDensity:I

    .line 92
    return-void
.end method

.method static isAvailable()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Landroid/view/DisplayListCanvas;->sIsAvailable:Z

    return v0
.end method

.method private static native nCallDrawGLFunction(JJLjava/lang/Runnable;)V
.end method

.method private static native nCreateDisplayListCanvas(II)J
.end method

.method private static native nDrawCircle(JJJJJ)V
.end method

.method private static native nDrawLayer(JJ)V
.end method

.method private static native nDrawRenderNode(JJ)V
.end method

.method private static native nDrawRoundRect(JJJJJJJJ)V
.end method

.method protected static native nFinishRecording(J)J
.end method

.method private static native nGetMaximumTextureHeight()I
.end method

.method private static native nGetMaximumTextureWidth()I
.end method

.method private static native nInsertReorderBarrier(JZ)V
.end method

.method private static native nIsAvailable()Z
.end method

.method private static native nResetDisplayListCanvas(JII)V
.end method

.method static obtain(Landroid/view/RenderNode;II)Landroid/view/DisplayListCanvas;
    .locals 4
    .param p0, "node"    # Landroid/view/RenderNode;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 50
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "node cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    sget-object v1, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 52
    .local v0, "canvas":Landroid/view/DisplayListCanvas;
    if-nez v0, :cond_1

    .line 53
    new-instance v0, Landroid/view/DisplayListCanvas;

    .end local v0    # "canvas":Landroid/view/DisplayListCanvas;
    invoke-direct {v0, p1, p2}, Landroid/view/DisplayListCanvas;-><init>(II)V

    .line 57
    .restart local v0    # "canvas":Landroid/view/DisplayListCanvas;
    :goto_0
    iput-object p0, v0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    .line 58
    iput p1, v0, Landroid/view/DisplayListCanvas;->mWidth:I

    .line 59
    iput p2, v0, Landroid/view/DisplayListCanvas;->mHeight:I

    .line 60
    return-object v0

    .line 55
    :cond_1
    iget-wide v2, v0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-static {v2, v3, p1, p2}, Landroid/view/DisplayListCanvas;->nResetDisplayListCanvas(JII)V

    goto :goto_0
.end method


# virtual methods
.method public callDrawGLFunction2(J)V
    .locals 3
    .param p1, "drawGLFunction"    # J

    .prologue
    .line 175
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/view/DisplayListCanvas;->nCallDrawGLFunction(JJLjava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "cx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "cy":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "radius":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    .line 237
    invoke-virtual {p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    invoke-virtual {p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    .line 236
    invoke-static/range {v0 .. v9}, Landroid/view/DisplayListCanvas;->nDrawCircle(JJJJJ)V

    .line 235
    return-void
.end method

.method public drawGLFunctor2(JLjava/lang/Runnable;)V
    .locals 3
    .param p1, "drawGLFunctor"    # J
    .param p3, "releasedCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 191
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/DisplayListCanvas;->nCallDrawGLFunction(JJLjava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method drawHardwareLayer(Landroid/view/HardwareLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 225
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getLayerHandle()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->nDrawLayer(JJ)V

    .line 224
    return-void
.end method

.method public drawRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "renderNode"    # Landroid/view/RenderNode;

    .prologue
    .line 210
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->nDrawRenderNode(JJ)V

    .line 209
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "left":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "top":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "right":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "bottom":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p5, "rx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p6, "ry":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p7, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v10

    .line 248
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v12

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v14

    .line 249
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v16

    .line 246
    invoke-static/range {v2 .. v17}, Landroid/view/DisplayListCanvas;->nDrawRoundRect(JJJJJJJJ)V

    .line 245
    return-void
.end method

.method finishRecording()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/view/DisplayListCanvas;->nFinishRecording(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/view/DisplayListCanvas;->mHeight:I

    return v0
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Landroid/view/DisplayListCanvas;->nGetMaximumTextureHeight()I

    move-result v0

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Landroid/view/DisplayListCanvas;->nGetMaximumTextureWidth()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Landroid/view/DisplayListCanvas;->mWidth:I

    return v0
.end method

.method public insertInorderBarrier()V
    .locals 3

    .prologue
    .line 159
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/DisplayListCanvas;->nInsertReorderBarrier(JZ)V

    .line 158
    return-void
.end method

.method public insertReorderBarrier()V
    .locals 3

    .prologue
    .line 154
    iget-wide v0, p0, Landroid/view/DisplayListCanvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/view/DisplayListCanvas;->nInsertReorderBarrier(JZ)V

    .line 153
    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isRecordingFor(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method recycle()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    .line 65
    sget-object v0, Landroid/view/DisplayListCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .prologue
    .line 106
    return-void
.end method

.method protected throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 259
    .local v0, "bitmapSize":I
    const/high16 v1, 0x6400000

    if-le v0, v1, :cond_0

    .line 260
    new-instance v1, Ljava/lang/RuntimeException;

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Canvas: trying to draw too large("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "bytes) bitmap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_0
    return-void
.end method
