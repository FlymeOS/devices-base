.class Landroid/media/MediaPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$fFormat:Landroid/media/MediaFormat;

.field final synthetic val$fIs:Ljava/io/InputStream;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "val$fIs"    # Ljava/io/InputStream;
    .param p3, "val$fFormat"    # Landroid/media/MediaFormat;
    .param p4, "val$thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 2297
    iput-object p1, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/media/MediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Landroid/media/MediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .locals 11

    .prologue
    const/16 v10, 0x385

    .line 2299
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v8

    if-nez v8, :cond_1

    .line 2300
    :cond_0
    return v10

    .line 2303
    :cond_1
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$3;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v8, v9}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v5

    .line 2304
    .local v5, "track":Landroid/media/SubtitleTrack;
    if-nez v5, :cond_2

    .line 2305
    return v10

    .line 2309
    :cond_2
    new-instance v4, Ljava/util/Scanner;

    iget-object v8, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v4, v8, v9}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2310
    .local v4, "scanner":Ljava/util/Scanner;
    const-string/jumbo v8, "\\A"

    invoke-virtual {v4, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 2311
    .local v1, "contents":Ljava/lang/String;
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v9

    monitor-enter v9

    .line 2312
    :try_start_0
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v8

    iget-object v10, p0, Landroid/media/MediaPlayer$3;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v8, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 2314
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    .line 2315
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v9

    monitor-enter v9

    .line 2316
    :try_start_1
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v10, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v9

    .line 2318
    iget-object v8, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v8

    invoke-static {v8}, Landroid/media/MediaPlayer$TimeProvider;->-get0(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v2

    .line 2319
    .local v2, "h":Landroid/os/Handler;
    const/4 v7, 0x1

    .line 2320
    .local v7, "what":I
    const/4 v0, 0x4

    .line 2321
    .local v0, "arg1":I
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 2322
    .local v6, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    const/4 v8, 0x0

    invoke-virtual {v2, v7, v0, v8, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2323
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2324
    const/16 v8, 0x323

    return v8

    .line 2311
    .end local v0    # "arg1":I
    .end local v2    # "h":Landroid/os/Handler;
    .end local v3    # "m":Landroid/os/Message;
    .end local v6    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    .end local v7    # "what":I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 2315
    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2328
    invoke-direct {p0}, Landroid/media/MediaPlayer$3;->addTrack()I

    move-result v1

    .line 2329
    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2330
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2331
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2333
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer$3;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    .line 2327
    return-void
.end method
