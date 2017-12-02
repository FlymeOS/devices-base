.class final Landroid/graphics/drawable/VectorDrawable$VPath$1;
.super Landroid/util/Property;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/graphics/drawable/VectorDrawable$VPath;",
        "Landroid/util/PathParser$PathData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous1"    # Ljava/lang/String;

    .prologue
    .line 1471
    .local p1, "$anonymous0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/util/PathParser$PathData;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/VectorDrawable$VPath;)Landroid/util/PathParser$PathData;
    .locals 1
    .param p1, "object"    # Landroid/graphics/drawable/VectorDrawable$VPath;

    .prologue
    .line 1479
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VPath;->getPathData()Landroid/util/PathParser$PathData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1478
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VPath;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath$1;->get(Landroid/graphics/drawable/VectorDrawable$VPath;)Landroid/util/PathParser$PathData;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/graphics/drawable/VectorDrawable$VPath;Landroid/util/PathParser$PathData;)V
    .locals 0
    .param p1, "object"    # Landroid/graphics/drawable/VectorDrawable$VPath;
    .param p2, "data"    # Landroid/util/PathParser$PathData;

    .prologue
    .line 1474
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->setPathData(Landroid/util/PathParser$PathData;)V

    .line 1473
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1473
    check-cast p1, Landroid/graphics/drawable/VectorDrawable$VPath;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p2, Landroid/util/PathParser$PathData;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable$VPath$1;->set(Landroid/graphics/drawable/VectorDrawable$VPath;Landroid/util/PathParser$PathData;)V

    return-void
.end method
