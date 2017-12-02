.class final Landroid/view/KeyboardShortcutGroup$1;
.super Ljava/lang/Object;
.source "KeyboardShortcutGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyboardShortcutGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/KeyboardShortcutGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyboardShortcutGroup;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 127
    new-instance v0, Landroid/view/KeyboardShortcutGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/KeyboardShortcutGroup;-><init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutGroup;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Landroid/view/KeyboardShortcutGroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/KeyboardShortcutGroup;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 130
    new-array v0, p1, [Landroid/view/KeyboardShortcutGroup;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Landroid/view/KeyboardShortcutGroup$1;->newArray(I)[Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    return-object v0
.end method
