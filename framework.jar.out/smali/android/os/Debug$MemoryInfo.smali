.class public Landroid/os/Debug$MemoryInfo;
.super Ljava/lang/Object;
.source "Debug.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Debug$MemoryInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Debug$MemoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEAP_DALVIK:I = 0x1

.field public static final HEAP_NATIVE:I = 0x2

.field public static final HEAP_UNKNOWN:I = 0x0

.field public static final NUM_CATEGORIES:I = 0x8

.field public static final NUM_DVK_STATS:I = 0x8

.field public static final NUM_OTHER_STATS:I = 0x11

.field public static final OTHER_APK:I = 0x8

.field public static final OTHER_ART:I = 0xc

.field public static final OTHER_ASHMEM:I = 0x3

.field public static final OTHER_CURSOR:I = 0x2

.field public static final OTHER_DALVIK_ACCOUNTING:I = 0x14

.field public static final OTHER_DALVIK_CODE_CACHE:I = 0x15

.field public static final OTHER_DALVIK_INDIRECT_REFERENCE_TABLE:I = 0x18

.field public static final OTHER_DALVIK_LARGE:I = 0x12

.field public static final OTHER_DALVIK_LINEARALLOC:I = 0x13

.field public static final OTHER_DALVIK_NON_MOVING:I = 0x17

.field public static final OTHER_DALVIK_NORMAL:I = 0x11

.field public static final OTHER_DALVIK_OTHER:I = 0x0

.field public static final OTHER_DALVIK_ZYGOTE:I = 0x16

.field public static final OTHER_DEX:I = 0xa

.field public static final OTHER_GL:I = 0xf

.field public static final OTHER_GL_DEV:I = 0x4

.field public static final OTHER_GRAPHICS:I = 0xe

.field public static final OTHER_JAR:I = 0x7

.field public static final OTHER_OAT:I = 0xb

.field public static final OTHER_OTHER_MEMTRACK:I = 0x10

.field public static final OTHER_SO:I = 0x6

.field public static final OTHER_STACK:I = 0x1

.field public static final OTHER_TTF:I = 0x9

.field public static final OTHER_UNKNOWN_DEV:I = 0x5

.field public static final OTHER_UNKNOWN_MAP:I = 0xd

.field public static final offsetPrivateClean:I = 0x4

.field public static final offsetPrivateDirty:I = 0x2

.field public static final offsetPss:I = 0x0

.field public static final offsetSharedClean:I = 0x5

.field public static final offsetSharedDirty:I = 0x3

.field public static final offsetSwappablePss:I = 0x1

.field public static final offsetSwappedOut:I = 0x6

.field public static final offsetSwappedOutPss:I = 0x7


# instance fields
.field public dalvikPrivateClean:I

.field public dalvikPrivateDirty:I

.field public dalvikPss:I

.field public dalvikSharedClean:I

.field public dalvikSharedDirty:I

.field public dalvikSwappablePss:I

.field public dalvikSwappedOut:I

.field public dalvikSwappedOutPss:I

.field public hasSwappedOutPss:Z

.field public nativePrivateClean:I

.field public nativePrivateDirty:I

.field public nativePss:I

.field public nativeSharedClean:I

.field public nativeSharedDirty:I

.field public nativeSwappablePss:I

.field public nativeSwappedOut:I

.field public nativeSwappedOutPss:I

.field public otherPrivateClean:I

.field public otherPrivateDirty:I

.field public otherPss:I

.field public otherSharedClean:I

.field public otherSharedDirty:I

