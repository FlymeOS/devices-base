.class Landroid/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field mAnimation:Landroid/animation/Animator;

.field mChildNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field mEndTime:J

.field mEnded:Z

.field mLatestParent:Landroid/animation/AnimatorSet$Node;

.field mParents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field mParentsAdded:Z

.field mSiblings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field mStartTime:J

.field private mTmpClone:Landroid/animation/AnimatorSet$Node;

.field mTotalDuration:J


# direct methods
.method static synthetic -get0(Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;

    return-object v0
.end method

.method static synthetic -set0(Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;)Landroid/animation/AnimatorSet$Node;
    .locals 0

    iput-object p1, p0, Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;

    return-object p1
.end method

.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 1113
    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mTmpClone:Landroid/animation/AnimatorSet$Node;

    .line 1120
    iput-boolean v1, p0, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    .line 1138
    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    .line 1140
    iput-boolean v1, p0, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    .line 1141
    iput-wide v2, p0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    .line 1142
    iput-wide v2, p0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    .line 1143
    iput-wide v2, p0, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    .line 1153
    iput-object p1, p0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1152
    return-void
.end method


# virtual methods
.method addChild(Landroid/animation/AnimatorSet$Node;)V
    .locals 1
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;

    .prologue
    .line 1178
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 1181
    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1182
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    .line 1177
    :cond_1
    return-void
.end method

.method public addParent(Landroid/animation/AnimatorSet$Node;)V
    .locals 1
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;

    .prologue
    .line 1198
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    .line 1201
    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1202
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Node;->addChild(Landroid/animation/AnimatorSet$Node;)V

    .line 1197
    :cond_1
    return-void
.end method

.method public addParents(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1208
    .local p1, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    if-nez p1, :cond_0

    .line 1209
    return-void

    .line 1211
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1212
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1213
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    .line 1212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1207
    :cond_1
    return-void
.end method

.method public addSibling(Landroid/animation/AnimatorSet$Node;)V
    .locals 1
    .param p1, "node"    # Landroid/animation/AnimatorSet$Node;

    .prologue
    .line 1188
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 1191
    :cond_0
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1192
    iget-object v0, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Node;->addSibling(Landroid/animation/AnimatorSet$Node;)V

    .line 1187
    :cond_1
    return-void
.end method

.method public clone()Landroid/animation/AnimatorSet$Node;
    .locals 4

    .prologue
    .line 1159
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 1160
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    .line 1161
    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1162
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    .line 1164
    :cond_0
    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1165
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    .line 1167
    :cond_1
    iget-object v2, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1168
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    .line 1170
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/animation/AnimatorSet$Node;->mEnded:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    return-object v1

    .line 1172
    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    :catch_0
    move-exception v0

    .line 1173
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1157
    invoke-virtual {p0}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method
