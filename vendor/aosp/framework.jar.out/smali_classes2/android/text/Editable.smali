.class public interface abstract Landroid/text/Editable;
.super Ljava/lang/Object;
.source "Editable.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Editable$Factory;
    }
.end annotation


# virtual methods
.method public abstract append(C)Landroid/text/Editable;
.end method

.method public abstract append(Ljava/lang/CharSequence;)Landroid/text/Editable;
.end method

.method public abstract append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "text"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-interface {p0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-interface {p0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public abstract clear()V
.end method

.method public abstract clearSpans()V
.end method

.method public abstract delete(II)Landroid/text/Editable;
.end method

.method public abstract getFilters()[Landroid/text/InputFilter;
.end method

.method public abstract insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
.end method

.method public abstract insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
.end method

.method public abstract replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
.end method

.method public abstract replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
.end method

.method public abstract setFilters([Landroid/text/InputFilter;)V
.end method
