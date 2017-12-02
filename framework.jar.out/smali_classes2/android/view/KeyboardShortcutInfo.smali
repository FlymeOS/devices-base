.class public final Landroid/view/KeyboardShortcutInfo;
.super Ljava/lang/Object;
.source "KeyboardShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyboardShortcutInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseCharacter:C

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mKeycode:I

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mModifiers:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Landroid/view/KeyboardShortcutInfo$1;

    invoke-direct {v0}, Landroid/view/KeyboardShortcutInfo$1;-><init>()V

    .line 158
    sput-object v0, Landroid/view/KeyboardShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/KeyboardShortcutInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;CI)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "baseCharacter"    # C
    .param p3, "modifiers"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 84
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 85
    iput-char p2, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 86
    iput v1, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 87
    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 82
    return-void

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "keycode"    # I
    .param p3, "modifiers"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "keycode"    # I
    .param p4, "modifiers"    # I

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 52
    iput-object p2, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 53
    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 54
    if-ltz p3, :cond_0

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    if-gt p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 55
    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 56
    iput p4, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseCharacter()C
    .locals 1

    .prologue
    .line 131
    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getKeycode()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 151
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 153
    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return-void
.end method
