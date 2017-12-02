.class final Landroid/view/KeyboardShortcutInfo$1;
.super Ljava/lang/Object;
.source "KeyboardShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyboardShortcutInfo;
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
        "Landroid/view/KeyboardShortcutInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyboardShortcutInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 161
    new-instance v0, Landroid/view/KeyboardShortcutInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/KeyboardShortcutInfo;-><init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Landroid/view/KeyboardShortcutInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyboardShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/KeyboardShortcutInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 164
    new-array v0, p1, [Landroid/view/KeyboardShortcutInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Landroid/view/KeyboardShortcutInfo$1;->newArray(I)[Landroid/view/KeyboardShortcutInfo;

    move-result-object v0

    return-object v0
.end method