.field private otherStats:[I

.field public otherSwappablePss:I

.field public otherSwappedOut:I

.field public otherSwappedOutPss:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 746
    new-instance v0, Landroid/os/Debug$MemoryInfo$1;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo$1;-><init>()V

    sput-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/16 v0, 0xc8

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    .line 269
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/16 v0, 0xc8

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    .line 756
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 755
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/Debug$MemoryInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/Debug$MemoryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getOtherLabel(I)Ljava/lang/String;
    .locals 1
    .param p0, "which"    # I

    .prologue
    .line 389
    packed-switch p0, :pswitch_data_0

    .line 415
    const-string/jumbo v0, "????"

    return-object v0

    .line 390
    :pswitch_0
    const-string/jumbo v0, "Dalvik Other"

    return-object v0

    .line 391
    :pswitch_1
    const-string/jumbo v0, "Stack"

    return-object v0

    .line 392
    :pswitch_2
    const-string/jumbo v0, "Cursor"

    return-object v0

    .line 393
    :pswitch_3
    const-string/jumbo v0, "Ashmem"

    return-object v0

    .line 394
    :pswitch_4
    const-string/jumbo v0, "Gfx dev"

    return-object v0

    .line 395
    :pswitch_5
    const-string/jumbo v0, "Other dev"

    return-object v0

    .line 396
    :pswitch_6
    const-string/jumbo v0, ".so mmap"

    return-object v0

    .line 397
    :pswitch_7
    const-string/jumbo v0, ".jar mmap"

    return-object v0

    .line 398
    :pswitch_8
    const-string/jumbo v0, ".apk mmap"

    return-object v0

    .line 399
    :pswitch_9
    const-string/jumbo v0, ".ttf mmap"

    return-object v0

    .line 400
    :pswitch_a
    const-string/jumbo v0, ".dex mmap"

    return-object v0

    .line 401
    :pswitch_b
    const-string/jumbo v0, ".oat mmap"

    return-object v0

    .line 402
    :pswitch_c
    const-string/jumbo v0, ".art mmap"

    return-object v0

    .line 403
    :pswitch_d
    const-string/jumbo v0, "Other mmap"

    return-object v0

    .line 404
    :pswitch_e
    const-string/jumbo v0, "EGL mtrack"

    return-object v0

    .line 405
    :pswitch_f
    const-string/jumbo v0, "GL mtrack"

    return-object v0

    .line 406
    :pswitch_10
    const-string/jumbo v0, "Other mtrack"

    return-object v0

    .line 407
    :pswitch_11
    const-string/jumbo v0, ".Heap"

    return-object v0

    .line 408
    :pswitch_12
    const-string/jumbo v0, ".LOS"

    return-object v0

    .line 409
    :pswitch_13
    const-string/jumbo v0, ".LinearAlloc"

    return-object v0

    .line 410
    :pswitch_14
    const-string/jumbo v0, ".GC"

    return-object v0

    .line 411
    :pswitch_15
    const-string/jumbo v0, ".JITCache"

    return-object v0

    .line 412
    :pswitch_16
    const-string/jumbo v0, ".Zygote"

    return-object v0

    .line 413
    :pswitch_17
    const-string/jumbo v0, ".NonMoving"

    return-object v0

    .line 414
    :pswitch_18
    const-string/jumbo v0, ".IndirectRef"

    return-object v0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public getMemoryStat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "statName"    # Ljava/lang/String;

    .prologue
    .line 501
    const-string/jumbo v0, "summary.java-heap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :cond_0
    const-string/jumbo v0, "summary.native-heap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :cond_1
    const-string/jumbo v0, "summary.code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :cond_2
    const-string/jumbo v0, "summary.stack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 509
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :cond_3
    const-string/jumbo v0, "summary.graphics"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 511
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :cond_4
    const-string/jumbo v0, "summary.private-other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 513
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :cond_5
    const-string/jumbo v0, "summary.system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 515
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :cond_6
    const-string/jumbo v0, "summary.total-pss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 517
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :cond_7
    const-string/jumbo v0, "summary.total-swap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 519
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 521
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMemoryStats()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 533
    .local v0, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "summary.java-heap"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string/jumbo v1, "summary.native-heap"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string/jumbo v1, "summary.code"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string/jumbo v1, "summary.stack"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string/jumbo v1, "summary.graphics"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string/jumbo v1, "summary.private-other"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string/jumbo v1, "summary.system"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string/jumbo v1, "summary.total-pss"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string/jumbo v1, "summary.total-swap"

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-object v0
.end method

.method public getOtherPrivate(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOtherPrivateClean(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 364
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getOtherPrivateDirty(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 354
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getOtherPss(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 342
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getOtherSharedClean(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 374
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getOtherSharedDirty(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 359
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getOtherSwappablePss(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 348
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getOtherSwappedOut(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 379
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public getOtherSwappedOutPss(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 384
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public getSummaryCode()I
    .locals 2

    .prologue
    .line 581
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v0

    .line 582
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    .line 581
    add-int/2addr v0, v1

    .line 583
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    .line 581
    add-int/2addr v0, v1

    .line 584
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    .line 581
    add-int/2addr v0, v1

    .line 585
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    .line 581
    add-int/2addr v0, v1

    .line 586
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    .line 581
    add-int/2addr v0, v1

    return v0
.end method

.method public getSummaryGraphics()I
    .locals 2

    .prologue
    .line 614
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v0

    .line 615
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    .line 614
    add-int/2addr v0, v1

    .line 616
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    .line 614
    add-int/2addr v0, v1

    return v0
.end method

.method public getSummaryJavaHeap()I
    .locals 2

    .prologue
    .line 560
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSummaryNativeHeap()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    return v0
.end method

.method public getSummaryPrivateOther()I
    .locals 2

    .prologue
    .line 625
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v0

    .line 626
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 627
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v1

    .line 625
    sub-int/2addr v0, v1

    .line 628
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v1

    .line 625
    sub-int/2addr v0, v1

    .line 629
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v1

    .line 625
    sub-int/2addr v0, v1

    .line 630
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v1

    .line 625
    sub-int/2addr v0, v1

    .line 631
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v1

    .line 625
    sub-int/2addr v0, v1

    return v0
.end method

.method public getSummaryStack()I
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v0

    return v0
.end method

.method public getSummarySystem()I
    .locals 2

    .prologue
    .line 641
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    .line 642
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v1

    .line 641
    sub-int/2addr v0, v1

    .line 643
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v1

    .line 641
    sub-int/2addr v0, v1

    return v0
.end method

.method public getSummaryTotalPss()I
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    return v0
.end method

.method public getSummaryTotalSwap()I
    .locals 1

    .prologue
    .line 666
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v0

    return v0
.end method

.method public getSummaryTotalSwapPss()I
    .locals 1

    .prologue
    .line 676
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v0

    return v0
.end method

.method public getTotalPrivateClean()I
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPrivateDirty()I
    .locals 2

    .prologue
    .line 300
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPss()I
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalSharedClean()I
    .locals 2

    .prologue
    .line 321
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalSharedDirty()I
    .locals 2

    .prologue
    .line 307
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalSwappablePss()I
    .locals 2

    .prologue
    .line 293
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalSwappedOut()I
    .locals 2

    .prologue
    .line 329
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalSwappedOutPss()I
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalUss()I
    .locals 2

    .prologue
    .line 283
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    add-int/2addr v0, v1

    .line 284
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 283
    add-int/2addr v0, v1

    .line 284
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 283
    add-int/2addr v0, v1

    .line 285
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 283
    add-int/2addr v0, v1

    .line 285
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 283
    add-int/2addr v0, v1

    return v0
.end method

.method public hasSwappedOutPss()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    .line 726
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    .line 731
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    .line 733
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 734
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 736
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    .line 719
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 693
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    iget-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 692
    return-void

    .line 714
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
