.class final Landroid/app/AutomaticZenRule$1;
.super Ljava/lang/Object;
.source "AutomaticZenRule.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AutomaticZenRule;
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
        "Landroid/app/AutomaticZenRule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/AutomaticZenRule;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 206
    new-instance v0, Landroid/app/AutomaticZenRule;

    invoke-direct {v0, p1}, Landroid/app/AutomaticZenRule;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Landroid/app/AutomaticZenRule$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/AutomaticZenRule;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 210
    new-array v0, p1, [Landroid/app/AutomaticZenRule;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Landroid/app/AutomaticZenRule$1;->newArray(I)[Landroid/app/AutomaticZenRule;

    move-result-object v0

    return-object v0
.end method
