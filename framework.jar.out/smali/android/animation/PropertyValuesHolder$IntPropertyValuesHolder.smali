.class Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntPropertyValuesHolder"
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
.field mIntAnimatedValue:I

.field mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

.field private mIntProperty:Landroid/util/IntProperty;

.field mJniSetter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1153
    sput-object v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    .line 1150
    return-void
.end method

.method public constructor <init>(Landroid/util/Property;Landroid/animation/Keyframes$IntKeyframes;)V
    .locals 1
    .param p1, "property"    # Landroid/util/Property;
    .param p2, "keyframes"    # Landroid/animation/Keyframes$IntKeyframes;

    .prologue
    .line 1169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder;)V

    .line 1170
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 1171
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 1172
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    .line 1173
    instance-of v0, p1, Landroid/util/IntProperty;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/IntProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    .line 1168
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Landroid/util/Property;[I)V
    .locals 1
    .param p1, "property"    # Landroid/util/Property;
    .param p2, "values"    # [I

    .prologue
    .line 1184
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder;)V

    .line 1185
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    .line 1186
    instance-of v0, p1, Landroid/util/IntProperty;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/IntProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    .line 1183
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/animation/Keyframes$IntKeyframes;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "keyframes"    # Landroid/animation/Keyframes$IntKeyframes;

    .prologue
    .line 1162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V

    .line 1163
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 1164
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 1165
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    .line 1161
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 1179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V

    .line 1180
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    .line 1178
    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 1208
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    invoke-interface {v0, p1}, Landroid/animation/Keyframes$IntKeyframes;->getIntValue(F)I

    move-result v0

    iput v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    .line 1207
    return-void
.end method

.method public clone()Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    .locals 2

    .prologue
    .line 1218
    invoke-super {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    .line 1219
    .local v0, "newPVH":Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    iget-object v1, v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast v1, Landroid/animation/Keyframes$IntKeyframes;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    .line 1220
    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 1217
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1213
    iget v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 1232
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    if-eqz v2, :cond_0

    .line 1233
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    iget v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-virtual {v2, p1, v3}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 1234
    return-void

    .line 1236
    :cond_0
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v2, :cond_1

    .line 1237
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    iget v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1238
    return-void

    .line 1240
    :cond_1
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 1241
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    iget v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {p1, v2, v3, v4}, Landroid/animation/PropertyValuesHolder;->-wrap7(Ljava/lang/Object;JI)V

    .line 1242
    return-void

    .line 1244
    :cond_2
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_3

    .line 1246
    :try_start_0
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1247
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    :cond_3
    :goto_0
    return-void

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1248
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 1249
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "PropertyValuesHolder"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 1
    .param p1, "values"    # [I

    .prologue
    .line 1202
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 1203
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast v0, Landroid/animation/Keyframes$IntKeyframes;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    .line 1201
    return-void
.end method

.method public setProperty(Landroid/util/Property;)V
    .locals 1
    .param p1, "property"    # Landroid/util/Property;

    .prologue
    .line 1193
    instance-of v0, p1, Landroid/util/IntProperty;

    if-eqz v0, :cond_0

    .line 1194
    check-cast p1, Landroid/util/IntProperty;

    .end local p1    # "property":Landroid/util/Property;
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    .line 1192
    :goto_0
    return-void

    .line 1196
    .restart local p1    # "property":Landroid/util/Property;
    :cond_0
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    goto :goto_0
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 10
    .param p1, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 1258
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v5, :cond_0

    .line 1259
    return-void

    .line 1262
    :cond_0
    sget-object v6, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 1263
    :try_start_0
    sget-object v5, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 1264
    .local v3, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 1265
    .local v4, "wasInMap":Z
    if-eqz v3, :cond_1

    .line 1266
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 1267
    .local v4, "wasInMap":Z
    if-eqz v4, :cond_1

    .line 1268
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1269
    .local v1, "jniSetter":Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 1270
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    .line 1274
    .end local v1    # "jniSetter":Ljava/lang/Long;
    .end local v4    # "wasInMap":Z
    :cond_1
    if-nez v4, :cond_3

    .line 1275
    const-string/jumbo v5, "set"

    iget-object v7, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1277
    .local v2, "methodName":Ljava/lang/String;
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/PropertyValuesHolder;->-wrap1(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1283
    :goto_0
    if-nez v3, :cond_2

    .line 1284
    :try_start_2
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1285
    .restart local v3    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v5, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    :cond_2
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-wide v8, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "methodName":Ljava/lang/String;
    :cond_3
    monitor-exit v6

    .line 1290
    iget-wide v6, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 1292
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 1257
    :cond_4
    return-void

    .line 1262
    .end local v3    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1278
    .restart local v2    # "methodName":Ljava/lang/String;
    .restart local v3    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodError;
    goto :goto_0
.end method
