.class Landroid/media/ImageReader$SurfaceImage;
.super Landroid/media/Image;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private mFormat:I

.field private mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNativeBuffer:J

.field private mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

.field private mTimestamp:J

.field final synthetic this$0:Landroid/media/ImageReader;


# direct methods
.method static synthetic -wrap0(Landroid/media/ImageReader$SurfaceImage;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->clearSurfacePlanes()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/ImageReader$SurfaceImage;Z)V
    .locals 0
    .param p1, "detached"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/media/ImageReader$SurfaceImage;->setDetached(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/media/ImageReader;I)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/ImageReader;
    .param p2, "format"    # I

    .prologue
    const/4 v1, 0x0

    .line 693
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 887
    iput v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 889
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 694
    iput p2, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 693
    return-void
.end method

.method private clearSurfacePlanes()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 805
    iget-boolean v1, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    if-eqz v1, :cond_1

    .line 806
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 807
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->-wrap0(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    .line 809
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aput-object v2, v1, v0

    .line 806
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private synchronized native declared-synchronized nativeCreatePlanes(II)[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.end method

.method private synchronized native declared-synchronized nativeGetFormat(I)I
.end method

.method private synchronized native declared-synchronized nativeGetHeight()I
.end method

.method private synchronized native declared-synchronized nativeGetWidth()I
.end method

.method private setDetached(Z)V
    .locals 1
    .param p1, "detached"    # Z

    .prologue
    .line 799
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 800
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 798
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v0, p0}, Landroid/media/ImageReader;->-wrap0(Landroid/media/ImageReader;Landroid/media/Image;)V

    .line 698
    return-void
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 774
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-super {p0}, Landroid/media/Image;->finalize()V

    .line 772
    return-void

    .line 775
    :catchall_0
    move-exception v0

    .line 776
    invoke-super {p0}, Landroid/media/Image;->finalize()V

    .line 775
    throw v0
.end method

.method public getFormat()I
    .locals 2

    .prologue
    .line 708
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 709
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    .line 711
    .local v0, "readerFormat":I
    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .end local v0    # "readerFormat":I
    :goto_0
    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 713
    iget v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    return v1

    .line 712
    .restart local v0    # "readerFormat":I
    :cond_0
    invoke-direct {p0, v0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetFormat(I)I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 734
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 736
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 743
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetHeight()I

    move-result v0

    .line 745
    .local v0, "height":I
    :goto_0
    return v0

    .line 740
    .end local v0    # "height":I
    :sswitch_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0

    .line 736
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
    .end sparse-switch
.end method

.method getNativeContext()J
    .locals 2

    .prologue
    .line 794
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 795
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mNativeBuffer:J

    return-wide v0
.end method

.method getOwner()Landroid/media/ImageReader;
    .locals 1

    .prologue
    .line 788
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 789
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    return-object v0
.end method

.method bridge synthetic getOwner()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 787
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getOwner()Landroid/media/ImageReader;

    move-result-object v0

    return-object v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    .prologue
    .line 762
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 764
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v0}, Landroid/media/ImageReader;->-get5(Landroid/media/ImageReader;)I

    move-result v0

    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v1}, Landroid/media/ImageReader;->-get1(Landroid/media/ImageReader;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/ImageReader$SurfaceImage;->nativeCreatePlanes(II)[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    .line 768
    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public getReader()Landroid/media/ImageReader;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 750
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 751
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 718
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 720
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 727
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetWidth()I

    move-result v0

    .line 729
    .local v0, "width":I
    :goto_0
    return v0

    .line 724
    .end local v0    # "width":I
    :sswitch_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    .restart local v0    # "width":I
    goto :goto_0

    .line 720
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
    .end sparse-switch
.end method

.method isAttachable()Z
    .locals 1

    .prologue
    .line 782
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 783
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestampNs"    # J

    .prologue
    .line 756
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 757
    iput-wide p1, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    .line 755
    return-void
.end method
