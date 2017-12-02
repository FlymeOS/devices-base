.class public Landroid/media/MediaInserter;
.super Ljava/lang/Object;
.source "MediaInserter.java"


# instance fields
.field private final mBufferSizePerUri:I

.field private final mPriorityRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;I)V
    .locals 1
    .param p1, "provider"    # Landroid/content/ContentProviderClient;
    .param p2, "bufferSizePerUri"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    iput-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    iput-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    .line 44
    iput-object p1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/ContentProviderClient;

    .line 45
    iput p2, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    .line 43
    return-void
.end method

.method private flush(Landroid/net/Uri;Ljava/util/List;)V
    .locals 2
    .param p1, "tableUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Landroid/content/ContentValues;

    .line 90
    .local v0, "valuesArray":[Landroid/content/ContentValues;
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "valuesArray":[Landroid/content/ContentValues;
    check-cast v0, [Landroid/content/ContentValues;

    .line 91
    .restart local v0    # "valuesArray":[Landroid/content/ContentValues;
    iget-object v1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 92
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 87
    .end local v0    # "valuesArray":[Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private flushAllPriority()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tableUri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 81
    .local v1, "tableUri":Landroid/net/Uri;
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v1, v0}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    .line 84
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v1    # "tableUri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 79
    return-void
.end method

.method private insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V
    .locals 4
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "priority"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p3, :cond_2

    iget-object v1, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    .line 58
    .local v1, "rowmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 59
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    if-lt v2, v3, :cond_1

    .line 65
    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    .line 66
    invoke-direct {p0, p1, v0}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    .line 56
    :cond_1
    return-void

    .line 57
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v1    # "rowmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :cond_2
    iget-object v1, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public flushAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    .line 72
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tableUri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 73
    .local v1, "tableUri":Landroid/net/Uri;
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 74
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v1, v0}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    .line 76
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v1    # "tableUri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 70
    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    .line 48
    return-void
.end method

.method public insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    .line 52
    return-void
.end method
