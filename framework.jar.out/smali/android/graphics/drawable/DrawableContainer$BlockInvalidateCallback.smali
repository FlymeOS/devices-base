.class Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;
.super Ljava/lang/Object;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/DrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockInvalidateCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1247
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 1253
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 1252
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 1260
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 1259
    :cond_0
    return-void
.end method

.method public unwrap()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    .prologue
    .line 1241
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 1242
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 1243
    return-object v0
.end method

.method public wrap(Landroid/graphics/drawable/Drawable$Callback;)Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;
    .locals 0
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    .line 1236
    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 1237
    return-object p0
.end method
