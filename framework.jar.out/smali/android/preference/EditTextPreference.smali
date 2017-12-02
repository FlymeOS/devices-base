.class public Landroid/preference/EditTextPreference;
.super Landroid/preference/DialogPreference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/EditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mText:Ljava/lang/String;

.field private mTextSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 60
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 68
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 134
    const v1, 0x10203d3

    .line 133
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 135
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 136
    const/4 v1, -0x1

    .line 137
    const/4 v2, -0x2

    .line 136
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 132
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 116
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 119
    .local v1, "oldParent":Landroid/view/ViewParent;
    if-eq v1, p1, :cond_1

    .line 120
    if-eqz v1, :cond_0

    .line 121
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "oldParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 123
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/preference/EditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 112
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v1, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 142
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 155
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 199
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/EditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 205
    check-cast v0, Landroid/preference/EditTextPreference$SavedState;

    .line 206
    .local v0, "myState":Landroid/preference/EditTextPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 207
    iget-object v1, v0, Landroid/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 198
    return-void

    .line 201
    .end local v0    # "myState":Landroid/preference/EditTextPreference$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 202
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 187
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    return-object v1

    .line 192
    :cond_0
    new-instance v0, Landroid/preference/EditTextPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 193
    .local v0, "myState":Landroid/preference/EditTextPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    .line 194
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 160
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 159
    return-void

    .line 160
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 90
    iget-object v2, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 91
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v2, p0, Landroid/preference/EditTextPreference;->mTextSet:Z

    if-eqz v2, :cond_2

    .line 88
    :cond_0
    :goto_1
    return-void

    .end local v0    # "changed":Z
    :cond_1
    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    .restart local v0    # "changed":Z
    :cond_2
    iput-object p1, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Landroid/preference/EditTextPreference;->mTextSet:Z

    .line 94
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistString(Ljava/lang/String;)Z

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 97
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    goto :goto_1
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/DialogPreference;->shouldDisableDependents()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
