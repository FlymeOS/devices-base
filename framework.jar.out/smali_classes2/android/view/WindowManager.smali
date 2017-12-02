.class public interface abstract Landroid/view/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$BadTokenException;,
        Landroid/view/WindowManager$InvalidDisplayException;,
        Landroid/view/WindowManager$KeyboardShortcutsReceiver;,
        Landroid/view/WindowManager$LayoutParams;
    }
.end annotation


# static fields
.field public static final DOCKED_BOTTOM:I = 0x4

.field public static final DOCKED_INVALID:I = -0x1

.field public static final DOCKED_LEFT:I = 0x1

.field public static final DOCKED_RIGHT:I = 0x3

.field public static final DOCKED_TOP:I = 0x2

.field public static final PARCEL_KEY_SHORTCUTS_ARRAY:Ljava/lang/String; = "shortcuts_array"

.field public static final TAKE_SCREENSHOT_FULLSCREEN:I = 0x1

.field public static final TAKE_SCREENSHOT_SELECTED_REGION:I = 0x2


# virtual methods
.method public abstract getDefaultDisplay()Landroid/view/Display;
.end method

.method public abstract removeViewImmediate(Landroid/view/View;)V
.end method

.method public abstract requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
.end method
