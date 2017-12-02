.class Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.super Landroid/media/Image$Plane;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader$SurfaceImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfacePlane"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mPixelStride:I

.field private final mRowStride:I

.field final synthetic this$1:Landroid/media/ImageReader$SurfaceImage;


# direct methods
.method static synthetic -wrap0(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clearBuffer()V

    return-void
.end method

.method private constructor <init>(Landroid/media/ImageReader$SurfaceImage;IILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$1"    # Landroid/media/ImageReader$SurfaceImage;
    .param p2, "rowStride"    # I
    .param p3, "pixelStride"    # I
    .param p4, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 818
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    .line 819
    iput p2, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    .line 820
    iput p3, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    .line 821
    iput-object p4, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 827
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 818
    return-void
.end method

.method private clearBuffer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 859
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 860
    return-void

    .line 863
    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 866
    :cond_1
    iput-object v1, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 856
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 833
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPixelStride()I
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 839
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    iget-object v0, v0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v0}, Landroid/media/ImageReader;->-get1(Landroid/media/ImageReader;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 840
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 841
    const-string/jumbo v1, "getPixelStride is not supported for RAW_PRIVATE plane"

    .line 840
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_0
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    return v0
.end method

.method public getRowStride()I
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 849
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    iget-object v0, v0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v0}, Landroid/media/ImageReader;->-get1(Landroid/media/ImageReader;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 851
    const-string/jumbo v1, "getRowStride is not supported for RAW_PRIVATE plane"

    .line 850
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_0
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    return v0
.end method
