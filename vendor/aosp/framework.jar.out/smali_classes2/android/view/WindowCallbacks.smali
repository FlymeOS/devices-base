.class public interface abstract Landroid/view/WindowCallbacks;
.super Ljava/lang/Object;
.source "WindowCallbacks.java"


# static fields
.field public static final RESIZE_MODE_DOCKED_DIVIDER:I = 0x1

.field public static final RESIZE_MODE_FREEFORM:I = 0x0

.field public static final RESIZE_MODE_INVALID:I = -0x1


# virtual methods
.method public abstract onContentDrawn(IIII)Z
.end method

.method public abstract onPostDraw(Landroid/view/DisplayListCanvas;)V
.end method

.method public abstract onRequestDraw(Z)V
.end method

.method public abstract onWindowDragResizeEnd()V
.end method

.method public abstract onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
.end method

.method public abstract onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method
