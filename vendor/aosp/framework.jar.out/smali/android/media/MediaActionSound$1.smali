.class Landroid/media/MediaActionSound$1;
.super Ljava/lang/Object;
.source "MediaActionSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaActionSound;


# direct methods
.method constructor <init>(Landroid/media/MediaActionSound;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaActionSound;

    .prologue
    .line 234
    iput-object p1, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 237
    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    invoke-static {v0}, Landroid/media/MediaActionSound;->-get0(Landroid/media/MediaActionSound;)[Landroid/media/MediaActionSound$SoundState;

    move-result-object v3

    array-length v5, v3

    move v0, v4

    :goto_0
    if-ge v0, v5, :cond_2

    aget-object v7, v3, v0

    .line 238
    .local v7, "sound":Landroid/media/MediaActionSound$SoundState;
    iget v6, v7, Landroid/media/MediaActionSound$SoundState;->id:I

    if-eq v6, p2, :cond_0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    const/4 v1, 0x0

    .line 242
    .local v1, "playSoundId":I
    monitor-enter v7

    .line 243
    if-eqz p3, :cond_1

    .line 244
    const/4 v0, 0x0

    :try_start_0
    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 245
    const/4 v0, 0x0

    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 246
    const-string/jumbo v0, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnLoadCompleteListener() error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    const-string/jumbo v3, " loading sound: "

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    iget v3, v7, Landroid/media/MediaActionSound$SoundState;->name:I

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 248
    return-void

    .line 250
    :cond_1
    :try_start_1
    iget v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    packed-switch v0, :pswitch_data_0

    .line 259
    const-string/jumbo v0, "MediaActionSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OnLoadCompleteListener() called in wrong state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 260
    iget v5, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 259
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 260
    const-string/jumbo v5, " for sound: "

    .line 259
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 260
    iget v5, v7, Landroid/media/MediaActionSound$SoundState;->name:I

    .line 259
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v7

    .line 264
    if-eqz v1, :cond_2

    move-object v0, p1

    move v3, v2

    move v5, v4

    move v6, v2

    .line 265
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 236
    .end local v1    # "playSoundId":I
    .end local v7    # "sound":Landroid/media/MediaActionSound$SoundState;
    :cond_2
    return-void

    .line 252
    .restart local v1    # "playSoundId":I
    .restart local v7    # "sound":Landroid/media/MediaActionSound$SoundState;
    :pswitch_0
    const/4 v0, 0x3

    :try_start_2
    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 255
    :pswitch_1
    :try_start_3
    iget v1, v7, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 256
    const/4 v0, 0x3

    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
