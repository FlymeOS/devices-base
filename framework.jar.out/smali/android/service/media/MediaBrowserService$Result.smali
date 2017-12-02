.class public Landroid/service/media/MediaBrowserService$Result;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDebug:Ljava/lang/Object;

.field private mDetachCalled:Z

.field private mFlags:I

.field private mSendResultCalled:Z

.field final synthetic this$0:Landroid/service/media/MediaBrowserService;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/media/MediaBrowserService;
    .param p2, "debug"    # Ljava/lang/Object;

    .prologue
    .line 135
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$Result;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Landroid/service/media/MediaBrowserService$Result;->mDebug:Ljava/lang/Object;

    .line 135
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 3

    .prologue
    .line 155
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mDetachCalled:Z

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "detach() called when detach() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$Result;->mDebug:Ljava/lang/Object;

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mSendResultCalled:Z

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "detach() called when sendResult() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$Result;->mDebug:Ljava/lang/Object;

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mDetachCalled:Z

    .line 154
    return-void
.end method

.method isDone()Z
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mDetachCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mSendResultCalled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onResultSent(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public sendResult(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mSendResultCalled:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResult() called twice for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$Result;->mDebug:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/media/MediaBrowserService$Result;->mSendResultCalled:Z

    .line 147
    iget v0, p0, Landroid/service/media/MediaBrowserService$Result;->mFlags:I

    invoke-virtual {p0, p1, v0}, Landroid/service/media/MediaBrowserService$Result;->onResultSent(Ljava/lang/Object;I)V

    .line 142
    return-void
.end method

.method setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 171
    .local p0, "this":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<TT;>;"
    iput p1, p0, Landroid/service/media/MediaBrowserService$Result;->mFlags:I

    .line 170
    return-void
.end method
