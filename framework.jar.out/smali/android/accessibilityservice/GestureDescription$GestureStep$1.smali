.class final Landroid/accessibilityservice/GestureDescription$GestureStep$1;
.super Ljava/lang/Object;
.source "GestureDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription$GestureStep;
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
        "Landroid/accessibilityservice/GestureDescription$GestureStep;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/accessibilityservice/GestureDescription$GestureStep;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 419
    new-instance v0, Landroid/accessibilityservice/GestureDescription$GestureStep;

    invoke-direct {v0, p1}, Landroid/accessibilityservice/GestureDescription$GestureStep;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/GestureDescription$GestureStep$1;->createFromParcel(Landroid/os/Parcel;)Landroid/accessibilityservice/GestureDescription$GestureStep;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/accessibilityservice/GestureDescription$GestureStep;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 423
    new-array v0, p1, [Landroid/accessibilityservice/GestureDescription$GestureStep;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/GestureDescription$GestureStep$1;->newArray(I)[Landroid/accessibilityservice/GestureDescription$GestureStep;

    move-result-object v0

    return-object v0
.end method
