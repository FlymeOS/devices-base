.class public Landroid/preference/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const v0, 0x1160026

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    sget-object v2, Lcom/android/internal/R$styleable;->ProgressBar:[I

    .line 43
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Landroid/preference/SeekBarPreference;->mMax:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/preference/SeekBarPreference;->setMax(I)V

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    .line 48
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    const/4 v2, 0x0

    .line 52
    const v3, 0x10900b9

    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 53
    .local v1, "layoutResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 40
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 122
    iget v0, p0, Landroid/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 123
    iget p1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 125
    :cond_0
    if-gez p1, :cond_1

    .line 126
    const/4 p1, 0x0

    .line 128
    :cond_1
    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 129
    iput p1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    .line 130
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistInt(I)Z

    .line 131
    if-eqz p2, :cond_2

    .line 132
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 121
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 74
    const v1, 0x10203d4

    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 75
    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 76
    iget v1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 77
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 78
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    return v2

    .line 103
    :cond_0
    const v1, 0x10203d4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 104
    .local v0, "seekBar":Landroid/widget/SeekBar;
    if-nez v0, :cond_1

    .line 105
    return v2

    .line 107
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/widget/AbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 159
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 203
    return-void

    :cond_0
    move-object v0, p1

    .line 207
    check-cast v0, Landroid/preference/SeekBarPreference$SavedState;

    .line 208
    .local v0, "myState":Landroid/preference/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 209
    iget v1, v0, Landroid/preference/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    .line 210
    iget v1, v0, Landroid/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 211
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 199
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 185
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 186
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    return-object v1

    .line 192
    :cond_0
    new-instance v0, Landroid/preference/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 193
    .local v0, "myState":Landroid/preference/SeekBarPreference$SavedState;
    iget v2, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    iput v2, v0, Landroid/preference/SeekBarPreference$SavedState;->progress:I

    .line 194
    iget v2, p0, Landroid/preference/SeekBarPreference;->mMax:I

    iput v2, v0, Landroid/preference/SeekBarPreference$SavedState;->max:I

    .line 195
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    .line 87
    return-void

    .line 89
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 165
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 172
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 173
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 170
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 111
    iget v0, p0, Landroid/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 112
    iput p1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 113
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 110
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/preference/SeekBarPreference;->setProgress(IZ)V

    .line 117
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 147
    .local v0, "progress":I
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/SeekBarPreference;->setProgress(IZ)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
