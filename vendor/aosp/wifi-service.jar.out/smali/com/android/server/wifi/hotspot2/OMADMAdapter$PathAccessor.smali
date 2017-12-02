.class abstract Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;
.super Ljava/lang/Object;
.source "OMADMAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/OMADMAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PathAccessor"
.end annotation


# instance fields
.field private final mHashCode:I

.field private final mPath:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->getPath()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs constructor <init>([Ljava/lang/Object;)V
    .locals 11
    .param p1, "path"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "length":I
    array-length v7, p1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v4, p1, v5

    .line 59
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, [Ljava/lang/String;

    if-ne v8, v9, :cond_0

    .line 60
    check-cast v4, [Ljava/lang/String;

    .end local v4    # "o":Ljava/lang/Object;
    array-length v8, v4

    add-int/2addr v1, v8

    .line 58
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "n":I
    array-length v8, p1

    move v7, v6

    move v3, v2

    .end local v2    # "n":I
    .local v3, "n":I
    :goto_2
    if-ge v7, v8, :cond_4

    aget-object v4, p1, v7

    .line 69
    .restart local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v9, [Ljava/lang/String;

    if-ne v5, v9, :cond_2

    .line 70
    check-cast v4, [Ljava/lang/String;

    .end local v4    # "o":Ljava/lang/Object;
    array-length v9, v4

    move v5, v6

    :goto_3
    if-ge v5, v9, :cond_5

    aget-object v0, v4, v5

    .line 71
    .local v0, "element":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "n":I
    .restart local v2    # "n":I
    aput-object v0, v10, v3

    .line 70
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "n":I
    .restart local v3    # "n":I
    goto :goto_3

    .line 74
    .end local v0    # "element":Ljava/lang/String;
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v9, Ljava/lang/Integer;

    if-ne v5, v9, :cond_3

    .line 75
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "n":I
    .restart local v2    # "n":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v3

    .line 68
    .end local v4    # "o":Ljava/lang/Object;
    :goto_4
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v3, v2

    .end local v2    # "n":I
    .restart local v3    # "n":I
    goto :goto_2

    .line 78
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "n":I
    .restart local v2    # "n":I
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v3

    goto :goto_4

    .line 81
    .end local v2    # "n":I
    .end local v4    # "o":Ljava/lang/Object;
    .restart local v3    # "n":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mHashCode:I

    .line 56
    return-void

    :cond_5
    move v2, v3

    .end local v3    # "n":I
    .restart local v2    # "n":I
    goto :goto_4
.end method

.method private getPath()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    .line 91
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/android/server/wifi/hotspot2/OMADMAdapter$ConstPathAccessor;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    check-cast p1, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;

    .end local p1    # "thatObject":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mPath:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .line 91
    :goto_0
    return v0

    .restart local p1    # "thatObject":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getValue()Ljava/lang/Object;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/server/wifi/hotspot2/OMADMAdapter$PathAccessor;->mHashCode:I

    return v0
.end method
