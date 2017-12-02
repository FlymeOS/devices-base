.class public final Landroid/view/inputmethod/CursorAnchorInfo;
.super Ljava/lang/Object;
.source "CursorAnchorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/CursorAnchorInfo$1;,
        Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/CursorAnchorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_HAS_INVISIBLE_REGION:I = 0x2

.field public static final FLAG_HAS_VISIBLE_REGION:I = 0x1

.field public static final FLAG_IS_RTL:I = 0x4


# instance fields
.field private final mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

.field private final mComposingText:Ljava/lang/CharSequence;

.field private final mComposingTextStart:I

.field private final mHashCode:I

.field private final mInsertionMarkerBaseline:F

.field private final mInsertionMarkerBottom:F

.field private final mInsertionMarkerFlags:I

.field private final mInsertionMarkerHorizontal:F

.field private final mInsertionMarkerTop:F

.field private final mMatrixValues:[F

.field private final mSelectionEnd:I

.field private final mSelectionStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 563
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$1;-><init>()V

    .line 562
    sput-object v0, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    .line 136
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    .line 142
    const-class v0, Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/SparseRectFArray;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    .line 131
    return-void
.end method

.method private constructor <init>(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get11(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v2

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    .line 417
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get10(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v2

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    .line 418
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get2(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v2

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    .line 419
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get1(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    .line 420
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get5(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v2

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    .line 421
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get6(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v2

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    .line 422
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get7(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v2

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    .line 423
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get3(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v2

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    .line 424
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get4(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v2

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    .line 425
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get0(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 426
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get0(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->build()Landroid/view/inputmethod/SparseRectFArray;

    move-result-object v1

    .line 425
    :cond_0
    iput-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    .line 427
    new-array v1, v4, [F

    iput-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    .line 428
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get8(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get9(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 435
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 436
    .local v0, "hash":I
    mul-int/lit8 v0, v0, 0x1f

    .line 437
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    .line 415
    return-void

    .line 431
    .end local v0    # "hash":I
    :cond_1
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0
    .param p1, "builder"    # Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/inputmethod/CursorAnchorInfo;-><init>(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)V

    return-void
.end method

.method private static areSameFloatImpl(FF)Z
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    const/4 v0, 0x1

    .line 178
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    return v0

    .line 181
    :cond_0
    cmpl-float v1, p0, p1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 186
    if-nez p1, :cond_0

    .line 187
    return v4

    .line 189
    :cond_0
    if-ne p0, p1, :cond_1

    .line 190
    return v5

    .line 192
    :cond_1
    instance-of v2, p1, Landroid/view/inputmethod/CursorAnchorInfo;

    if-nez v2, :cond_2

    .line 193
    return v4

    :cond_2
    move-object v1, p1

    .line 195
    check-cast v1, Landroid/view/inputmethod/CursorAnchorInfo;

    .line 196
    .local v1, "that":Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo;->hashCode()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 197
    return v4

    .line 202
    :cond_3
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    if-eq v2, v3, :cond_5

    .line 203
    :cond_4
    return v4

    .line 206
    :cond_5
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    if-ne v2, v3, :cond_6

    .line 207
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    invoke-static {v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 208
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    invoke-static {v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 209
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    invoke-static {v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 210
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    invoke-static {v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 214
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    iget-object v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 215
    return v4

    .line 211
    :cond_6
    return v4

    .line 220
    :cond_7
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    if-ne v2, v3, :cond_8

    .line 221
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    iget-object v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 227
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    array-length v2, v2

    iget-object v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    array-length v3, v3

    if-eq v2, v3, :cond_9

    .line 228
    return v4

    .line 222
    :cond_8
    return v4

    .line 230
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 231
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    aget v2, v2, v0

    iget-object v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    aget v3, v3, v0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_a

    .line 232
    return v4

    .line 230
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_b
    return v5
.end method

.method public getCharacterBounds(I)Landroid/graphics/RectF;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    if-nez v0, :cond_0

    .line 531
    return-object v1

    .line 533
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/SparseRectFArray;->get(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterBoundsFlags(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 542
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    if-nez v0, :cond_0

    .line 543
    return v1

    .line 545
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/SparseRectFArray;->getFlags(II)I

    move-result v0

    return v0
.end method

.method public getComposingText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getComposingTextStart()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    return v0
.end method

.method public getInsertionMarkerBaseline()F
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    return v0
.end method

.method public getInsertionMarkerBottom()F
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    return v0
.end method

.method public getInsertionMarkerFlags()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    return v0
.end method

.method public getInsertionMarkerHorizontal()F
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    return v0
.end method

.method public getInsertionMarkerTop()F
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 554
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 555
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 556
    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CursorAnchorInfo{mHashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    const-string/jumbo v1, " mSelection="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    const-string/jumbo v1, ","

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    const-string/jumbo v1, " mComposingTextStart="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    const-string/jumbo v1, " mComposingText="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    const-string/jumbo v1, " mInsertionMarkerFlags="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    const-string/jumbo v1, " mInsertionMarkerHorizontal="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    const-string/jumbo v1, " mInsertionMarkerTop="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    const-string/jumbo v1, " mInsertionMarkerBaseline="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    const-string/jumbo v1, " mInsertionMarkerBottom="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    const-string/jumbo v1, " mCharacterBoundsArray="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    const-string/jumbo v1, " mMatrix="

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    const-string/jumbo v1, "}"

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 154
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 159
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 161
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 162
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 163
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 164
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 153
    return-void
.end method
