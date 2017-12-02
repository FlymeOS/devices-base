.class public final Landroid/view/accessibility/AccessibilityWindowInfo;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityWindowInfo$1;
    }
.end annotation


# static fields
.field private static final BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x4

.field private static final BOOLEAN_PROPERTY_ACTIVE:I = 0x1

.field private static final BOOLEAN_PROPERTY_FOCUSED:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final TYPE_SYSTEM:I = 0x3

.field private static final UNDEFINED:I = -0x1

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnchorId:I

.field private mBooleanProperties:I

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildIds:Landroid/util/LongArray;

.field private mConnectionId:I

.field private mId:I

.field private mLayer:I

.field private mParentId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mType:I


# direct methods
.method static synthetic -wrap0(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 82
    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 668
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo$1;-><init>()V

    .line 667
    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 87
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 89
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 90
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 94
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    .line 96
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 98
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 566
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 567
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 568
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 569
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 570
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 571
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 572
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    .line 575
    :cond_0
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 576
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    .line 577
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 565
    return-void
.end method

.method private getBooleanProperty(I)Z
    .locals 2
    .param p1, "property"    # I

    .prologue
    const/4 v0, 0x0

    .line 587
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 488
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 493
    .local v0, "childCount":I
    if-lez v0, :cond_1

    .line 494
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v3, :cond_0

    .line 495
    new-instance v3, Landroid/util/LongArray;

    invoke-direct {v3, v0}, Landroid/util/LongArray;-><init>(I)V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 497
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 499
    .local v1, "childId":I
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/LongArray;->add(J)V

    .line 497
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    .end local v1    # "childId":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 482
    return-void
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 2

    .prologue
    .line 399
    sget-object v1, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 400
    .local v0, "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v0, :cond_0

    .line 401
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>()V

    .line 403
    .restart local v0    # "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_0
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .prologue
    .line 415
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    .line 417
    .local v0, "infoClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 418
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 419
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 420
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 421
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 422
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 423
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 424
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    .line 426
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 427
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v1, :cond_1

    .line 428
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v1

    iput-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 434
    :cond_0
    :goto_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iput v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 436
    return-object v0

    .line 430
    :cond_1
    iget-object v1, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v1, v2}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    goto :goto_0
.end method

.method private setBooleanProperty(IZ)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .prologue
    .line 599
    if-eqz p2, :cond_0

    .line 600
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 598
    :goto_0
    return-void

    .line 602
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    goto :goto_0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 607
    packed-switch p0, :pswitch_data_0

    .line 624
    const-string/jumbo v0, "<UNKNOWN>"

    return-object v0

    .line 609
    :pswitch_0
    const-string/jumbo v0, "TYPE_APPLICATION"

    return-object v0

    .line 612
    :pswitch_1
    const-string/jumbo v0, "TYPE_INPUT_METHOD"

    return-object v0

    .line 615
    :pswitch_2
    const-string/jumbo v0, "TYPE_SYSTEM"

    return-object v0

    .line 618
    :pswitch_3
    const-string/jumbo v0, "TYPE_ACCESSIBILITY_OVERLAY"

    return-object v0

    .line 621
    :pswitch_4
    const-string/jumbo v0, "TYPE_SPLIT_SCREEN_DIVIDER"

    return-object v0

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addChild(I)V
    .locals 4
    .param p1, "childId"    # I

    .prologue
    .line 386
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 389
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->add(J)V

    .line 385
    return-void
.end method

.method public changed(Landroid/view/accessibility/AccessibilityWindowInfo;)Z
    .locals 3
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .prologue
    const/4 v2, 0x1

    .line 639
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-eq v0, v1, :cond_0

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not same window."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_0
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    if-eq v0, v1, :cond_1

    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 646
    return v2

    .line 648
    :cond_2
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iget v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    if-eq v0, v1, :cond_3

    .line 649
    return v2

    .line 651
    :cond_3
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iget v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    if-eq v0, v1, :cond_4

    .line 652
    return v2

    .line 654
    :cond_4
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-eq v0, v1, :cond_5

    .line 655
    return v2

    .line 657
    :cond_5
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_6

    .line 658
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_7

    .line 659
    return v2

    .line 661
    :cond_6
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 662
    return v2

    .line 664
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 513
    if-ne p0, p1, :cond_0

    .line 514
    return v1

    .line 516
    :cond_0
    if-nez p1, :cond_1

    .line 517
    return v2

    .line 519
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 520
    return v2

    :cond_2
    move-object v0, p1

    .line 522
    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 523
    .local v0, "other":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v4, v0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 202
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    if-ne v0, v2, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 202
    :cond_1
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-eq v0, v2, :cond_0

    .line 206
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 207
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 208
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    int-to-long v4, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 207
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 273
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 272
    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 367
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v2, :cond_0

    .line 368
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 370
    :cond_0
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 371
    return-object v4

    .line 373
    :cond_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v2, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 374
    .local v0, "childId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 375
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {v1, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    return-object v2
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    return v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 217
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-ne v1, v2, :cond_1

    .line 218
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 220
    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 221
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    return-object v1
.end method

.method public getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    .prologue
    .line 176
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 177
    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 180
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 181
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 182
    const/4 v6, 0x1

    const/4 v7, 0x4

    .line 180
    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 448
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->clear()V

    .line 449
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 447
    return-void
.end method

.method public setAccessibilityFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .prologue
    .line 348
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 347
    return-void
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 308
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 307
    return-void
.end method

.method public setAnchorId(I)V
    .locals 0
    .param p1, "anchorId"    # I

    .prologue
    .line 193
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    .line 192
    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 284
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 283
    return-void
.end method

.method public setConnectionId(I)V
    .locals 0
    .param p1, "connectionId"    # I

    .prologue
    .line 264
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 263
    return-void
.end method

.method public setFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .prologue
    .line 328
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 327
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 252
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 251
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .prologue
    .line 167
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 166
    return-void
.end method

.method public setParentId(I)V
    .locals 0
    .param p1, "parentId"    # I

    .prologue
    .line 232
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 231
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 120
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 119
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 145
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "AccessibilityWindowInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 531
    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string/jumbo v1, ", layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    const-string/jumbo v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 535
    const-string/jumbo v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 536
    const-string/jumbo v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 553
    const-string/jumbo v1, ", hasParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-eq v1, v5, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 554
    const-string/jumbo v1, ", isAnchored="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    if-eq v1, v5, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 555
    const-string/jumbo v1, ", hasChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v4, :cond_0

    .line 556
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v3, v2

    .line 555
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 558
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    move v1, v3

    .line 553
    goto :goto_0

    :cond_2
    move v1, v3

    .line 554
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 459
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 465
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 466
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 469
    .local v1, "childIds":Landroid/util/LongArray;
    if-nez v1, :cond_1

    .line 470
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    :cond_0
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    return-void

    .line 472
    :cond_1
    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v0

    .line 473
    .local v0, "childCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 475
    invoke-virtual {v1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
