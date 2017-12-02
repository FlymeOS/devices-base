.class public final Lcom/android/internal/util/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/internal/util/GrowingArrayUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/internal/util/GrowingArrayUtils;->-assertionsDisabled:Z

    .line 29
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([FIF)[F
    .locals 4
    .param p0, "array"    # [F
    .param p1, "currentSize"    # I
    .param p2, "element"    # F

    .prologue
    const/4 v2, 0x0

    .line 103
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, p0

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 105
    :cond_1
    add-int/lit8 v1, p1, 0x1

    array-length v3, p0

    if-le v1, v3, :cond_2

    .line 106
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v0

    .line 107
    .local v0, "newArray":[F
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 108
    move-object p0, v0

    .line 110
    .end local v0    # "newArray":[F
    :cond_2
    aput p2, p0, p1

    .line 111
    return-object p0
.end method

.method public static append([III)[I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "currentSize"    # I
    .param p2, "element"    # I

    .prologue
    const/4 v2, 0x0

    .line 58
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, p0

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 60
    :cond_1
    add-int/lit8 v1, p1, 0x1

    array-length v3, p0

    if-le v1, v3, :cond_2

    .line 61
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    .line 62
    .local v0, "newArray":[I
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 63
    move-object p0, v0

    .line 65
    .end local v0    # "newArray":[I
    :cond_2
    aput p2, p0, p1

    .line 66
    return-object p0
.end method

.method public static append([JIJ)[J
    .locals 4
    .param p0, "array"    # [J
    .param p1, "currentSize"    # I
    .param p2, "element"    # J

    .prologue
    const/4 v2, 0x0

    .line 73
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, p0

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 75
    :cond_1
    add-int/lit8 v1, p1, 0x1

    array-length v3, p0

    if-le v1, v3, :cond_2

    .line 76
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    .line 77
    .local v0, "newArray":[J
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 78
    move-object p0, v0

    .line 80
    .end local v0    # "newArray":[J
    :cond_2
    aput-wide p2, p0, p1

    .line 81
    return-object p0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "currentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 41
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, p0

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 43
    :cond_1
    add-int/lit8 v1, p1, 0x1

    array-length v3, p0

    if-le v1, v3, :cond_2

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    .line 45
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    move-object p0, v0

    .line 50
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_2
    aput-object p2, p0, p1

    .line 51
    return-object p0
.end method

.method public static append([ZIZ)[Z
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "currentSize"    # I
    .param p2, "element"    # Z

    .prologue
    const/4 v2, 0x0

    .line 88
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, p0

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 90
    :cond_1
    add-int/lit8 v1, p1, 0x1

    array-length v3, p0

    if-le v1, v3, :cond_2

    .line 91
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v0

    .line 92
    .local v0, "newArray":[Z
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 93
    move-object p0, v0

    .line 95
    .end local v0    # "newArray":[Z
    :cond_2
    aput-boolean p2, p0, p1

    .line 96
    return-object p0
.end method

.method public static growSize(I)I
    .locals 1
    .param p0, "currentSize"    # I

    .prologue
    .line 206
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v0, p0, 0x2

    goto :goto_0
.end method

.method public static insert([IIII)[I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # I

    .prologue
    const/4 v2, 0x0

    .line 147
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, p0

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 149
    :cond_1
    add-int/lit8 v1, p1, 0x1

    array-length v3, p0

    if-gt v1, v3, :cond_2

    .line 150
    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 151
    aput p3, p0, p2

    .line 152
    return-object p0

    .line 155
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    .line 156
    .local v0, "newArray":[I
    invoke-static {p0, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 157
    aput p3, v0, p2

    .line 158
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 159
    return-object v0
.end method

.method public static insert([JIIJ)[J
    .locals 5
    .param p0, "array"    # [J
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # J

    .prologue
    const/4 v2, 0x0

    .line 166
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, p0

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 168
    :cond_1
    add-int/lit8 v1, p1, 0x1

    array-length v3, p0

    if-gt v1, v3, :cond_2

    .line 169
    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 170
    aput-wide p3, p0, p2

    .line 171
    return-object p0

    .line 174
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    .line 175
    .local v0, "newArray":[J
    invoke-static {p0, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 176
    aput-wide p3, v0, p2

    .line 177
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 178
    return-object v0
.end method

.method public static insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "element":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 126
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, p0

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 128
    :cond_1
    add-int/lit8 v1, p1, 0x1

    array-length v3, p0

    if-gt v1, v3, :cond_2

    .line 129
    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    aput-object p3, p0, p2

    .line 131
    return-object p0

    .line 135
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 136
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    .line 135
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    aput-object p3, v0, p2

    .line 139
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    return-object v0
.end method

.method public static insert([ZIIZ)[Z
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "currentSize"    # I
    .param p2, "index"    # I
    .param p3, "element"    # Z

    .prologue
    const/4 v2, 0x0

    .line 185
    sget-boolean v1, Lcom/android/internal/util/GrowingArrayUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, p0

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 187
    :cond_1
    add-int/lit8 v1, p1, 0x1

    array-length v3, p0

    if-gt v1, v3, :cond_2

    .line 188
    add-int/lit8 v1, p2, 0x1

    sub-int v2, p1, p2

    invoke-static {p0, p2, p0, v1, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 189
    aput-boolean p3, p0, p2

    .line 190
    return-object p0

    .line 193
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v0

    .line 194
    .local v0, "newArray":[Z
    invoke-static {p0, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 195
    aput-boolean p3, v0, p2

    .line 196
    add-int/lit8 v1, p2, 0x1

    array-length v2, p0

    sub-int/2addr v2, p2

    invoke-static {p0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 197
    return-object v0
.end method
