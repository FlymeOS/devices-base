.class Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiIntValuesHolder"
.end annotation


# static fields
.field private static final sJNISetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mJniSetter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1554
    sput-object v0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    .line 1552
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "converter"    # Landroid/animation/TypeConverter;
    .param p3, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p4, "keyframes"    # Landroid/animation/Keyframes;

    .prologue
    .line 1567
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V

    .line 1568
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    .line 1569
    iput-object p4, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 1570
    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1566
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "converter"    # Landroid/animation/TypeConverter;
    .param p3, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p4, "values"    # [Ljava/lang/Object;

    .prologue
    .line 1559
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V

    .line 1560
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    .line 1561
    invoke-virtual {p0, p4}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 1562
    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1558
    return-void
.end method


# virtual methods
.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 9
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1583
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 1584
    .local v8, "values":[I
    array-length v0, v8

    .line 1585
    .local v0, "numParameters":I
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1586
    packed-switch v0, :pswitch_data_0

    .line 1598
    :pswitch_0
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    invoke-static {p1, v2, v3, v8}, Landroid/animation/PropertyValuesHolder;->-wrap9(Ljava/lang/Object;J[I)V

    .line 1582
    :cond_0
    :goto_0
    return-void

    .line 1588
    :pswitch_1
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    aget v1, v8, v6

    invoke-static {p1, v2, v3, v1}, Landroid/animation/PropertyValuesHolder;->-wrap7(Ljava/lang/Object;JI)V

    goto :goto_0

    .line 1591
    :pswitch_2
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    aget v1, v8, v6

    aget v4, v8, v7

    invoke-static {p1, v2, v3, v1, v4}, Landroid/animation/PropertyValuesHolder;->-wrap11(Ljava/lang/Object;JII)V

    goto :goto_0

    .line 1594
    :pswitch_3
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    aget v4, v8, v6

    aget v5, v8, v7

    .line 1595
    const/4 v1, 0x2

    aget v6, v8, v1

    const/4 v1, 0x3

    aget v7, v8, v1

    move-object v1, p1

    .line 1594
    invoke-static/range {v1 .. v7}, Landroid/animation/PropertyValuesHolder;->-wrap6(Ljava/lang/Object;JIIII)V

    goto :goto_0

    .line 1586
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 12
    .param p1, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 1618
    iget-wide v8, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 1619
    return-void

    .line 1621
    :cond_0
    sget-object v9, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 1622
    :try_start_0
    sget-object v8, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 1623
    .local v5, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 1624
    .local v7, "wasInMap":Z
    if-eqz v5, :cond_1

    .line 1625
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 1626
    .local v7, "wasInMap":Z
    if-eqz v7, :cond_1

    .line 1627
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1628
    .local v2, "jniSetter":Ljava/lang/Long;
    if-eqz v2, :cond_1

    .line 1629
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    .line 1633
    .end local v2    # "jniSetter":Ljava/lang/Long;
    .end local v7    # "wasInMap":Z
    :cond_1
    if-nez v7, :cond_3

    .line 1634
    const-string/jumbo v8, "set"

    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v8, v10}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1635
    .local v3, "methodName":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1636
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 1637
    .local v6, "values":[I
    array-length v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1639
    .local v4, "numParams":I
    :try_start_1
    invoke-static {p1, v3, v4}, Landroid/animation/PropertyValuesHolder;->-wrap3(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v10

    iput-wide v10, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1649
    :goto_0
    if-nez v5, :cond_2

    .line 1650
    :try_start_2
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1651
    .restart local v5    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v8, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    :cond_2
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-wide v10, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "methodName":Ljava/lang/String;
    .end local v4    # "numParams":I
    .end local v6    # "values":[I
    :cond_3
    monitor-exit v9

    .line 1617
    return-void

    .line 1640
    .restart local v3    # "methodName":Ljava/lang/String;
    .restart local v4    # "numParams":I
    .restart local v6    # "values":[I
    :catch_0
    move-exception v0

    .line 1643
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    :try_start_3
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p1, v8, v4}, Landroid/animation/PropertyValuesHolder;->-wrap3(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v10

    iput-wide v10, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J
    :try_end_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1645
    :catch_1
    move-exception v1

    .local v1, "e2":Ljava/lang/NoSuchMethodError;
    goto :goto_0

    .line 1621
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    .end local v1    # "e2":Ljava/lang/NoSuchMethodError;
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v4    # "numParams":I
    .end local v5    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "values":[I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 1613
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 1612
    return-void
.end method
