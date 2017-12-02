.class final Landroid/view/inputmethod/InputContentInfo$1;
.super Ljava/lang/Object;
.source "InputContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputContentInfo;
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
        "Landroid/view/inputmethod/InputContentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/InputContentInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 234
    new-instance v0, Landroid/view/inputmethod/InputContentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/inputmethod/InputContentInfo;-><init>(Landroid/os/Parcel;Landroid/view/inputmethod/InputContentInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputContentInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/InputContentInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/inputmethod/InputContentInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 239
    new-array v0, p1, [Landroid/view/inputmethod/InputContentInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputContentInfo$1;->newArray(I)[Landroid/view/inputmethod/InputContentInfo;

    move-result-object v0

    return-object v0
.end method
