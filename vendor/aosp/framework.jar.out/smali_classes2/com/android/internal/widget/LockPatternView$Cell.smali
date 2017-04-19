.class public final Lcom/android/internal/widget/LockPatternView$Cell;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cell"
.end annotation


# static fields
.field private static final sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;


# instance fields
.field final column:I

.field final row:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$Cell;->createCells()[[Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    .line 149
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {p1, p2}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(II)V

    .line 172
    iput p1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 173
    iput p2, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 170
    return-void
.end method

.method private static checkRange(II)V
    .locals 2
    .param p0, "row"    # I
    .param p1, "column"    # I

    .prologue
    const/4 v0, 0x2

    .line 190
    if-ltz p0, :cond_0

    if-le p0, v0, :cond_1

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "row must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v0, :cond_3

    .line 194
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "column must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_3
    return-void
.end method

.method private static createCells()[[Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 157
    const-class v3, Lcom/android/internal/widget/LockPatternView$Cell;

    filled-new-array {v5, v5}, [I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/internal/widget/LockPatternView$Cell;

    .line 158
    .local v2, "res":[[Lcom/android/internal/widget/LockPatternView$Cell;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 159
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 160
    aget-object v3, v2, v0

    new-instance v4, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-direct {v4, v0, v1}, Lcom/android/internal/widget/LockPatternView$Cell;-><init>(II)V

    aput-object v4, v3, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "j":I
    :cond_1
    return-object v2
.end method

.method public static of(II)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 1
    .param p0, "row"    # I
    .param p1, "column"    # I

    .prologue
    .line 185
    invoke-static {p0, p1}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(II)V

    .line 186
    sget-object v0, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
