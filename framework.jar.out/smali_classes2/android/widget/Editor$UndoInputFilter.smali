.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private mForceMerge:Z

.field private mHasComposition:Z

.field private mIsUserEdit:Z


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 5713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5714
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 5713
    return-void
.end method

.method private canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v1, 0x0

    .line 5852
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v0, :cond_0

    .line 5854
    return v1

    .line 5857
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get9(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/UndoManager;->isInUndo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5859
    return v1

    .line 5865
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/widget/Editor;->-wrap7(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p4, p5, p6}, Landroid/widget/Editor;->-wrap7(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5872
    if-ne p2, p3, :cond_3

    if-ne p5, p6, :cond_3

    .line 5874
    return v1

    .line 5867
    :cond_2
    return v1

    .line 5877
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private handleCompositionEdit(Ljava/lang/CharSequence;III)Z
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dstart"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 5773
    invoke-direct {p0, p1}, Landroid/widget/Editor$UndoInputFilter;->isComposition(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5774
    iput-boolean v5, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 5775
    return v5

    .line 5777
    :cond_0
    iget-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 5778
    .local v1, "hadComposition":Z
    iput-boolean v4, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 5781
    if-eqz v1, :cond_2

    .line 5783
    if-ne p2, p3, :cond_1

    .line 5784
    return v5

    .line 5788
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 5789
    .local v2, "newText":Ljava/lang/String;
    new-instance v0, Landroid/widget/Editor$EditOperation;

    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    const-string/jumbo v4, ""

    invoke-direct {v0, v3, v4, p4, v2}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;)V

    .line 5790
    .local v0, "edit":Landroid/widget/Editor$EditOperation;
    iget-boolean v3, p0, Landroid/widget/Editor$UndoInputFilter;->mForceMerge:Z

    invoke-direct {p0, v0, v3}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;Z)V

    .line 5791
    return v5

    .line 5795
    .end local v0    # "edit":Landroid/widget/Editor$EditOperation;
    .end local v2    # "newText":Ljava/lang/String;
    :cond_2
    return v4
.end method

.method private handleKeyboardEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)V
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 5804
    iget-boolean v4, p0, Landroid/widget/Editor$UndoInputFilter;->mForceMerge:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->isInTextWatcher()Z

    move-result v1

    .line 5807
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 5808
    .local v2, "newText":Ljava/lang/String;
    invoke-static {p4, p5, p6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    .line 5809
    .local v3, "oldText":Ljava/lang/String;
    new-instance v0, Landroid/widget/Editor$EditOperation;

    iget-object v4, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-direct {v0, v4, v3, p5, v2}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;)V

    .line 5810
    .local v0, "edit":Landroid/widget/Editor$EditOperation;
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;Z)V

    .line 5799
    return-void

    .line 5804
    .end local v0    # "edit":Landroid/widget/Editor$EditOperation;
    .end local v2    # "newText":Ljava/lang/String;
    .end local v3    # "oldText":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    .local v1, "forceMerge":Z
    goto :goto_0
.end method

.method private isComposition(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 5881
    instance-of v4, p1, Landroid/text/Spannable;

    if-nez v4, :cond_0

    .line 5882
    return v3

    :cond_0
    move-object v2, p1

    .line 5885
    check-cast v2, Landroid/text/Spannable;

    .line 5886
    .local v2, "text":Landroid/text/Spannable;
    invoke-static {v2}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 5887
    .local v0, "composeBegin":I
    invoke-static {v2}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 5888
    .local v1, "composeEnd":I
    if-ge v0, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private isInTextWatcher()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5892
    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5893
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v2, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    .line 5894
    check-cast v0, Landroid/text/SpannableStringBuilder;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->getTextWatcherDepth()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 5893
    :cond_0
    return v1
.end method

.method private recordEdit(Landroid/widget/Editor$EditOperation;Z)V
    .locals 6
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;
    .param p2, "forceMerge"    # Z

    .prologue
    const/4 v5, 0x0

    .line 5819
    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get9(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v1

    .line 5820
    .local v1, "um":Landroid/content/UndoManager;
    const-string/jumbo v2, "Edit text"

    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 5822
    const-class v2, Landroid/widget/Editor$EditOperation;

    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get10(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v3

    const/4 v4, 0x1

    .line 5821
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$EditOperation;

    .line 5823
    .local v0, "lastEdit":Landroid/widget/Editor$EditOperation;
    if-nez v0, :cond_1

    .line 5826
    invoke-virtual {v1, p1, v5}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 5847
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/UndoManager;->endUpdate()V

    .line 5817
    return-void

    .line 5827
    :cond_1
    if-eqz p2, :cond_2

    .line 5831
    invoke-virtual {v0, p1}, Landroid/widget/Editor$EditOperation;->forceMergeWith(Landroid/widget/Editor$EditOperation;)V

    goto :goto_0

    .line 5832
    :cond_2
    iget-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    if-nez v2, :cond_3

    .line 5836
    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get10(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 5837
    invoke-virtual {v1, p1, v5}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_0

    .line 5838
    :cond_3
    invoke-static {v0, p1}, Landroid/widget/Editor$EditOperation;->-wrap0(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5844
    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get10(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 5845
    invoke-virtual {v1, p1, v5}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 5736
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 5734
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 5741
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 5739
    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v1, 0x0

    .line 5753
    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5754
    return-object v1

    .line 5758
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/widget/Editor$UndoInputFilter;->handleCompositionEdit(Ljava/lang/CharSequence;III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5759
    return-object v1

    .line 5763
    :cond_1
    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->handleKeyboardEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)V

    .line 5764
    return-object v1
.end method

.method public restoreInstanceState(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 5724
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 5722
    return-void

    :cond_0
    move v0, v2

    .line 5723
    goto :goto_0

    :cond_1
    move v1, v2

    .line 5724
    goto :goto_1
.end method

.method public saveInstanceState(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5718
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5719
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5717
    return-void

    :cond_0
    move v0, v2

    .line 5718
    goto :goto_0

    :cond_1
    move v1, v2

    .line 5719
    goto :goto_1
.end method

.method public setForceMerge(Z)V
    .locals 0
    .param p1, "forceMerge"    # Z

    .prologue
    .line 5728
    iput-boolean p1, p0, Landroid/widget/Editor$UndoInputFilter;->mForceMerge:Z

    .line 5727
    return-void
.end method
