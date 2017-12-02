.class public Landroid/accessibilityservice/GestureDescription$Builder;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    .line 157
    return-void
.end method


# virtual methods
.method public addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;
    .locals 4
    .param p1, "strokeDescription"    # Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .prologue
    .line 172
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 174
    const-string/jumbo v1, "Attempting to add too many strokes to a gesture"

    .line 173
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-static {v0}, Landroid/accessibilityservice/GestureDescription;->-wrap2(Ljava/util/List;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 180
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 182
    const-string/jumbo v1, "Gesture would exceed maximum duration with new stroke"

    .line 181
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    return-object p0
.end method

.method public build()Landroid/accessibilityservice/GestureDescription;
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Gestures must have at least one stroke"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    new-instance v0, Landroid/accessibilityservice/GestureDescription;

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$Builder;->mStrokes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;Landroid/accessibilityservice/GestureDescription;)V

    return-object v0
.end method
