.class public final Landroid/media/session/PlaybackState$CustomAction;
.super Ljava/lang/Object;
.source "PlaybackState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/PlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/PlaybackState$CustomAction$1;,
        Landroid/media/session/PlaybackState$CustomAction$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mName:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 693
    new-instance v0, Landroid/media/session/PlaybackState$CustomAction$1;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$CustomAction$1;-><init>()V

    .line 692
    sput-object v0, Landroid/media/session/PlaybackState$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 656
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mAction:Ljava/lang/String;

    .line 674
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    .line 676
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    .line 672
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/session/PlaybackState$CustomAction;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/session/PlaybackState$CustomAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput-object p1, p0, Landroid/media/session/PlaybackState$CustomAction;->mAction:Ljava/lang/String;

    .line 667
    iput-object p2, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    .line 668
    iput p3, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    .line 669
    iput-object p4, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    .line 665
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/media/session/PlaybackState$CustomAction;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/session/PlaybackState$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Action:mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 747
    iget-object v1, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 748
    const-string/jumbo v1, ", mIcon="

    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 748
    iget v1, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 749
    const-string/jumbo v1, ", mExtras="

    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 749
    iget-object v1, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 681
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 683
    iget v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 680
    return-void
.end method
