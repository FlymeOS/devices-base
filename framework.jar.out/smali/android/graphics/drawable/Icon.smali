.class public final Landroid/graphics/drawable/Icon;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Icon$1;,
        Landroid/graphics/drawable/Icon$LoadDrawableTask;,
        Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field public static final MIN_ASHMEM_ICON_SIZE:I = 0x20000

.field private static final TAG:Ljava/lang/String; = "Icon"

.field public static final TYPE_BITMAP:I = 0x1

.field public static final TYPE_DATA:I = 0x3

.field public static final TYPE_RESOURCE:I = 0x2

.field public static final TYPE_URI:I = 0x4

.field private static final VERSION_STREAM_SERIALIZER:I = 0x1


# instance fields
.field private mInt1:I

.field private mInt2:I

.field private mObj1:Ljava/lang/Object;

.field private mString1:Ljava/lang/String;

.field private mTintList:Landroid/content/res/ColorStateList;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 768
    new-instance v0, Landroid/graphics/drawable/Icon$1;

    invoke-direct {v0}, Landroid/graphics/drawable/Icon$1;-><init>()V

    .line 767
    sput-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 59
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "mType"    # I

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 429
    iput p1, p0, Landroid/graphics/drawable/Icon;->mType:I

    .line 428
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 702
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 703
    iget v6, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v6, :pswitch_data_0

    .line 729
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 730
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 729
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 730
    const-string/jumbo v8, " type in parcel: "

    .line 729
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 730
    iget v8, p0, Landroid/graphics/drawable/Icon;->mType:I

    .line 729
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 705
    :pswitch_0
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 706
    .local v1, "bits":Landroid/graphics/Bitmap;
    iput-object v1, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    .line 732
    .end local v1    # "bits":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 733
    sget-object v6, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ColorStateList;

    iput-object v6, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    .line 735
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/PorterDuff;->intToMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 701
    return-void

    .line 709
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 711
    .local v4, "resId":I
    iput-object v3, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 712
    iput v4, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    goto :goto_0

    .line 715
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "resId":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 716
    .local v2, "len":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    .line 717
    .local v0, "a":[B
    array-length v6, v0

    if-eq v2, v6, :cond_1

    .line 718
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "internal unparceling error: blob length ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 719
    array-length v8, v0

    .line 718
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 719
    const-string/jumbo v8, ") != expected length ("

    .line 718
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 719
    const-string/jumbo v8, ")"

    .line 718
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 721
    :cond_1
    iput v2, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    .line 722
    iput-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    goto :goto_0

    .line 725
    .end local v0    # "a":[B
    .end local v2    # "len":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 726
    .local v5, "uri":Ljava/lang/String;
    iput-object v5, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    goto :goto_0

    .line 703
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/Icon;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createFromStream(Ljava/io/InputStream;)Landroid/graphics/drawable/Icon;
    .locals 10
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 439
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 441
    .local v1, "inputStream":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 442
    .local v7, "version":I
    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    .line 443
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 444
    .local v5, "type":I
    packed-switch v5, :pswitch_data_0

    .line 461
    .end local v5    # "type":I
    :cond_0
    const/4 v8, 0x0

    return-object v8

    .line 446
    .restart local v5    # "type":I
    :pswitch_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    return-object v8

    .line 448
    :pswitch_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 449
    .local v2, "length":I
    new-array v0, v2, [B

    .line 450
    .local v0, "data":[B
    invoke-virtual {v1, v0, v9, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 451
    invoke-static {v0, v9, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v8

    return-object v8

    .line 453
    .end local v0    # "data":[B
    .end local v2    # "length":I
    :pswitch_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 455
    .local v4, "resId":I
    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    return-object v8

    .line 457
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "resId":I
    :pswitch_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, "uriOrPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    return-object v8

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "bits"    # Landroid/graphics/Bitmap;

    .prologue
    .line 545
    if-nez p0, :cond_0

    .line 546
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Bitmap must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 549
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    invoke-direct {v0, p0}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 550
    return-object v0
.end method

.method public static createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 592
    if-nez p0, :cond_0

    .line 593
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Uri must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 596
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 597
    return-object v0
.end method

.method public static createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 578
    if-nez p0, :cond_0

    .line 579
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Uri must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 581
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 582
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 583
    return-object v0
.end method

.method public static createWithData([BII)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 562
    if-nez p0, :cond_0

    .line 563
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Data must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 565
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 566
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    .line 567
    iput p2, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    .line 568
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt2:I

    .line 569
    return-object v0
.end method

.method public static createWithFilePath(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 644
    if-nez p0, :cond_0

    .line 645
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Path must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 648
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 649
    return-object v0
.end method

.method public static createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 502
    if-nez p0, :cond_0

    .line 503
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Context must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 506
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    .line 507
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 508
    return-object v0
.end method

.method public static createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    .line 516
    if-nez p0, :cond_0

    .line 517
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Resource must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 520
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    .line 521
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 522
    return-object v0
.end method

.method public static createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p0, "resPackage"    # Ljava/lang/String;
    .param p1, "resId"    # I

    .prologue
    .line 531
    if-nez p0, :cond_0

    .line 532
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Resource package name must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 534
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/Icon;-><init>(I)V

    .line 535
    .local v0, "rep":Landroid/graphics/drawable/Icon;
    iput p1, v0, Landroid/graphics/drawable/Icon;->mInt1:I

    .line 536
    iput-object p0, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    .line 537
    return-object v0
.end method

.method private loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v12, :pswitch_data_0

    .line 352
    :cond_0
    :goto_0
    const/4 v12, 0x0

    return-object v12

    .line 287
    :pswitch_0
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v12

    .line 289
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-nez v12, :cond_2

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v9

    .line 292
    .local v9, "resPackage":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 296
    :cond_1
    const-string/jumbo v12, "android"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 297
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    .line 316
    .end local v9    # "resPackage":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    return-object v12

    .line 299
    .restart local v9    # "resPackage":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 302
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/16 v12, 0x2000

    .line 301
    :try_start_1
    invoke-virtual {v8, v9, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 303
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 308
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 309
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v12, "Icon"

    const-string/jumbo v13, "Unable to find pkg=%s for icon %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    .line 310
    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/4 v15, 0x1

    aput-object p0, v14, v15

    .line 309
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 317
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "resPackage":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 318
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v12, "Icon"

    const-string/jumbo v13, "Unable to load resource 0x%08x from pkg=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    .line 318
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 325
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :pswitch_2
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 325
    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v12

    .line 329
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 330
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 331
    .local v10, "scheme":Ljava/lang/String;
    const/4 v6, 0x0

    .line 332
    .local v6, "is":Ljava/io/InputStream;
    const-string/jumbo v12, "content"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 333
    const-string/jumbo v12, "file"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 332
    if-eqz v12, :cond_5

    .line 335
    :cond_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 346
    .end local v6    # "is":Ljava/io/InputStream;
    :goto_2
    if-eqz v6, :cond_0

    .line 347
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 348
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 347
    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v12

    .line 336
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    .line 337
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "Icon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to load image from URI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 341
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .local v7, "is":Ljava/io/InputStream;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    goto :goto_2

    .line 342
    .local v6, "is":Ljava/io/InputStream;
    :catch_3
    move-exception v3

    .line 343
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v12, "Icon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unable to load image from path: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 122
    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    .line 121
    return-void
.end method

.method private static final typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 219
    packed-switch p0, :pswitch_data_0

    .line 224
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 220
    :pswitch_0
    const-string/jumbo v0, "BITMAP"

    return-object v0

    .line 221
    :pswitch_1
    const-string/jumbo v0, "DATA"

    return-object v0

    .line 222
    :pswitch_2
    const-string/jumbo v0, "RESOURCE"

    return-object v0

    .line 223
    :pswitch_3
    const-string/jumbo v0, "URI"

    return-object v0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public convertToAshmem()V
    .locals 2

    .prologue
    .line 391
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 392
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    .line 391
    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    .line 394
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/Icon;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 390
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 695
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 696
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 115
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getBitmap() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDataBytes()[B
    .locals 3

    .prologue
    .line 158
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getDataBytes() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDataLength()I
    .locals 3

    .prologue
    .line 130
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getDataLength() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    monitor-enter p0

    .line 134
    :try_start_0
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDataOffset()I
    .locals 3

    .prologue
    .line 144
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getDataOffset() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    monitor-enter p0

    .line 148
    :try_start_0
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResId()I
    .locals 3

    .prologue
    .line 193
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getResId() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/Icon;->mInt1:I

    return v0
.end method

.method public getResPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getResPackage() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 171
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getResources() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Resources;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    iget v0, p0, Landroid/graphics/drawable/Icon;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "called getUriString() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Icon;->mString1:Ljava/lang/String;

    return-object v0
.end method

.method public hasTint()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 634
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v2, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 273
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v2, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, v2, :cond_1

    .line 274
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 275
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 276
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 278
    :cond_1
    return-object v0
.end method

.method public loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x2

    .line 362
    iget v3, p0, Landroid/graphics/drawable/Icon;->mType:I

    if-ne v3, v5, :cond_1

    .line 363
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "resPackage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 367
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    .end local v2    # "resPackage":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 368
    .restart local v2    # "resPackage":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 371
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/drawable/Icon;->mObj1:Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "Icon"

    const-string/jumbo v4, "Unable to find pkg=%s user=%d"

    new-array v5, v5, [Ljava/lang/Object;

    .line 374
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 375
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 373
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 258
    new-instance v0, Landroid/graphics/drawable/Icon$LoadDrawableTask;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/graphics/drawable/Icon$LoadDrawableTask;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Handler;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon$LoadDrawableTask;->runAsync()V

    .line 257
    return-void
.end method

.method public loadDrawableAsync(Landroid/content/Context;Landroid/os/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "andThen"    # Landroid/os/Message;

    .prologue
    .line 239
    invoke-virtual {p2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback message must have a target handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    new-instance v0, Landroid/graphics/drawable/Icon$LoadDrawableTask;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/drawable/Icon$LoadDrawableTask;-><init>(Landroid/graphics/drawable/Icon;Landroid/content/Context;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon$LoadDrawableTask;->runAsync()V

    .line 238
    return-void
.end method

.method public sameAs(Landroid/graphics/drawable/Icon;)Z
    .locals 4
    .param p1, "otherIcon"    # Landroid/graphics/drawable/Icon;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 473
    if-ne p1, p0, :cond_0

    .line 474
    return v0

    .line 476
    :cond_0
    iget v2, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 477
    return v1

    .line 479
    :cond_1
    iget v2, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 492
    return v1

    .line 481
    :pswitch_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 483
    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 484
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 485
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 483
    :goto_1
    return v0

    :cond_3
    move v0, v1

    .line 485
    goto :goto_1

    :cond_4
    move v0, v1

    .line 483
    goto :goto_1

    .line 487
    :pswitch_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 488
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 487
    :cond_5
    return v1

    .line 490
    :pswitch_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setTint(I)Landroid/graphics/drawable/Icon;
    .locals 1
    .param p1, "tint"    # I

    .prologue
    .line 607
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;
    .locals 0
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 617
    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    .line 618
    return-object p0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;
    .locals 0
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 628
    iput-object p1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 629
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 654
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Icon(typ="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-static {v5}, Landroid/graphics/drawable/Icon;->typeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 655
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 678
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    .line 679
    const-string/jumbo v3, " tint="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const-string/jumbo v2, ""

    .line 681
    .local v2, "sep":Ljava/lang/String;
    iget-object v3, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_1

    aget v0, v5, v3

    .line 682
    .local v0, "c":I
    const-string/jumbo v7, "%s0x%08x"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string/jumbo v2, "|"

    .line 681
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 657
    .end local v0    # "c":I
    .end local v2    # "sep":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v3, " size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 658
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 657
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 659
    const-string/jumbo v5, "x"

    .line 657
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 660
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 657
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 663
    :pswitch_1
    const-string/jumbo v3, " pkg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 664
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v5

    .line 663
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 665
    const-string/jumbo v5, " id="

    .line 663
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 666
    const-string/jumbo v5, "0x%08x"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 663
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 669
    :pswitch_2
    const-string/jumbo v3, " len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v3

    if-eqz v3, :cond_0

    .line 671
    const-string/jumbo v3, " off="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 675
    :pswitch_3
    const-string/jumbo v3, " uri="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 686
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v4, Landroid/graphics/drawable/Icon;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v4, :cond_2

    const-string/jumbo v3, " mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 687
    :cond_2
    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 655
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 740
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 758
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 759
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1}, Landroid/graphics/PorterDuff;->modeToInt(Landroid/graphics/PorterDuff$Mode;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    return-void

    .line 743
    :pswitch_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 744
    .local v0, "bits":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 747
    .end local v0    # "bits":Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 751
    :pswitch_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->writeBlob([BII)V

    goto :goto_0

    .line 755
    :pswitch_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 761
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    iget-object v1, p0, Landroid/graphics/drawable/Icon;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 741
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 407
    .local v0, "dataStream":Ljava/io/DataOutputStream;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 408
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 410
    iget v1, p0, Landroid/graphics/drawable/Icon;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 404
    :goto_0
    return-void

    .line 412
    :pswitch_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 415
    :pswitch_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 416
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0

    .line 419
    :pswitch_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 423
    :pswitch_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
