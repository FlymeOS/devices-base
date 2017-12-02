.class public Landroid/transition/TransitionSet;
.super Landroid/transition/Transition;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TransitionSet$TransitionSetListener;
    }
.end annotation


# static fields
.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# instance fields
.field mCurrentListeners:I

.field private mPlayTogether:Z

.field mStarted:Z

.field mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mStarted:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 58
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    .line 60
    iput-boolean v3, p0, Landroid/transition/TransitionSet;->mStarted:Z

    .line 86
    sget-object v2, Lcom/android/internal/R$styleable;->TransitionSet:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 89
    .local v1, "ordering":I
    invoke-virtual {p0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method private setupStartEndListeners()V
    .locals 4

    .prologue
    .line 339
    new-instance v2, Landroid/transition/TransitionSet$TransitionSetListener;

    invoke-direct {v2, p0}, Landroid/transition/TransitionSet$TransitionSetListener;-><init>(Landroid/transition/TransitionSet;)V

    .line 340
    .local v2, "listener":Landroid/transition/TransitionSet$TransitionSetListener;
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "childTransition$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .line 341
    .local v0, "childTransition":Landroid/transition/Transition;
    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_0

    .line 343
    .end local v0    # "childTransition":Landroid/transition/Transition;
    :cond_0
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Landroid/transition/TransitionSet;->mCurrentListeners:I

    .line 338
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic addTarget(I)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(I)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetType"    # Ljava/lang/Class;

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public addTarget(I)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "targetId"    # I

    .prologue
    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 218
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public addTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "targetType"    # Ljava/lang/Class;

    .prologue
    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 234
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public addTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 226
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .locals 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iput-object p0, p1, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    .line 146
    iget-wide v0, p0, Landroid/transition/TransitionSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 147
    iget-wide v0, p0, Landroid/transition/TransitionSet;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 150
    :cond_0
    return-object p0
.end method

.method protected cancel()V
    .locals 3

    .prologue
    .line 494
    invoke-super {p0}, Landroid/transition/Transition;->cancel()V

    .line 495
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 496
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 497
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2}, Landroid/transition/Transition;->cancel()V

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_0
    return-void
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 452
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "childTransition$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .line 454
    .local v0, "childTransition":Landroid/transition/Transition;
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {v0, p1}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 456
    iget-object v2, p1, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 451
    .end local v0    # "childTransition":Landroid/transition/Transition;
    .end local v1    # "childTransition$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method capturePropagationValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 464
    invoke-super {p0, p1}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 465
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 466
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 467
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 440
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "childTransition$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .line 442
    .local v0, "childTransition":Landroid/transition/Transition;
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {v0, p1}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 444
    iget-object v2, p1, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    .end local v0    # "childTransition":Landroid/transition/Transition;
    .end local v1    # "childTransition$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->clone()Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/transition/TransitionSet;
    .locals 4

    .prologue
    .line 559
    invoke-super {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    .line 560
    .local v0, "clone":Landroid/transition/TransitionSet;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 561
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 562
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 563
    iget-object v3, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition;

    invoke-virtual {v3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    :cond_0
    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/transition/TransitionValuesMaps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/transition/TransitionValuesMaps;",
            "Landroid/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->getStartDelay()J

    move-result-wide v10

    .line 383
    .local v10, "startDelay":J
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 384
    .local v9, "numTransitions":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_3

    .line 385
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .line 388
    .local v0, "childTransition":Landroid/transition/Transition;
    const-wide/16 v2, 0x0

    cmp-long v1, v10, v2

    if-lez v1, :cond_1

    iget-boolean v1, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    if-nez v1, :cond_0

    if-nez v8, :cond_1

    .line 389
    :cond_0
    invoke-virtual {v0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v6

    .line 390
    .local v6, "childStartDelay":J
    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-lez v1, :cond_2

    .line 391
    add-long v2, v10, v6

    invoke-virtual {v0, v2, v3}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    .end local v6    # "childStartDelay":J
    :cond_1
    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 396
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 384
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 393
    .restart local v6    # "childStartDelay":J
    :cond_2
    invoke-virtual {v0, v10, v11}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    goto :goto_1

    .line 381
    .end local v0    # "childTransition":Landroid/transition/Transition;
    .end local v6    # "childStartDelay":J
    :cond_3
    return-void
.end method

.method public excludeTarget(IZ)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 295
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 279
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 303
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    .prologue
    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 287
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 504
    invoke-super {p0, p1}, Landroid/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 505
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 506
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 507
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    return-void
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTransitionAt(I)Landroid/transition/Transition;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 172
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 175
    :cond_1
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    return-object v0
.end method

.method public getTransitionCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public pause(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;

    .prologue
    .line 474
    invoke-super {p0, p1}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    .line 475
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 476
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 477
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    :cond_0
    return-void
.end method

.method public bridge synthetic removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic removeTarget(I)Landroid/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(I)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Ljava/lang/Class;

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public removeTarget(I)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "targetId"    # I

    .prologue
    .line 246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 247
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(I)Landroid/transition/Transition;

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(I)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public removeTarget(Landroid/view/View;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public removeTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Ljava/lang/Class;

    .prologue
    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 263
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public removeTarget(Ljava/lang/String;)Landroid/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 271
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-super {p0, p1}, Landroid/transition/Transition;->removeTarget(Ljava/lang/String;)Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionSet;

    return-object v1
.end method

.method public removeTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 328
    iget-object v0, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 329
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/transition/Transition;->mParent:Landroid/transition/TransitionSet;

    .line 330
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;

    .prologue
    .line 484
    invoke-super {p0, p1}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    .line 485
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 486
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 487
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 7

    .prologue
    .line 406
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 407
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->start()V

    .line 408
    invoke-virtual {p0}, Landroid/transition/TransitionSet;->end()V

    .line 409
    return-void

    .line 411
    :cond_0
    invoke-direct {p0}, Landroid/transition/TransitionSet;->setupStartEndListeners()V

    .line 412
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 413
    .local v3, "numTransitions":I
    iget-boolean v5, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    if-nez v5, :cond_3

    .line 416
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 417
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition;

    .line 418
    .local v4, "previousTransition":Landroid/transition/Transition;
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    .line 419
    .local v2, "nextTransition":Landroid/transition/Transition;
    new-instance v5, Landroid/transition/TransitionSet$1;

    invoke-direct {v5, p0, v2}, Landroid/transition/TransitionSet$1;-><init>(Landroid/transition/TransitionSet;Landroid/transition/Transition;)V

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v2    # "nextTransition":Landroid/transition/Transition;
    .end local v4    # "previousTransition":Landroid/transition/Transition;
    :cond_1
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    .line 428
    .local v0, "firstTransition":Landroid/transition/Transition;
    if-eqz v0, :cond_2

    .line 429
    invoke-virtual {v0}, Landroid/transition/Transition;->runAnimators()V

    .line 405
    .end local v0    # "firstTransition":Landroid/transition/Transition;
    :cond_2
    return-void

    .line 432
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 433
    iget-object v5, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition;

    invoke-virtual {v5}, Landroid/transition/Transition;->runAnimators()V

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method setCanRemoveViews(Z)V
    .locals 3
    .param p1, "canRemoveViews"    # Z

    .prologue
    .line 523
    invoke-super {p0, p1}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    .line 524
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 525
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 526
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/transition/Transition;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 186
    invoke-virtual {p0, p1, p2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/transition/TransitionSet;
    .locals 7
    .param p1, "duration"    # J

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 188
    iget-wide v2, p0, Landroid/transition/TransitionSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 190
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 191
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "i":I
    .end local v1    # "numTransitions":I
    :cond_0
    return-object p0
.end method

.method public setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .locals 3
    .param p1, "epicenterCallback"    # Landroid/transition/Transition$EpicenterCallback;

    .prologue
    .line 541
    invoke-super {p0, p1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 542
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 543
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 544
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_0
    return-void
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method public setOrdering(I)Landroid/transition/TransitionSet;
    .locals 3
    .param p1, "ordering"    # I

    .prologue
    .line 102
    packed-switch p1, :pswitch_data_0

    .line 110
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    .line 113
    :goto_0
    return-object p0

    .line 107
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/TransitionSet;->mPlayTogether:Z

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPathMotion(Landroid/transition/PathMotion;)V
    .locals 2
    .param p1, "pathMotion"    # Landroid/transition/PathMotion;

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method public setPropagation(Landroid/transition/TransitionPropagation;)V
    .locals 3
    .param p1, "propagation"    # Landroid/transition/TransitionPropagation;

    .prologue
    .line 532
    invoke-super {p0, p1}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 533
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 534
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 535
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_0
    return-void
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 512
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/TransitionSet;
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 513
    invoke-super {p0, p1}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    .line 514
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 515
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 516
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)Landroid/transition/Transition;
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2}, Landroid/transition/TransitionSet;->setStartDelay(J)Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public setStartDelay(J)Landroid/transition/TransitionSet;
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionSet;

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 550
    invoke-super {p0, p1}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_0
    return-object v1
.end method
