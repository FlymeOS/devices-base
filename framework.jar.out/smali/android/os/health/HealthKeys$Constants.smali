.class public Landroid/os/health/HealthKeys$Constants;
.super Ljava/lang/Object;
.source "HealthKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/health/HealthKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# instance fields
.field private final mDataType:Ljava/lang/String;

.field private final mKeys:[[I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 12
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v9, 0x5

    new-array v9, v9, [[I

    iput-object v9, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    .line 94
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/os/health/HealthKeys$Constants;->mDataType:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 99
    .local v5, "fields":[Ljava/lang/reflect/Field;
    const-class v1, Landroid/os/health/HealthKeys$Constant;

    .line 101
    .local v1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/health/HealthKeys$Constant;>;"
    array-length v0, v5

    .line 103
    .local v0, "N":I
    iget-object v9, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    array-length v9, v9

    new-array v7, v9, [Landroid/os/health/HealthKeys$SortedIntArray;

    .line 104
    .local v7, "keys":[Landroid/os/health/HealthKeys$SortedIntArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v9, v7

    if-ge v6, v9, :cond_0

    .line 105
    new-instance v9, Landroid/os/health/HealthKeys$SortedIntArray;

    invoke-direct {v9, v0}, Landroid/os/health/HealthKeys$SortedIntArray;-><init>(I)V

    aput-object v9, v7, v6

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 108
    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_3

    .line 109
    aget-object v4, v5, v6

    .line 110
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Landroid/os/health/HealthKeys$Constant;

    .line 111
    .local v2, "constant":Landroid/os/health/HealthKeys$Constant;
    if-eqz v2, :cond_2

    .line 112
    invoke-interface {v2}, Landroid/os/health/HealthKeys$Constant;->type()I

    move-result v8

    .line 113
    .local v8, "type":I
    array-length v9, v7

    if-lt v8, v9, :cond_1

    .line 114
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown Constant type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 115
    const-string/jumbo v11, " on "

    .line 114
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 118
    :cond_1
    :try_start_0
    aget-object v9, v7, v8

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/health/HealthKeys$SortedIntArray;->addValue(I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v8    # "type":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 119
    .restart local v8    # "type":I
    :catch_0
    move-exception v3

    .line 120
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t read constant value type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 121
    const-string/jumbo v11, " field="

    .line 120
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 126
    .end local v2    # "constant":Landroid/os/health/HealthKeys$Constant;
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "type":I
    :cond_3
    const/4 v6, 0x0

    :goto_2
    array-length v9, v7

    if-ge v6, v9, :cond_4

    .line 127
    iget-object v9, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v10, v7, v6

    invoke-virtual {v10}, Landroid/os/health/HealthKeys$SortedIntArray;->getArray()[I

    move-result-object v10

    aput-object v10, v9, v6

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 92
    :cond_4
    return-void
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex(II)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "key"    # I

    .prologue
    .line 163
    iget-object v1, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v1, v1, p1

    invoke-static {v1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 164
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 165
    return v0

    .line 167
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown Constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 168
    const-string/jumbo v3, " )"

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getKeys(I)[I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 176
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSize(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 149
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    aget-object v0, v0, p1

    array-length v0, v0

    return v0
.end method
