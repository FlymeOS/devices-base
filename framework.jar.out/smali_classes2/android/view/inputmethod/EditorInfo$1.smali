.class final Landroid/view/inputmethod/EditorInfo$1;
.super Ljava/lang/Object;
.source "EditorInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/EditorInfo;
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
        "Landroid/view/inputmethod/EditorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/EditorInfo;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 473
    new-instance v1, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v1}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 474
    .local v1, "res":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 477
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 482
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 483
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 488
    sget-object v2, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    .line 489
    .local v0, "hintLocales":Landroid/os/LocaleList;
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .end local v0    # "hintLocales":Landroid/os/LocaleList;
    :cond_0
    iput-object v0, v1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    .line 491
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/EditorInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/inputmethod/EditorInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 495
    new-array v0, p1, [Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/EditorInfo$1;->newArray(I)[Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    return-object v0
.end method
