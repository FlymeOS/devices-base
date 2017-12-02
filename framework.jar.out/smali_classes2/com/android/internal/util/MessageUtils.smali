.class public Lcom/android/internal/util/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/MessageUtils$DuplicateConstantError;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final DEFAULT_PREFIXES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-class v0, Lcom/android/internal/util/MessageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/MessageUtils;->TAG:Ljava/lang/String;

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CMD_"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "EVENT_"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/util/MessageUtils;->DEFAULT_PREFIXES:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "classNames"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/android/internal/util/MessageUtils;->DEFAULT_PREFIXES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public static findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 22
    .param p0, "classes"    # [Ljava/lang/Class;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 53
    .local v9, "messageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v15, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v18, v15

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    aget-object v2, p0, v18

    .line 54
    .local v2, "c":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "className":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 65
    .local v8, "fields":[Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    array-length v0, v8

    move/from16 v20, v0

    move/from16 v17, v15

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    aget-object v7, v8, v17

    .line 66
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    .line 67
    .local v10, "modifiers":I
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v15, 0x0

    :goto_2
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x0

    :goto_3
    or-int v15, v15, v16

    if-eqz v15, :cond_4

    .line 65
    :cond_0
    :goto_4
    add-int/lit8 v15, v17, 0x1

    move/from16 v17, v15

    goto :goto_1

    .line 60
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fields":[Ljava/lang/reflect/Field;
    .end local v10    # "modifiers":I
    :catch_0
    move-exception v5

    .line 61
    .local v5, "e":Ljava/lang/SecurityException;
    sget-object v15, Lcom/android/internal/util/MessageUtils;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Can\'t list fields of class "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_1
    add-int/lit8 v15, v18, 0x1

    move/from16 v18, v15

    goto :goto_0

    .line 67
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "fields":[Ljava/lang/reflect/Field;
    .restart local v10    # "modifiers":I
    :cond_2
    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x1

    goto :goto_3

    .line 71
    :cond_4
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, "name":Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    :goto_5
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    aget-object v12, p1, v15

    .line 74
    .local v12, "prefix":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 72
    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 81
    :cond_5
    const/16 v21, 0x1

    :try_start_1
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    const/16 v21, 0x0

    :try_start_2
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v14

    .line 95
    .local v14, "value":I
    :try_start_3
    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 96
    .local v13, "previousName":Ljava/lang/String;
    if-eqz v13, :cond_6

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 100
    :cond_6
    invoke-virtual {v9, v14, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 105
    .end local v13    # "previousName":Ljava/lang/String;
    .end local v14    # "value":I
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    goto :goto_6

    .line 87
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .local v6, "e":Ljava/lang/Throwable;
    goto :goto_4

    .line 97
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v13    # "previousName":Ljava/lang/String;
    .restart local v14    # "value":I
    :cond_7
    new-instance v21, Lcom/android/internal/util/MessageUtils$DuplicateConstantError;

    move-object/from16 v0, v21

    invoke-direct {v0, v11, v13, v14}, Lcom/android/internal/util/MessageUtils$DuplicateConstantError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v21
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    .line 112
    .end local v2    # "c":Ljava/lang/Class;
    .end local v3    # "className":Ljava/lang/String;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fields":[Ljava/lang/reflect/Field;
    .end local v10    # "modifiers":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "previousName":Ljava/lang/String;
    .end local v14    # "value":I
    :cond_8
    return-object v9
.end method
