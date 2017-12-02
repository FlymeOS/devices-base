.class public final Landroid/service/notification/Adjustment;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/Adjustment$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/Adjustment;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_KEY_OVERRIDE_KEY:Ljava/lang/String; = "group_key_override"

.field public static final NEEDS_AUTOGROUPING_KEY:Ljava/lang/String; = "autogroup_needed"


# instance fields
.field private final mExplanation:Ljava/lang/CharSequence;

.field private final mImportance:I

.field private final mKey:Ljava/lang/String;

.field private final mPackage:Ljava/lang/String;

.field private final mReference:Landroid/net/Uri;

.field private final mSignals:Landroid/os/Bundle;

.field private final mUser:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Landroid/service/notification/Adjustment$1;

    invoke-direct {v0}, Landroid/service/notification/Adjustment$1;-><init>()V

    sput-object v0, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    .line 72
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    .line 77
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/Adjustment;->mImportance:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    .line 83
    :goto_2
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mReference:Landroid/net/Uri;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    .line 66
    return-void

    .line 70
    :cond_0
    iput-object v2, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_1
    iput-object v2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 81
    :cond_2
    iput-object v2, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/CharSequence;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "importance"    # I
    .param p4, "signals"    # Landroid/os/Bundle;
    .param p5, "explanation"    # Ljava/lang/CharSequence;
    .param p6, "reference"    # Landroid/net/Uri;
    .param p7, "user"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    .line 59
    iput p3, p0, Landroid/service/notification/Adjustment;->mImportance:I

    .line 60
    iput-object p4, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    .line 61
    iput-object p5, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    .line 62
    iput-object p6, p0, Landroid/service/notification/Adjustment;->mReference:Landroid/net/Uri;

    .line 63
    iput p7, p0, Landroid/service/notification/Adjustment;->mUser:I

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getExplanation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroid/service/notification/Adjustment;->mImportance:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mReference:Landroid/net/Uri;

    return-object v0
.end method

.method public getSignals()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUser()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    :goto_0
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    :goto_1
    iget v0, p0, Landroid/service/notification/Adjustment;->mImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 154
    :goto_2
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mReference:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 155
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 156
    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void

    .line 139
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 152
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
