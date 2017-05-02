.class Lcom/android/server/hips/intercept/Interception$2$1;
.super Landroid/os/Handler;
.source "Interception.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hips/intercept/Interception$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hips/intercept/Interception$2;

.field final synthetic val$conn:Landroid/content/ServiceConnection;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/hips/intercept/Interception$2;Landroid/os/Looper;Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hips/intercept/Interception$2;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "val$context"    # Landroid/content/Context;
    .param p4, "val$conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/server/hips/intercept/Interception$2$1;->this$1:Lcom/android/server/hips/intercept/Interception$2;

    iput-object p3, p0, Lcom/android/server/hips/intercept/Interception$2$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/hips/intercept/Interception$2$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 300
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    const-string/jumbo v10, "Interception"

    .line 306
    const-string/jumbo v11, "updateInterceptionItem, the msg is null, return."

    .line 305
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 310
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 311
    .local v0, "data":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 312
    const-string/jumbo v10, "Interception"

    .line 313
    const-string/jumbo v11, "updateInterceptionItem, the data is null, return."

    .line 312
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 318
    :cond_1
    const-string/jumbo v10, "map"

    .line 317
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    .line 320
    .local v6, "serializable":Ljava/io/Serializable;
    if-nez v6, :cond_2

    .line 321
    const-string/jumbo v10, "Interception"

    .line 322
    const-string/jumbo v11, "updateInterceptionItem, the serializable is null, return."

    .line 321
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 326
    :cond_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v7, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v4, ""

    .line 328
    .local v4, "itemsInfo":Ljava/lang/String;
    const/4 v8, 0x0

    .line 330
    .local v8, "userfulItemsCount":I
    :try_start_0
    check-cast v6, Ljava/util/Map;

    .end local v6    # "serializable":Ljava/io/Serializable;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 333
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v2, :cond_4

    .line 334
    const-string/jumbo v10, "Interception"

    .line 335
    const-string/jumbo v11, "updateInterceptionItem, the entry is null, stop to update"

    .line 334
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "Interception"

    .line 354
    const-string/jumbo v11, "updateInterceptionItem, get data from serializable error!"

    .line 353
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->-get1()Ljava/util/Map;

    move-result-object v11

    monitor-enter v11

    .line 358
    :try_start_1
    invoke-static {v7}, Lcom/android/server/hips/intercept/Interception;->-set0(Ljava/util/Map;)Ljava/util/Map;

    .line 359
    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/shrinker/Shrinker;->setIntercept(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    .line 362
    const-string/jumbo v10, "/data/system/interception_items"

    invoke-static {v4, v10}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v10, "Interception"

    .line 366
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateInterceptionItem, userfulItemsCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 365
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v10, p0, Lcom/android/server/hips/intercept/Interception$2$1;->val$context:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/hips/intercept/Interception$2$1;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v10, v11}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 303
    return-void

    .line 339
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 340
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 341
    .local v9, "value":Ljava/lang/Integer;
    if-eqz v5, :cond_5

    if-nez v9, :cond_6

    .line 342
    :cond_5
    const-string/jumbo v10, "Interception"

    .line 343
    const-string/jumbo v11, "updateInterceptionItem, the key or value is null, stop to update"

    .line 342
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :cond_6
    invoke-interface {v7, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 349
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|||"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "###"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 348
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 350
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 357
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/Integer;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method
