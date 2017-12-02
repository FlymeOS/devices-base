.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$DisappearListener;,
        Landroid/transition/Visibility$VisibilityInfo;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I

.field private mSuppressLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 73
    const-string/jumbo v1, "android:visibility:visibility"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "android:visibility:parent"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 72
    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/4 v2, 0x3

    iput v2, p0, Landroid/transition/Visibility;->mMode:I

    .line 87
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    .line 93
    sget-object v2, Lcom/android/internal/R$styleable;->VisibilityTransition:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 95
    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0, v1}, Landroid/transition/Visibility;->setMode(I)V

    .line 91
    :cond_0
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 143
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 144
    .local v1, "visibility":I
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v3, "android:visibility:visibility"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v3, "android:visibility:parent"

    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 147
    .local v0, "loc":[I
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 148
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method private static getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;
    .locals 7
    .param p0, "startValues"    # Landroid/transition/TransitionValues;
    .param p1, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 188
    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    invoke-direct {v0, v3}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility$VisibilityInfo;)V

    .line 189
    .local v0, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    .line 190
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 191
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 193
    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    .line 198
    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 200
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    .line 205
    :goto_1
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 206
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-ne v1, v2, :cond_2

    .line 207
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_2

    .line 208
    return-object v0

    .line 195
    :cond_0
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 196
    iput-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 202
    :cond_1
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    .line 203
    iput-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 210
    :cond_2
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-eq v1, v2, :cond_5

    .line 211
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v1, :cond_4

    .line 212
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 213
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    .line 236
    :cond_3
    :goto_2
    return-object v0

    .line 214
    :cond_4
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v1, :cond_3

    .line 215
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 216
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 219
    :cond_5
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eq v1, v2, :cond_3

    .line 220
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_6

    .line 221
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 222
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 223
    :cond_6
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    .line 224
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 225
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 229
    :cond_7
    if-nez p0, :cond_8

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v1, :cond_8

    .line 230
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 231
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    .line 232
    :cond_8
    if-nez p1, :cond_3

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v1, :cond_3

    .line 233
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    .line 234
    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    .line 157
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    .line 152
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-static {p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v6

    .line 243
    .local v6, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 245
    :cond_0
    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz v0, :cond_1

    .line 246
    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 247
    iget v5, v6, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 246
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 249
    :cond_1
    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    .line 250
    iget v5, v6, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 249
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 254
    :cond_2
    return-object v1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 6
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "newValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 456
    return v2

    .line 458
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 459
    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:visibility:visibility"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 460
    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 459
    if-eq v3, v4, :cond_1

    .line 463
    return v2

    .line 465
    :cond_1
    invoke-static {p1, p2}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 466
    .local v0, "changeInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v3, :cond_4

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-eqz v3, :cond_2

    .line 467
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v3, :cond_3

    .line 466
    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 467
    goto :goto_0

    :cond_4
    move v1, v2

    .line 466
    goto :goto_0
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .locals 5
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v3, 0x0

    .line 177
    if-nez p1, :cond_0

    .line 178
    return v3

    .line 180
    :cond_0
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:visibility:visibility"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 181
    .local v1, "visibility":I
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:visibility:parent"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 183
    .local v0, "parent":Landroid/view/View;
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 278
    iget v4, p0, Landroid/transition/Visibility;->mMode:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    if-nez p4, :cond_1

    .line 279
    :cond_0
    return-object v6

    .line 281
    :cond_1
    if-nez p2, :cond_2

    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-object v4, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 284
    .local v0, "endParent":Landroid/view/View;
    invoke-virtual {p0, v0, v7}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v3

    .line 286
    .local v3, "startParentValues":Landroid/transition/TransitionValues;
    invoke-virtual {p0, v0, v7}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v1

    .line 288
    .local v1, "endParentValues":Landroid/transition/TransitionValues;
    invoke-static {v3, v1}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v2

    .line 289
    .local v2, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v4, v2, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v4, :cond_2

    .line 290
    return-object v6

    .line 293
    .end local v0    # "endParent":Landroid/view/View;
    .end local v1    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v2    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v3    # "startParentValues":Landroid/transition/TransitionValues;
    :cond_2
    iget-object v4, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v4, p2, p4}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v4

    return-object v4
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 26
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 353
    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/Visibility;->mMode:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x2

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 354
    const/16 v24, 0x0

    return-object v24

    .line 357
    :cond_0
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v22, v0

    .line 358
    :goto_0
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 359
    .local v8, "endView":Landroid/view/View;
    :goto_1
    const/4 v15, 0x0

    .line 360
    .local v15, "overlayView":Landroid/view/View;
    const/16 v23, 0x0

    .line 361
    .local v23, "viewToKeep":Landroid/view/View;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-nez v24, :cond_8

    .line 362
    :cond_1
    if-eqz v8, :cond_5

    .line 364
    move-object v15, v8

    .line 407
    .end local v15    # "overlayView":Landroid/view/View;
    .end local v23    # "viewToKeep":Landroid/view/View;
    :cond_2
    :goto_2
    move/from16 v11, p5

    .line 408
    .local v11, "finalVisibility":I
    move-object/from16 v10, p1

    .line 410
    .local v10, "finalSceneRoot":Landroid/view/ViewGroup;
    if-eqz v15, :cond_c

    .line 412
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string/jumbo v25, "android:visibility:screenLocation"

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    .line 413
    .local v17, "screenLoc":[I
    const/16 v24, 0x0

    aget v18, v17, v24

    .line 414
    .local v18, "screenX":I
    const/16 v24, 0x1

    aget v19, v17, v24

    .line 415
    .local v19, "screenY":I
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v13, v0, [I

    .line 416
    .local v13, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 417
    const/16 v24, 0x0

    aget v24, v13, v24

    sub-int v24, v18, v24

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 418
    const/16 v24, 0x1

    aget v24, v13, v24

    sub-int v24, v19, v24

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    .line 421
    .local v5, "animator":Landroid/animation/Animator;
    if-nez v5, :cond_b

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 432
    :goto_3
    return-object v5

    .line 357
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v8    # "endView":Landroid/view/View;
    .end local v10    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v11    # "finalVisibility":I
    .end local v13    # "loc":[I
    .end local v17    # "screenLoc":[I
    .end local v18    # "screenX":I
    .end local v19    # "screenY":I
    :cond_3
    const/16 v22, 0x0

    .local v22, "startView":Landroid/view/View;
    goto/16 :goto_0

    .line 358
    .end local v22    # "startView":Landroid/view/View;
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 365
    .restart local v8    # "endView":Landroid/view/View;
    .restart local v15    # "overlayView":Landroid/view/View;
    .restart local v23    # "viewToKeep":Landroid/view/View;
    :cond_5
    if-eqz v22, :cond_2

    .line 369
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-nez v24, :cond_6

    .line 371
    move-object/from16 v15, v22

    .local v15, "overlayView":Landroid/view/View;
    goto :goto_2

    .line 372
    .local v15, "overlayView":Landroid/view/View;
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/view/View;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 373
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    .line 374
    .local v20, "startParent":Landroid/view/View;
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v21

    .line 376
    .local v21, "startParentValues":Landroid/transition/TransitionValues;
    const/16 v24, 0x1

    .line 375
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v7

    .line 378
    .local v7, "endParentValues":Landroid/transition/TransitionValues;
    move-object/from16 v0, v21

    invoke-static {v0, v7}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v16

    .line 379
    .local v16, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    .line 380
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v15

    .local v15, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    .line 382
    .local v15, "overlayView":Landroid/view/View;
    :cond_7
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-nez v24, :cond_2

    .line 383
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getId()I

    move-result v12

    .line 384
    .local v12, "id":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v12, v0, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    if-eqz v24, :cond_2

    .line 385
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    move/from16 v24, v0

    .line 384
    if-eqz v24, :cond_2

    .line 389
    move-object/from16 v15, v22

    .local v15, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    .line 396
    .end local v7    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v12    # "id":I
    .end local v16    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v20    # "startParent":Landroid/view/View;
    .end local v21    # "startParentValues":Landroid/transition/TransitionValues;
    .local v15, "overlayView":Landroid/view/View;
    :cond_8
    const/16 v24, 0x4

    move/from16 v0, p5

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 397
    move-object/from16 v23, v8

    .local v23, "viewToKeep":Landroid/view/View;
    goto/16 :goto_2

    .line 400
    .local v23, "viewToKeep":Landroid/view/View;
    :cond_9
    move-object/from16 v0, v22

    if-ne v0, v8, :cond_a

    .line 401
    move-object/from16 v23, v8

    .local v23, "viewToKeep":Landroid/view/View;
    goto/16 :goto_2

    .line 403
    .local v23, "viewToKeep":Landroid/view/View;
    :cond_a
    move-object/from16 v15, v22

    .local v15, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    .line 424
    .end local v15    # "overlayView":Landroid/view/View;
    .end local v23    # "viewToKeep":Landroid/view/View;
    .restart local v5    # "animator":Landroid/animation/Animator;
    .restart local v10    # "finalSceneRoot":Landroid/view/ViewGroup;
    .restart local v11    # "finalVisibility":I
    .restart local v13    # "loc":[I
    .restart local v17    # "screenLoc":[I
    .restart local v18    # "screenX":I
    .restart local v19    # "screenY":I
    :cond_b
    move-object v9, v15

    .line 425
    .local v9, "finalOverlayView":Landroid/view/View;
    new-instance v24, Landroid/transition/Visibility$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v9}, Landroid/transition/Visibility$1;-><init>(Landroid/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/16 :goto_3

    .line 435
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v9    # "finalOverlayView":Landroid/view/View;
    .end local v13    # "loc":[I
    .end local v17    # "screenLoc":[I
    .end local v18    # "screenX":I
    .end local v19    # "screenY":I
    :cond_c
    if-eqz v23, :cond_e

    .line 436
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v14

    .line 437
    .local v14, "originalVisibility":I
    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 438
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    .line 439
    .restart local v5    # "animator":Landroid/animation/Animator;
    if-eqz v5, :cond_d

    .line 440
    new-instance v6, Landroid/transition/Visibility$DisappearListener;

    .line 441
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/transition/Visibility;->mSuppressLayout:Z

    move/from16 v24, v0

    .line 440
    move-object/from16 v0, v23

    move/from16 v1, p5

    move/from16 v2, v24

    invoke-direct {v6, v0, v1, v2}, Landroid/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 442
    .local v6, "disappearListener":Landroid/transition/Visibility$DisappearListener;
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 443
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 444
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 448
    .end local v6    # "disappearListener":Landroid/transition/Visibility$DisappearListener;
    :goto_4
    return-object v5

    .line 446
    :cond_d
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/view/View;->setTransitionVisibility(I)V

    goto :goto_4

    .line 450
    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v14    # "originalVisibility":I
    :cond_e
    const/16 v24, 0x0

    return-object v24
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 488
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 119
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput p1, p0, Landroid/transition/Visibility;->mMode:I

    .line 118
    return-void
.end method

.method public setSuppressLayout(Z)V
    .locals 0
    .param p1, "suppress"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    .line 106
    return-void
.end method
