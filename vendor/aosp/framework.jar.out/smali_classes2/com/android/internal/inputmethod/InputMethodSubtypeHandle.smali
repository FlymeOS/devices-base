.class public Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
.super Ljava/lang/Object;
.source "InputMethodSubtypeHandle.java"


# instance fields
.field private final mInputMethodId:Ljava/lang/String;

.field private final mSubtypeId:I


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    .line 32
    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    .line 30
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "inputMethodId"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 54
    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 58
    .local v0, "other":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    iget-object v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getInputMethodId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget v2, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getSubtypeId()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 58
    :cond_0
    return v1

    .line 55
    .end local v0    # "other":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    :cond_1
    return v1
.end method

.method public getInputMethodId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtypeId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InputMethodSubtypeHandle{mInputMethodId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    const-string/jumbo v1, ", mSubtypeId="

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    iget v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mSubtypeId:I

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "}"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
