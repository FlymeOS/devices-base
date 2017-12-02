.class abstract Landroid/graphics/drawable/VectorDrawable$VObject;
.super Ljava/lang/Object;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "VObject"
.end annotation


# instance fields
.field mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VObject;->mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 2104
    return-void
.end method


# virtual methods
.method abstract applyTheme(Landroid/content/res/Resources$Theme;)V
.end method

.method abstract canApplyTheme()Z
.end method

.method abstract getNativePtr()J
.end method

.method abstract getNativeSize()I
.end method

.method abstract getProperty(Ljava/lang/String;)Landroid/util/Property;
.end method

.method abstract inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
.end method

.method abstract isStateful()Z
.end method

.method isTreeValid()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2107
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VObject;->mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VObject;->mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method abstract onStateChange([I)Z
.end method

.method setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V
    .locals 0
    .param p1, "ptr"    # Lcom/android/internal/util/VirtualRefBasePtr;

    .prologue
    .line 2110
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VObject;->mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 2109
    return-void
.end method
