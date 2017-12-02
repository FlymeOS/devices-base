.class public Landroid/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimationHandler$1;,
        Landroid/animation/AnimationHandler$AnimationFrameCallback;,
        Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;,
        Landroid/animation/AnimationHandler$MyFrameCallbackProvider;
    }
.end annotation


# static fields
.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommitCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayedCallbackStartTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mListDirty:Z

.field private mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static synthetic -get0(Landroid/animation/AnimationHandler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V
    .locals 0
    .param p1, "callback"    # Landroid/animation/AnimationHandler$AnimationFrameCallback;
    .param p2, "frameTime"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/animation/AnimationHandler;->commitAnimationFrame(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/animation/AnimationHandler;J)V
    .locals 1
    .param p1, "frameTime"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/animation/AnimationHandler;->doAnimationFrame(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 43
    iput-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iput-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iput-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroid/animation/AnimationHandler$1;

    invoke-direct {v0, p0}, Landroid/animation/AnimationHandler$1;-><init>(Landroid/animation/AnimationHandler;)V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    .line 37
    return-void
.end method

.method private cleanUpList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-boolean v1, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 220
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 219
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 224
    :cond_1
    iput-boolean v2, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    .line 217
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private commitAnimationFrame(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V
    .locals 2
    .param p1, "callback"    # Landroid/animation/AnimationHandler$AnimationFrameCallback;
    .param p2, "frameTime"    # J

    .prologue
    .line 161
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 161
    if-eqz v0, :cond_0

    .line 163
    invoke-interface {p1, p2, p3}, Landroid/animation/AnimationHandler$AnimationFrameCallback;->commitAnimationFrame(J)V

    .line 164
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    return-void
.end method

.method private doAnimationFrame(J)V
    .locals 7
    .param p1, "frameTime"    # J

    .prologue
    .line 138
    iget-object v5, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 139
    .local v4, "size":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 140
    .local v2, "currentTime":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 141
    iget-object v5, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimationHandler$AnimationFrameCallback;

    .line 142
    .local v0, "callback":Landroid/animation/AnimationHandler$AnimationFrameCallback;
    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0, v0, v2, v3}, Landroid/animation/AnimationHandler;->isCallbackDue(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    invoke-interface {v0, p1, p2}, Landroid/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)V

    .line 147
    iget-object v5, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v5

    new-instance v6, Landroid/animation/AnimationHandler$2;

    invoke-direct {v6, p0, v0}, Landroid/animation/AnimationHandler$2;-><init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    invoke-interface {v5, v6}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postCommitCallback(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 157
    .end local v0    # "callback":Landroid/animation/AnimationHandler$AnimationFrameCallback;
    :cond_2
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->cleanUpList()V

    .line 137
    return-void
.end method

.method public static getAnimationCount()I
    .locals 2

    .prologue
    .line 190
    sget-object v1, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimationHandler;

    .line 191
    .local v0, "handler":Landroid/animation/AnimationHandler;
    if-nez v0, :cond_0

    .line 192
    const/4 v1, 0x0

    return v1

    .line 194
    :cond_0
    invoke-direct {v0}, Landroid/animation/AnimationHandler;->getCallbackSize()I

    move-result v1

    return v1
.end method

.method private getCallbackSize()I
    .locals 4

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "count":I
    iget-object v3, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 231
    .local v2, "size":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 232
    iget-object v3, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 233
    add-int/lit8 v0, v0, 0x1

    .line 231
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 236
    :cond_1
    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-direct {v0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Landroid/animation/AnimationHandler;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    new-instance v1, Landroid/animation/AnimationHandler;

    invoke-direct {v1}, Landroid/animation/AnimationHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 68
    :cond_0
    sget-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method private getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;

    invoke-direct {v0, p0, v1}, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;-><init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$MyFrameCallbackProvider;)V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 87
    :cond_0
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    return-object v0
.end method

.method private isCallbackDue(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .locals 6
    .param p1, "callback"    # Landroid/animation/AnimationHandler$AnimationFrameCallback;
    .param p2, "currentTime"    # J

    .prologue
    const/4 v4, 0x1

    .line 175
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 176
    .local v0, "startTime":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 177
    return v4

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-gez v1, :cond_1

    .line 180
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return v4

    .line 183
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static setFrameDelay(J)V
    .locals 2
    .param p0, "delay"    # J

    .prologue
    .line 198
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-direct {v0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->setFrameDelay(J)V

    .line 197
    return-void
.end method


# virtual methods
.method public addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V
    .locals 4
    .param p1, "callback"    # Landroid/animation/AnimationHandler$AnimationFrameCallback;
    .param p2, "delay"    # J

    .prologue
    .line 94
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v0, v1}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 97
    :cond_0
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 102
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_2
    return-void
.end method

.method public addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/animation/AnimationHandler$AnimationFrameCallback;

    .prologue
    .line 118
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    return-void
.end method

.method autoCancelBasedOn(Landroid/animation/ObjectAnimator;)V
    .locals 3
    .param p1, "objectAnimator"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 206
    iget-object v2, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 207
    iget-object v2, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimationHandler$AnimationFrameCallback;

    .line 208
    .local v0, "cb":Landroid/animation/AnimationHandler$AnimationFrameCallback;
    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->shouldAutoCancel(Landroid/animation/AnimationHandler$AnimationFrameCallback;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    .line 205
    .end local v0    # "cb":Landroid/animation/AnimationHandler$AnimationFrameCallback;
    :cond_2
    return-void
.end method

.method public removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/animation/AnimationHandler$AnimationFrameCallback;

    .prologue
    .line 128
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 131
    .local v0, "id":I
    if-ltz v0, :cond_0

    .line 132
    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    .line 127
    :cond_0
    return-void
.end method

.method public setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .prologue
    const/4 v1, 0x0

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;

    invoke-direct {v0, p0, v1}, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;-><init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$MyFrameCallbackProvider;)V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 75
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    goto :goto_0
.end method
