.class Landroid/location/LocalListenerHelper$1;
.super Ljava/lang/Object;
.source "LocalListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocalListenerHelper;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/LocalListenerHelper;

.field final synthetic val$listener:Ljava/util/Map$Entry;

.field final synthetic val$operation:Landroid/location/LocalListenerHelper$ListenerOperation;


# direct methods
.method constructor <init>(Landroid/location/LocalListenerHelper;Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 120
    .local p1, "this$0":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    .local p2, "val$operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<TTListener;>;"
    .local p3, "val$listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TTListener;Landroid/os/Handler;>;"
    iput-object p1, p0, Landroid/location/LocalListenerHelper$1;->this$0:Landroid/location/LocalListenerHelper;

    iput-object p2, p0, Landroid/location/LocalListenerHelper$1;->val$operation:Landroid/location/LocalListenerHelper$ListenerOperation;

    iput-object p3, p0, Landroid/location/LocalListenerHelper$1;->val$listener:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Landroid/location/LocalListenerHelper$1;->this$0:Landroid/location/LocalListenerHelper;

    iget-object v1, p0, Landroid/location/LocalListenerHelper$1;->val$operation:Landroid/location/LocalListenerHelper$ListenerOperation;

    iget-object v2, p0, Landroid/location/LocalListenerHelper$1;->val$listener:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/location/LocalListenerHelper;->-wrap0(Landroid/location/LocalListenerHelper;Landroid/location/LocalListenerHelper$ListenerOperation;Ljava/lang/Object;)V

    .line 122
    return-void
.end method
